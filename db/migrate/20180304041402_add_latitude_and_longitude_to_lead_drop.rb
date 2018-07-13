class AddLatitudeAndLongitudeToLeadDrop < ActiveRecord::Migration[5.1]
  def change
    add_column :lead_drops, :latitude, :float
    add_column :lead_drops, :longitude, :float
  end
end
