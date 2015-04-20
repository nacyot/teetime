# == Schema Information
#
# Table name: teams
#
#  id              :integer          not null, primary key
#  name            :string
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Team < ActiveRecord::Base
  belongs_to :organization
  has_many :bundles, dependent: :destroy
  # has_many :users

  validates_presence_of :organization
  validates_presence_of :name
  validates_uniqueness_of :name, scope: :organization

  def default_bundle
    bundles.find_by(name: 'Default')
  end
end
