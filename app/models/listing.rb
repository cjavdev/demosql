# == Schema Information
#
# Table name: listings
#
#  id           :bigint(8)        not null, primary key
#  headline     :string(255)
#  description  :string(255)
#  photo_url    :string(255)
#  channel_id   :integer
#  external_id  :integer
#  accommodates :integer
#  bedrooms     :integer
#  bathrooms    :integer
#  beds         :integer
#  lat          :float(24)
#  lng          :float(24)
#  city         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  host_id      :bigint(8)
#
# Indexes
#
#  index_listings_on_accommodates  (accommodates)
#  index_listings_on_bedrooms      (bedrooms)
#  index_listings_on_channel_id    (channel_id)
#  index_listings_on_external_id   (external_id)
#  index_listings_on_host_id       (host_id)
#

class Listing < ApplicationRecord
  belongs_to :host
end
