# == Schema Information
#
# Table name: exported_formats
#
#  id         :integer          not null, primary key
#  name       :string
#  extention  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ExportedFormat < ActiveRecord::Base
end
