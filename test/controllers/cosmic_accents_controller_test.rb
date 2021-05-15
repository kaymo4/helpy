require 'test_helper'

class CosmicAccentsControllerTest < ActionController::TestCase
  setup do
    @cosmic_accent = cosmic_accents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cosmic_accents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cosmic_accent" do
    assert_difference('CosmicAccent.count') do
      post :create, cosmic_accent: { content: @cosmic_accent.content, cosmic_part_id: @cosmic_accent.cosmic_part_id }
    end

    assert_redirected_to cosmic_accent_path(assigns(:cosmic_accent))
  end

  test "should show cosmic_accent" do
    get :show, id: @cosmic_accent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cosmic_accent
    assert_response :success
  end

  test "should update cosmic_accent" do
    patch :update, id: @cosmic_accent, cosmic_accent: { content: @cosmic_accent.content, cosmic_part_id: @cosmic_accent.cosmic_part_id }
    assert_redirected_to cosmic_accent_path(assigns(:cosmic_accent))
  end

  test "should destroy cosmic_accent" do
    assert_difference('CosmicAccent.count', -1) do
      delete :destroy, id: @cosmic_accent
    end

    assert_redirected_to cosmic_accents_path
  end
end
