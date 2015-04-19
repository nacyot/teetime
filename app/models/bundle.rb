# == Schema Information
#
# Table name: bundles
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  team_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Bundle < ActiveRecord::Base
  belongs_to :team
  has_many :publish_targets, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :publisher, through: :publish_targets

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :team
end
