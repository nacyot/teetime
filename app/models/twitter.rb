class Twitter < Article
  validates_length_of :text, in: 1..140
end
