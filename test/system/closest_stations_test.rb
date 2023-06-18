require "application_system_test_case"

class ClosestStationsTest < ApplicationSystemTestCase
  setup do
    @closest_station = closest_stations(:one)
  end

  test "visiting the index" do
    visit closest_stations_url
    assert_selector "h1", text: "Closest Stations"
  end

  test "creating a Closest station" do
    visit closest_stations_url
    click_on "New Closest Station"

    fill_in "Duration", with: @closest_station.duration
    fill_in "Route name", with: @closest_station.route_name
    fill_in "Station name", with: @closest_station.station_name
    click_on "Create Closest station"

    assert_text "Closest station was successfully created"
    click_on "Back"
  end

  test "updating a Closest station" do
    visit closest_stations_url
    click_on "Edit", match: :first

    fill_in "Duration", with: @closest_station.duration
    fill_in "Route name", with: @closest_station.route_name
    fill_in "Station name", with: @closest_station.station_name
    click_on "Update Closest station"

    assert_text "Closest station was successfully updated"
    click_on "Back"
  end

  test "destroying a Closest station" do
    visit closest_stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Closest station was successfully destroyed"
  end
end
