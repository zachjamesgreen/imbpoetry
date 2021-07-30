class ToneName
  def self.names(tones)
    tones['document_tone']['tones'].map { |tone| tone['tone_name'] }
  end
end