require "application_system_test_case"

class RabbitcaresTest < ApplicationSystemTestCase
  setup do
    @rabbitcare = rabbitcares(:one)
  end

  test "visiting the index" do
    visit rabbitcares_url
    assert_selector "h1", text: "Rabbitcares"
  end

  test "creating a Rabbitcare" do
    visit rabbitcares_url
    click_on "New Rabbitcare"

    fill_in "Addmedicamento", with: @rabbitcare.addmedicamento
    fill_in "Removemedicamento", with: @rabbitcare.removemedicamento
    click_on "Create Rabbitcare"

    assert_text "Rabbitcare was successfully created"
    click_on "Back"
  end

  test "updating a Rabbitcare" do
    visit rabbitcares_url
    click_on "Edit", match: :first

    fill_in "Addmedicamento", with: @rabbitcare.addmedicamento
    fill_in "Removemedicamento", with: @rabbitcare.removemedicamento
    click_on "Update Rabbitcare"

    assert_text "Rabbitcare was successfully updated"
    click_on "Back"
  end

  test "destroying a Rabbitcare" do
    visit rabbitcares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rabbitcare was successfully destroyed"
  end
end
