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

require 'test_helper'

class LeadDropTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
