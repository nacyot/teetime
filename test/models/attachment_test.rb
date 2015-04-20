# == Schema Information
#
# Table name: attachments
#
#  id          :integer          not null, primary key
#  file        :string           not null
#  article_id  :integer
#  title       :string
#  description :text
#  url         :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_attachments_on_article_id  (article_id)
#

require 'test_helper'

class AttachmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
