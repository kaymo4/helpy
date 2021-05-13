class CosmicPartsController < ApplicationController
  before_action :set_cosmic_part, only: [:show, :edit, :update, :destroy]

  # GET /cosmic_parts
  # GET /cosmic_parts.json
  def index
    @cosmic_parts = CosmicPart.all
  end

  # GET /cosmic_parts/1
  # GET /cosmic_parts/1.json
  def show
  end

  # GET /cosmic_parts/new
  def new
    @cosmic_part = CosmicPart.new
  end

  # GET /cosmic_parts/1/edit
  def edit
  end

  # POST /cosmic_parts
  # POST /cosmic_parts.json
  def create
    @cosmic_part = CosmicPart.new(cosmic_part_params)

    respond_to do |format|
      if @cosmic_part.save
        format.html { redirect_to @cosmic_part, notice: 'Cosmic part was successfully created.' }
        format.json { render :show, status: :created, location: @cosmic_part }
      else
        format.html { render :new }
        format.json { render json: @cosmic_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosmic_parts/1
  # PATCH/PUT /cosmic_parts/1.json
  def update
    respond_to do |format|
      if @cosmic_part.update(cosmic_part_params)
        format.html { redirect_to @cosmic_part, notice: 'Cosmic part was successfully updated.' }
        format.json { render :show, status: :ok, location: @cosmic_part }
      else
        format.html { render :edit }
        format.json { render json: @cosmic_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosmic_parts/1
  # DELETE /cosmic_parts/1.json
  def destroy
    @cosmic_part.destroy
    respond_to do |format|
      format.html { redirect_to cosmic_parts_url, notice: 'Cosmic part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosmic_part
      @cosmic_part = CosmicPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cosmic_part_params
      params.require(:cosmic_part).permit(:name, :content,:cosmic_lesson_id, :ccss_math_id, cosmic_lesson_ids: [])
    end
end
