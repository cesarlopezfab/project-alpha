require 'test_helper'

class PiggyBanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piggy_bank = piggy_banks(:one)
  end

  test "should get index" do
    get piggy_banks_url
    assert_response :success
  end

  test "should get new" do
    get new_piggy_bank_url
    assert_response :success
  end

  test "should create piggy_bank" do
    assert_difference('PiggyBank.count') do
      post piggy_banks_url, params: { piggy_bank: { amount: @piggy_bank.amount, name: @piggy_bank.name } }
    end

    assert_redirected_to piggy_bank_url(PiggyBank.last)
  end

  test "should show piggy_bank" do
    get piggy_bank_url(@piggy_bank)
    assert_response :success
  end

  test "should get edit" do
    get edit_piggy_bank_url(@piggy_bank)
    assert_response :success
  end

  test "should update piggy_bank" do
    patch piggy_bank_url(@piggy_bank), params: { piggy_bank: { amount: @piggy_bank.amount, name: @piggy_bank.name } }
    assert_redirected_to piggy_bank_url(@piggy_bank)
  end

  test "should destroy piggy_bank" do
    assert_difference('PiggyBank.count', -1) do
      delete piggy_bank_url(@piggy_bank)
    end

    assert_redirected_to piggy_banks_url
  end
end
