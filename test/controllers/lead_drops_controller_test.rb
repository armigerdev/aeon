require 'test_helper'

class LeadDropsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead_drop = lead_drops(:one)
  end

  test "should get index" do
    get lead_drops_url
    assert_response :success
  end

  test "should get new" do
    get new_lead_drop_url
    assert_response :success
  end

  test "should create lead_drop" do
    assert_difference('LeadDrop.count') do
      post lead_drops_url, params: { lead_drop: { city: @lead_drop.city, contact_name: @lead_drop.contact_name, create_date: @lead_drop.create_date, da: @lead_drop.da, disposition: @lead_drop.disposition, dsl_service_type: @lead_drop.dsl_service_type, existing_hsia: @lead_drop.existing_hsia, existing_ipdsl: @lead_drop.existing_ipdsl, existing_voip: @lead_drop.existing_voip, house_nbr: @lead_drop.house_nbr, lead_record_type: @lead_drop.lead_record_type, living_unit_id: @lead_drop.living_unit_id, max_speed: @lead_drop.max_speed, state/province: @lead_drop.state/province, street_direction: @lead_drop.street_direction, street_line_1: @lead_drop.street_line_1, street_name: @lead_drop.street_name, suffix_type_code: @lead_drop.suffix_type_code, unit_number: @lead_drop.unit_number, wire_center: @lead_drop.wire_center, wireless_customer: @lead_drop.wireless_customer, zip/postal_code: @lead_drop.zip/postal_code } }
    end

    assert_redirected_to lead_drop_url(LeadDrop.last)
  end

  test "should show lead_drop" do
    get lead_drop_url(@lead_drop)
    assert_response :success
  end

  test "should get edit" do
    get edit_lead_drop_url(@lead_drop)
    assert_response :success
  end

  test "should update lead_drop" do
    patch lead_drop_url(@lead_drop), params: { lead_drop: { city: @lead_drop.city, contact_name: @lead_drop.contact_name, create_date: @lead_drop.create_date, da: @lead_drop.da, disposition: @lead_drop.disposition, dsl_service_type: @lead_drop.dsl_service_type, existing_hsia: @lead_drop.existing_hsia, existing_ipdsl: @lead_drop.existing_ipdsl, existing_voip: @lead_drop.existing_voip, house_nbr: @lead_drop.house_nbr, lead_record_type: @lead_drop.lead_record_type, living_unit_id: @lead_drop.living_unit_id, max_speed: @lead_drop.max_speed, state/province: @lead_drop.state/province, street_direction: @lead_drop.street_direction, street_line_1: @lead_drop.street_line_1, street_name: @lead_drop.street_name, suffix_type_code: @lead_drop.suffix_type_code, unit_number: @lead_drop.unit_number, wire_center: @lead_drop.wire_center, wireless_customer: @lead_drop.wireless_customer, zip/postal_code: @lead_drop.zip/postal_code } }
    assert_redirected_to lead_drop_url(@lead_drop)
  end

  test "should destroy lead_drop" do
    assert_difference('LeadDrop.count', -1) do
      delete lead_drop_url(@lead_drop)
    end

    assert_redirected_to lead_drops_url
  end
end
