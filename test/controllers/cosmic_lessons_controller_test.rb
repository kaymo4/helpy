require 'test_helper'

class CosmicLessonsControllerTest < ActionController::TestCase
  setup do
    @cosmic_lesson = cosmic_lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cosmic_lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cosmic_lesson" do
    assert_difference('CosmicLesson.count') do
      post :create, cosmic_lesson: { content: @cosmic_lesson.content, cosmic_domain: @cosmic_lesson.cosmic_domain, cosmic_domain_order: @cosmic_lesson.cosmic_domain_order, custom1: @cosmic_lesson.custom1, custom2: @cosmic_lesson.custom2, overview: @cosmic_lesson.overview, seo_key: @cosmic_lesson.seo_key, title_long: @cosmic_lesson.title_long, title_short: @cosmic_lesson.title_short, type: @cosmic_lesson.type }
    end

    assert_redirected_to cosmic_lesson_path(assigns(:cosmic_lesson))
  end

  test "should show cosmic_lesson" do
    get :show, id: @cosmic_lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cosmic_lesson
    assert_response :success
  end

  test "should update cosmic_lesson" do
    patch :update, id: @cosmic_lesson, cosmic_lesson: { content: @cosmic_lesson.content, cosmic_domain: @cosmic_lesson.cosmic_domain, cosmic_domain_order: @cosmic_lesson.cosmic_domain_order, custom1: @cosmic_lesson.custom1, custom2: @cosmic_lesson.custom2, overview: @cosmic_lesson.overview, seo_key: @cosmic_lesson.seo_key, title_long: @cosmic_lesson.title_long, title_short: @cosmic_lesson.title_short, type: @cosmic_lesson.type }
    assert_redirected_to cosmic_lesson_path(assigns(:cosmic_lesson))
  end

  test "should destroy cosmic_lesson" do
    assert_difference('CosmicLesson.count', -1) do
      delete :destroy, id: @cosmic_lesson
    end

    assert_redirected_to cosmic_lessons_path
  end
end
