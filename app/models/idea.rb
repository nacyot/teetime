# == Schema Information
#
# Table name: ideas
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text             not null
#  bundle_id  :integer          not null
#  score      :integer
#  metadata   :hstore
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_ideas_on_bundle_id  (bundle_id)
#

class Idea < ActiveRecord::Base
  acts_as_taggable

  belongs_to :bundle
end
