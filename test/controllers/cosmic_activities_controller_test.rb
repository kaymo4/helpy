require 'test_helper'

class CosmicActivitiesControllerTest < ActionController::TestCase
  setup do
    @cosmic_activity = cosmic_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cosmic_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cosmic_activity" do
    assert_difference('CosmicActivity.count') do
      post :create, cosmic_activity: { content: @cosmic_activity.content, cosmic_lesson_id: @cosmic_activity.cosmic_lesson_id, custom1: @cosmic_activity.custom1, custom2: @cosmic_activity.custom2, overview: @cosmic_activity.overview, screenshot: @cosmic_activity.screenshot, seo_key: @cosmic_activity.seo_key, thumbnail: @cosmic_activity.thumbnail, title_long: @cosmic_activity.title_long, title_short: @cosmic_activity.title_short, type: @cosmic_activity.type }
    end

    assert_redirected_to cosmic_activity_path(assigns(:cosmic_activity))
  end

  test "should show cosmic_activity" do
    get :show, id: @cosmic_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cosmic_activity
    assert_response :success
  end

  test "should update cosmic_activity" do
    patch :update, id: @cosmic_activity, cosmic_activity: { content: @cosmic_activity.content, cosmic_lesson_id: @cosmic_activity.cosmic_lesson_id, custom1: @cosmic_activity.custom1, custom2: @cosmic_activity.custom2, overview: @cosmic_activity.overview, screenshot: @cosmic_activity.screenshot, seo_key: @cosmic_activity.seo_key, thumbnail: @cosmic_activity.thumbnail, title_long: @cosmic_activity.title_long, title_short: @cosmic_activity.title_short, type: @cosmic_activity.type }
    assert_redirected_to cosmic_activity_path(assigns(:cosmic_activity))
  end

  test "should destroy cosmic_activity" do
    assert_difference('CosmicActivity.count', -1) do
      delete :destroy, id: @cosmic_activity
    end

    assert_redirected_to cosmic_activities_path
  end
end
