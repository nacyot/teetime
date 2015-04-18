# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text             not null
#  metadata   :hstore
#  bundle_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  type       :string           default("Article")
#
# Indexes
#
#  index_articles_on_type  (type)
#

class Tweet < Article
  validates_length_of :text, in: 1..140

  def text=(text)
    write_attribute(:text, shorten(text))
  end
end
