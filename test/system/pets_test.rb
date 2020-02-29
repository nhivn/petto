require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  setup do
    @pet = pets(:one)
  end

  test "visiting the index" do
    visit pets_url
    assert_selector "h1", text: "Pets"
  end

  test "creating a Pet" do
    visit pets_url
    click_on "New Pet"

    fill_in "Adoption date", with: @pet.adoption_date
    fill_in "Birthday", with: @pet.birthday
    fill_in "Breed", with: @pet.breed
    fill_in "Color", with: @pet.color
    fill_in "Description", with: @pet.description
    fill_in "Microchip number", with: @pet.microchip_number
    fill_in "Name", with: @pet.name
    fill_in "Owner", with: @pet.owner_id
    fill_in "Type", with: @pet.type
    click_on "Create Pet"

    assert_text "Pet was successfully created"
    click_on "Back"
  end

  test "updating a Pet" do
    visit pets_url
    click_on "Edit", match: :first

    fill_in "Adoption date", with: @pet.adoption_date
    fill_in "Birthday", with: @pet.birthday
    fill_in "Breed", with: @pet.breed
    fill_in "Color", with: @pet.color
    fill_in "Description", with: @pet.description
    fill_in "Microchip number", with: @pet.microchip_number
    fill_in "Name", with: @pet.name
    fill_in "Owner", with: @pet.owner_id
    fill_in "Type", with: @pet.type
    click_on "Update Pet"

    assert_text "Pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet" do
    visit pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet was successfully destroyed"
  end
end
