class Poetry
  attr_reader :title, :author, :lines, :tone
  def initialize(info)
    p info
    @title = info['title']
    @author = info['author']
    @lines = concate_lines(info['lines'])
    @tone = get_tone
  end

  def concate_lines(lines)
    lines.join("\n")
  end

  def get_tone
    res = Tone.analyze(@lines)
    parsed = JSON.parse(res.body)
    ToneName.names(parsed)
  end

  def self.get_poems_by_author(author)
    res = PoetryApi.get_poems_by_author(author)
    parsed = JSON.parse(res.body)
    parsed[0..10].map do |poem|
      new(poem)
    end
  end
end