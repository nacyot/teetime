# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string
#  text        :text             not null
#  metadata    :hstore
#  bundle_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  type        :string           default("Article")
#  title_image :string
#
# Indexes
#
#  index_articles_on_type  (type)
#

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
