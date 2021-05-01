class CcssMathsController < ApplicationController
  before_action :set_ccss_math, only: [:show, :edit, :update, :destroy]

  # GET /ccss_maths
  # GET /ccss_maths.json
  def index
    #get all ccss standards
    @ccss_maths = CcssMath.all
    # get intelligence, which standard has parts and how many
    std_parts = StandardPart.where('nb_of_parts > 0').pluck(:ccss_db_id, :nb_of_parts)
    # convert the array to hash with key value, key->ccss_db_id, value ->nb_of_parts
    @std_parts_hashes = {}
    std_parts.each { |k, v| @std_parts_hashes[k] = v }
    # get all accents with parts
    part_accents = CosmicAccent.where('cosmic_part_id IS NOT NULL').pluck(:ccss_math_id, :content)
    # get intelligence, which part has accents and how many
    #  convert the array to hash with key value, key->cosmic_part_id, value ->content
   @part_accents_hashes = {}
    part_accents.each { |k, v| @part_accents_hashes[k] = v }
    # TO DO IS ONLY DISPLAYING TEH LAST found in the view but the console is correct
    # => [[26, "or vertical"], [26, "a horizontal"]]
  end

  # GET /ccss_maths/1
  # GET /ccss_maths/1.json
  def show
  end

  # GET /ccss_maths/new
  def new
    @ccss_math = CcssMath.new
  end

  # GET /ccss_maths/1/edit
  def edit
  end

  # POST /ccss_maths
  # POST /ccss_maths.json
  def create
    @ccss_math = CcssMath.new(ccss_math_params)

    respond_to do |format|
      if @ccss_math.save
        format.html { redirect_to @ccss_math, notice: 'Ccss math was successfully created.' }
        format.json { render :show, status: :created, location: @ccss_math }
      else
        format.html { render :new }
        format.json { render json: @ccss_math.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ccss_maths/1
  # PATCH/PUT /ccss_maths/1.json
  def update
    respond_to do |format|
      if @ccss_math.update(ccss_math_params)
        format.html { redirect_to @ccss_math, notice: 'Ccss math was successfully updated.' }
        format.json { render :show, status: :ok, location: @ccss_math }
      else
        format.html { render :edit }
        format.json { render json: @ccss_math.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ccss_maths/1
  # DELETE /ccss_maths/1.json
  def destroy
    @ccss_math.destroy
    respond_to do |format|
      format.html { redirect_to ccss_maths_url, notice: 'Ccss math was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ccss_math
    @ccss_math = CcssMath.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ccss_math_params
    params.require(:ccss_math).permit(:id, :ccss_id, :ccss_type, :domain_id, :domain_desc, :grade_id, :grade_name, :cluster_id, :standard_id, :standard_desc, :ccss_id, :ccss_typ, :domain_id, :domain_desc, :grade_id, :grade_name, :cluster_id, :standard_id, :standard_desc)
  end
end
