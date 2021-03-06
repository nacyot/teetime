# == Schema Information
#
# Table name: user_oauths
#
#  id           :integer          not null, primary key
#  client_key   :text
#  secret_key   :text
#  publisher_id :integer          not null
#  team_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_user_oauths_on_publisher_id  (publisher_id)
#  index_user_oauths_on_team_id       (team_id)
#

class UserOauth < ActiveRecord::Base
  belongs_to :publisher
  belongs_to :team
end
