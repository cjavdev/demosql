class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :listing, foreign_key: true
      t.date :arrival
      t.date :departure
      t.string :guest_name
      t.string :value

      t.timestamps
    end
  end
end
