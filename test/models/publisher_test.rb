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

require 'test_helper'

class PublisherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
