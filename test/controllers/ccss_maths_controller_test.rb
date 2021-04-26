require 'test_helper'

class CcssMathsControllerTest < ActionController::TestCase
  setup do
    @ccss_math = ccss_maths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ccss_maths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ccss_math" do
    assert_difference('CcssMath.count') do
      post :create, ccss_math: { ccss_id: @ccss_math.ccss_id, ccss_id: @ccss_math.ccss_id, ccss_typ: @ccss_math.ccss_typ, ccss_type: @ccss_math.ccss_type, cluster_id: @ccss_math.cluster_id, cluster_id: @ccss_math.cluster_id, domain_desc: @ccss_math.domain_desc, domain_desc: @ccss_math.domain_desc, domain_id: @ccss_math.domain_id, domain_id: @ccss_math.domain_id, grade_id: @ccss_math.grade_id, grade_id: @ccss_math.grade_id, grade_name: @ccss_math.grade_name, grade_name: @ccss_math.grade_name, id: @ccss_math.id, standard_desc: @ccss_math.standard_desc, standard_desc: @ccss_math.standard_desc, standard_id: @ccss_math.standard_id, standard_id: @ccss_math.standard_id }
    end

    assert_redirected_to ccss_math_path(assigns(:ccss_math))
  end

  test "should show ccss_math" do
    get :show, id: @ccss_math
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ccss_math
    assert_response :success
  end

  test "should update ccss_math" do
    patch :update, id: @ccss_math, ccss_math: { ccss_id: @ccss_math.ccss_id, ccss_id: @ccss_math.ccss_id, ccss_typ: @ccss_math.ccss_typ, ccss_type: @ccss_math.ccss_type, cluster_id: @ccss_math.cluster_id, cluster_id: @ccss_math.cluster_id, domain_desc: @ccss_math.domain_desc, domain_desc: @ccss_math.domain_desc, domain_id: @ccss_math.domain_id, domain_id: @ccss_math.domain_id, grade_id: @ccss_math.grade_id, grade_id: @ccss_math.grade_id, grade_name: @ccss_math.grade_name, grade_name: @ccss_math.grade_name, id: @ccss_math.id, standard_desc: @ccss_math.standard_desc, standard_desc: @ccss_math.standard_desc, standard_id: @ccss_math.standard_id, standard_id: @ccss_math.standard_id }
    assert_redirected_to ccss_math_path(assigns(:ccss_math))
  end

  test "should destroy ccss_math" do
    assert_difference('CcssMath.count', -1) do
      delete :destroy, id: @ccss_math
    end

    assert_redirected_to ccss_maths_path
  end
end
