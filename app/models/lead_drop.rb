class LeadDrop < ApplicationRecord
  require 'csv'


  def full_street_address
    full_street_address = street_line_1 + city + state

  end

  def self.import(file)
    CSV.foreach(file.path,headers:true) do |row|
      LeadDrop.create! row.to_hash
    end
  end
end


# == Schema Information
#
# Table name: lead_drops
#
#  id                :integer          not null, primary key
#  da                :string
#  create_date       :date
#  existing_ipdsl    :string
#  max_speed         :string
#  contact_name      :string
#  street_line_1     :string
#  unit_number       :string
#  living_unit_id    :string
#  lead_record_type  :string
#  dsl_service_type  :string
#  wireless_customer :string
#  existing_hsia     :string
#  existing_voip     :string
#  disposition       :string
#  wire_center       :string
#  house_nbr         :string
#  street_name       :string
#  street_direction  :string
#  suffix_type_code  :string
#  city              :string
#  state_province    :string
#  zip_postal_code   :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  latitude          :float
#  longitude         :float
#
