class Article

  attr_accessor :id, :title, :body, :image

  def save
    conn = Article.open_connection
    if(self.id)
      sql = "UPDATE article SET title='#{self.title}', body='#{self.body}', image='#{self.image}' WHERE id = #{self.id}"
    else
      sql = "INSERT INTO article (title, body, image) VALUES ('#{self.title}', '#{self.body}', '#{self.image}')"
    end
    conn.exec(sql)
  end

  def self.open_connection
    conn = PG.connect(dbname: "articles")
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT id,title,body,image FROM article ORDER BY id DESC"
    results = conn.exec(sql)
    articles = results.map do |article|
      self.hydrate(article)
    end
  end

  def self.find(id)
    conn = self.open_connection
    sql = "SELECT * FROM article WHERE id =#{id} LIMIT 1"
    articles = conn.exec(sql)
    self.hydrate(articles[0])
  end

  def self.destroy(id)
    conn = self.open_connection
    sql = "DELETE FROM article WHERE id = #{id}"
    conn.exec(sql)
  end

  def self.hydrate(article_data)
    article = Article.new
    article.id = article_data['id']
    article.title = article_data['title']
    article.body = article_data['body']
    article.image = article_data['image']
    article
  end
end
