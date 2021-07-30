class Tone

  def self.analyze(text)
    base_conn.post('/instances/41d248ad-5648-40d6-99ee-166b31b8dd27/v3/tone') do |req|
      req.body = {'text' => text}.to_json
    end
  end

  def self.base_conn
    Faraday.new(
      url: 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com',
      headers: {'Content-Type' => 'application/json'},
      params: {version: '2017-09-21'}
    ) do |conn|
      conn.basic_auth('apikey', ENV['apikey'])
    end
  end
end