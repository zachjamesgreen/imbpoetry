class PoetryApi
  def self.get_poems_by_author(author)
    n = ERB::Util.url_encode(author)
    base_conn.get("/author/#{n}")
  end

  private

  def self.base_conn
    Faraday.new(url: 'https://poetrydb.org')
  end
end