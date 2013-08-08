class ReaderArticlesController < ApplicationController

  # GET /reader_articles/1
  # GET /reader_articles/1.json
  def show
    @reader_article = ReaderArticle.find(params[:id])
  end

  # GET /reader_articles/new
  def new
    @reader_article = ReaderArticle.new
  end

  # POST /reader_articles
  # POST /reader_articles.json
  def create
    @reader_article = ReaderArticle.new(reader_article_params)
    if @reader_article.save
      # send email
      Notifications.reader_sent_article(@reader_article).deliver

      redirect_to @reader_article, notice: 'Artigo enviado com sucesso.'
    else
      render action: 'new'
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def reader_article_params
      params.require(:reader_article).permit(:name, :email, :title, :body)
    end
end
