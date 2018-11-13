class MoveChannelIdToReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :channel_id
    add_column :reservations, :channel_id, :integer
  end
end
