class PoetryApi
  def self.get_poems_by_author(author)
    base_conn.get("/author/#{author}")
  end

  private

  def self.base_conn
    Faraday.new(url: 'https://poetrydb.org')
  end
end