class CosmicActivitiesController < ApplicationController
  before_action :set_cosmic_activity, only: [:show, :edit, :update, :destroy]

  # GET /cosmic_activities
  # GET /cosmic_activities.json
  def index
    @cosmic_activities = CosmicActivity.all
  end

  # GET /cosmic_activities/1
  # GET /cosmic_activities/1.json
  def show
  end

  # GET /cosmic_activities/new
  def new
    @cosmic_activity = CosmicActivity.new
  end

  # GET /cosmic_activities/1/edit
  def edit
  end

  # POST /cosmic_activities
  # POST /cosmic_activities.json
  def create
    @cosmic_activity = CosmicActivity.new(cosmic_activity_params)

    respond_to do |format|
      if @cosmic_activity.save
        format.html { redirect_to @cosmic_activity, notice: 'Cosmic activity was successfully created.' }
        format.json { render :show, status: :created, location: @cosmic_activity }
      else
        format.html { render :new }
        format.json { render json: @cosmic_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosmic_activities/1
  # PATCH/PUT /cosmic_activities/1.json
  def update
    respond_to do |format|
      if @cosmic_activity.update(cosmic_activity_params)
        format.html { redirect_to @cosmic_activity, notice: 'Cosmic activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @cosmic_activity }
      else
        format.html { render :edit }
        format.json { render json: @cosmic_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosmic_activities/1
  # DELETE /cosmic_activities/1.json
  def destroy
    @cosmic_activity.destroy
    respond_to do |format|
      format.html { redirect_to cosmic_activities_url, notice: 'Cosmic activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosmic_activity
      @cosmic_activity = CosmicActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cosmic_activity_params
      params.require(:cosmic_activity).permit(:seo_key, :title_short, :title_long, :overview, :content, :type, :screenshot, :thumbnail, :custom1, :custom2, :cosmic_lesson_id)
    end
end
