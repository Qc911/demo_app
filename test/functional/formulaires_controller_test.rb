require 'test_helper'

class FormulairesControllerTest < ActionController::TestCase
  setup do
    @formulaire = formulaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formulaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formulaire" do
    assert_difference('Formulaire.count') do
      post :create, :formulaire => @formulaire.attributes
    end

    assert_redirected_to formulaire_path(assigns(:formulaire))
  end

  test "should show formulaire" do
    get :show, :id => @formulaire.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @formulaire.to_param
    assert_response :success
  end

  test "should update formulaire" do
    put :update, :id => @formulaire.to_param, :formulaire => @formulaire.attributes
    assert_redirected_to formulaire_path(assigns(:formulaire))
  end

  test "should destroy formulaire" do
    assert_difference('Formulaire.count', -1) do
      delete :destroy, :id => @formulaire.to_param
    end

    assert_redirected_to formulaires_path
  end
end
