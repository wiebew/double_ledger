require 'test_helper'

class LedgerAccountsControllerTest < ActionController::TestCase
  setup do
    @ledger_account = ledger_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ledger_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ledger_account" do
    assert_difference('LedgerAccount.count') do
      post :create, :ledger_account => @ledger_account.attributes
    end

    assert_redirected_to ledger_account_path(assigns(:ledger_account))
  end

  test "should show ledger_account" do
    get :show, :id => @ledger_account.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ledger_account.to_param
    assert_response :success
  end

  test "should update ledger_account" do
    put :update, :id => @ledger_account.to_param, :ledger_account => @ledger_account.attributes
    assert_redirected_to ledger_account_path(assigns(:ledger_account))
  end

  test "should destroy ledger_account" do
    assert_difference('LedgerAccount.count', -1) do
      delete :destroy, :id => @ledger_account.to_param
    end

    assert_redirected_to ledger_accounts_path
  end
end
