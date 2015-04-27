require 'test_helper'

class PreferencesControllerTest < ActionController::TestCase
  setup do
    @preference = preferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preference" do
    assert_difference('Preference.count') do
      post :create, preference: { question1: @preference.question1, question2: @preference.question2, question3: @preference.question3, question4: @preference.question4, question5: @preference.question5, question6: @preference.question6 }
    end

    assert_redirected_to preference_path(assigns(:preference))
  end

  test "should show preference" do
    get :show, id: @preference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preference
    assert_response :success
  end

  test "should update preference" do
    patch :update, id: @preference, preference: { question1: @preference.question1, question2: @preference.question2, question3: @preference.question3, question4: @preference.question4, question5: @preference.question5, question6: @preference.question6 }
    assert_redirected_to preference_path(assigns(:preference))
  end

  test "should destroy preference" do
    assert_difference('Preference.count', -1) do
      delete :destroy, id: @preference
    end

    assert_redirected_to preferences_path
  end
end
