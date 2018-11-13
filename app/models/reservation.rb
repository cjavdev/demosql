# == Schema Information
#
# Table name: reservations
#
#  id         :bigint(8)        not null, primary key
#  listing_id :bigint(8)
#  arrival    :date
#  departure  :date
#  guest_name :string(255)
#  value      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reservations_on_listing_id  (listing_id)
#

class Reservation < ApplicationRecord
  belongs_to :listing
end
