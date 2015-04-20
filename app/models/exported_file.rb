# == Schema Information
#
# Table name: exported_files
#
#  id                 :integer          not null, primary key
#  file               :string           not null
#  article_id         :integer
#  title              :string
#  url                :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  exported_format_id :integer
#  formatter_id       :integer
#
# Indexes
#
#  index_exported_files_on_article_id          (article_id)
#  index_exported_files_on_exported_format_id  (exported_format_id)
#  index_exported_files_on_formatter_id        (formatter_id)
#

class ExportedFile < ActiveRecord::Base
  mount_uploader :file, ExportedFileUploader

  belongs_to :article
  belongs_to :formatter
  belongs_to :exported_format
end
