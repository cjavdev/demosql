class AddHostIdToListings < ActiveRecord::Migration[5.2]
  def change
    add_reference :listings, :host, foreign_key: true
  end
end
