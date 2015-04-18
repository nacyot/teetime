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
#

class Article < ActiveRecord::Base
  belongs_to :bundle

  validates_presence_of :text
  validates_presence_of :type
end
