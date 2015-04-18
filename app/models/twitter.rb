class Twitter < Article
  validates_length_of :text, in: 1..140

  def text=(text)
    write_attribute(:text, shorten(text))
  end
end
