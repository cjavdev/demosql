class ChangeDescriptionToText < ActiveRecord::Migration[5.2]
  def change
    change_column :listings, :description, :text
  end
end
