class CreateLeadDrops < ActiveRecord::Migration[5.1]
  def change
    create_table :lead_drops do |t|
      t.string :da
      t.date :create_date
      t.string :existing_ipdsl
      t.string :max_speed
      t.string :contact_name
      t.string :street_line_1
      t.string :unit_number
      t.string :living_unit_id
      t.string :lead_record_type
      t.string :dsl_service_type
      t.string :wireless_customer
      t.string :existing_hsia
      t.string :existing_voip
      t.string :disposition
      t.string :wire_center
      t.string :house_nbr
      t.string :street_name
      t.string :street_direction
      t.string :suffix_type_code
      t.string :city
      t.string :state_province
      t.string :zip_postal_code

      t.timestamps
    end
  end
end
