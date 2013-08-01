class AdminController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Only authenticate users
  before_action :authenticate_user!

  # Render the admin layout
  layout 'admin'

end