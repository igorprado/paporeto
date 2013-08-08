class Notifications < ActionMailer::Base
  default from: "redacao@paporeto.com.br"

  def reader_sent_article(reader_article)
    @reader_article = reader_article


    mail to: "igorprado@gmail.com", subject: 'Artigo do leitor'
  end
end
