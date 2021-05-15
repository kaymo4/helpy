class CosmicLessonsController < ApplicationController
  before_action :set_cosmic_lesson, only: [:show, :edit, :update, :destroy]

  # GET /cosmic_lessons
  # GET /cosmic_lessons.json
  def index
    @cosmic_lessons = CosmicLesson.all
  end

  # GET /cosmic_lessons/1
  # GET /cosmic_lessons/1.json
  def show
  end

  # GET /cosmic_lessons/new
  def new
    @cosmic_lesson = CosmicLesson.new
  end

  # GET /cosmic_lessons/1/edit
  def edit
  end

  # POST /cosmic_lessons
  # POST /cosmic_lessons.json
  def create
    @cosmic_lesson = CosmicLesson.new(cosmic_lesson_params)

    respond_to do |format|
      if @cosmic_lesson.save
        format.html { redirect_to @cosmic_lesson, notice: 'Cosmic lesson was successfully created.' }
        format.json { render :show, status: :created, location: @cosmic_lesson }
      else
        format.html { render :new }
        format.json { render json: @cosmic_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosmic_lessons/1
  # PATCH/PUT /cosmic_lessons/1.json
  def update
    respond_to do |format|
      if @cosmic_lesson.update(cosmic_lesson_params)
        format.html { redirect_to @cosmic_lesson, notice: 'Cosmic lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @cosmic_lesson }
      else
        format.html { render :edit }
        format.json { render json: @cosmic_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosmic_lessons/1
  # DELETE /cosmic_lessons/1.json
  def destroy
    @cosmic_lesson.destroy
    respond_to do |format|
      format.html { redirect_to cosmic_lessons_url, notice: 'Cosmic lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosmic_lesson
      @cosmic_lesson = CosmicLesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cosmic_lesson_params
      params.require(:cosmic_lesson).permit(:seo_key, :cosmic_domain, :cosmic_domain_order, :title_short, :title_long, :overview, :content)
    end
end
