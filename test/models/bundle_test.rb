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

require 'test_helper'

class BundleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
