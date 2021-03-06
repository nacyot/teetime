# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string
#  text        :text             not null
#  metadata    :hstore
#  bundle_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  type        :string           default("Article")
#  title_image :string
#
# Indexes
#
#  index_articles_on_type  (type)
#

class Article < ActiveRecord::Base
  acts_as_taggable
  mount_uploader :title_image, TitleImageUploader

  belongs_to :bundle
  has_many :publications
  has_many :attachments
  has_many :exported_files

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
