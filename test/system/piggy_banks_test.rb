require "application_system_test_case"

class PiggyBanksTest < ApplicationSystemTestCase
  setup do
    @piggy_bank = piggy_banks(:one)
  end

  test "visiting the index" do
    visit piggy_banks_url
    assert_selector "h1", text: "Piggy Banks"
  end

  test "creating a Piggy bank" do
    visit piggy_banks_url
    click_on "New Piggy Bank"

    fill_in "Amount", with: @piggy_bank.amount
    fill_in "Name", with: @piggy_bank.name
    click_on "Create Piggy bank"

    assert_text "Piggy bank was successfully created"
    click_on "Back"
  end

  test "updating a Piggy bank" do
    visit piggy_banks_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @piggy_bank.amount
    fill_in "Name", with: @piggy_bank.name
    click_on "Update Piggy bank"

    assert_text "Piggy bank was successfully updated"
    click_on "Back"
  end

  test "destroying a Piggy bank" do
    visit piggy_banks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Piggy bank was successfully destroyed"
  end
end
