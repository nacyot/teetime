# == Schema Information
#
# Table name: publishers
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  url        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Publisher < ActiveRecord::Base
  has_many :publish_targets
  has_many :bundles, through: :publish_targets

  validates :url, url: true
end
