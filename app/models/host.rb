# == Schema Information
#
# Table name: hosts
#
#  id         :bigint(8)        not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Host < ApplicationRecord
end
