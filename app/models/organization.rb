# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ActiveRecord::Base
  has_many :teams, dependent: :destroy
  # has_many :users

  def default_team
    teams.find_by(name: 'Default')
  end
end
