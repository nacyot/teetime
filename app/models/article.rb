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

class Article < ActiveRecord::Base
  belongs_to :bundle

  validates_presence_of :text
  validates_presence_of :type
  validates_presence_of :bundle

  private

  def shorten(string)
    URI.extract(string, ['http', 'https']).each do |url|
      googl = Googl.shorten 'url', nil, Settings.GOOGLE_API_KEY
      string.sub!(url, googl.short_url)
    end
    
    string
  end
end
