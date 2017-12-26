class Neo

  attr_accessor :id, :title, :body

  def save
    conn = Neo.open_connection
    if(self.id)
      sql = "UPDATE neo SET title='#{self.title}', body='#{self.body}' WHERE id = #{self.id}"
    else
      sql = "INSERT INTO neo (title, body) VALUES ('#{self.title}', '#{self.body}')"
    end
    conn.exec(sql)
  end

  def self.api_create(post)
    conn = self.open_connection
    sql = "INSERT INTO neo (title , body) VALUES ( '#{post[:title]}', '#{post[:body]}')"
    conn.exec(sql)
  end

  def self.api_update(post)
    conn = self.open_connection
    sql = "UPDATE neo SET title='#{post[:title]}', body='#{post[:body]}' WHERE id = #{post[:id]}"
    conn.exec(sql)
  end

  def self.open_connection
    conn = PG.connect(dbname: "neonasa")
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT id,title,body FROM neo ORDER BY id DESC"
    results = conn.exec(sql)
    neos = results.map do |neo|
      self.hydrate(neo)
    end
  end

  def self.find(id)
    conn = self.open_connection
    sql = "SELECT * FROM neo WHERE id =#{id} LIMIT 1"
    neos = conn.exec(sql)
    self.hydrate(neos[0])
  end

  def self.apiFind(id)
    conn = self.open_connection
    sql = "SELECT * FROM neo WHERE id =#{id} LIMIT 1"
    neos = conn.exec(sql)
    neos[0]
  end

  def self.destroy(id)
    conn = self.open_connection
    sql = "DELETE FROM neo WHERE id = #{id}"
    conn.exec(sql)
  end

  def self.hydrate(neo_data)
    neo = Neo.new
    neo.id = neo_data['id']
    neo.title = neo_data['title']
    neo.body = neo_data['body']
    neo
  end
end
