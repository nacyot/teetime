# == Schema Information
#
# Table name: publish_targets
#
#  id           :integer          not null, primary key
#  bundle_id    :integer          not null
#  name         :string           not null
#  publisher_id :integer          not null
#  url          :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class PublishTarget < ActiveRecord::Base
end
