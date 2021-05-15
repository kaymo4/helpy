require 'test_helper'

class CosmicPartsControllerTest < ActionController::TestCase
  setup do
    @cosmic_part = cosmic_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cosmic_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cosmic_part" do
    assert_difference('CosmicPart.count') do
      post :create, cosmic_part: { ccss: @cosmic_part.ccss, ccss_maths_id: @cosmic_part.ccss_maths_id, part: @cosmic_part.part, std_desc: @cosmic_part.std_desc }
    end

    assert_redirected_to cosmic_part_path(assigns(:cosmic_part))
  end

  test "should show cosmic_part" do
    get :show, id: @cosmic_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cosmic_part
    assert_response :success
  end

  test "should update cosmic_part" do
    patch :update, id: @cosmic_part, cosmic_part: { ccss: @cosmic_part.ccss, ccss_maths_id: @cosmic_part.ccss_maths_id, part: @cosmic_part.part, std_desc: @cosmic_part.std_desc }
    assert_redirected_to cosmic_part_path(assigns(:cosmic_part))
  end

  test "should destroy cosmic_part" do
    assert_difference('CosmicPart.count', -1) do
      delete :destroy, id: @cosmic_part
    end

    assert_redirected_to cosmic_parts_path
  end
end
