# == Schema Information
#
# Table name: formatters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Formatter < ActiveRecord::Base
end
