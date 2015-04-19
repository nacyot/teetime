# == Schema Information
#
# Table name: publications
#
#  id                :integer          not null, primary key
#  article_id        :integer          not null
#  publish_target_id :integer          not null
#  status            :integer          not null
#  canonical_url     :text
#  metadata          :hstore
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_publications_on_article_id         (article_id)
#  index_publications_on_publish_target_id  (publish_target_id)
#

require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
