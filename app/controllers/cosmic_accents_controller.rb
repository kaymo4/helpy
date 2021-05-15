class CosmicAccentsController < ApplicationController
  before_action :set_cosmic_accent, only: [:show, :edit, :update, :destroy]

  # GET /cosmic_accents
  # GET /cosmic_accents.json
  def index
    @cosmic_accents = CosmicAccent.all
  end

  # GET /cosmic_accents/1
  # GET /cosmic_accents/1.json
  def show
  end

  # GET /cosmic_accents/new
  def new
    @cosmic_accent = CosmicAccent.new
  end

  # GET /cosmic_accents/1/edit
  def edit
  end

  # POST /cosmic_accents
  # POST /cosmic_accents.json
  def create
    @cosmic_accent = CosmicAccent.new(cosmic_accent_params)

    respond_to do |format|
      if @cosmic_accent.save
        format.html { redirect_to @cosmic_accent, notice: 'Cosmic accent was successfully created.' }
        format.json { render :show, status: :created, location: @cosmic_accent }
      else
        format.html { render :new }
        format.json { render json: @cosmic_accent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosmic_accents/1
  # PATCH/PUT /cosmic_accents/1.json
  def update
    respond_to do |format|
      if @cosmic_accent.update(cosmic_accent_params)
        format.html { redirect_to @cosmic_accent, notice: 'Cosmic accent was successfully updated.' }
        format.json { render :show, status: :ok, location: @cosmic_accent }
      else
        format.html { render :edit }
        format.json { render json: @cosmic_accent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosmic_accents/1
  # DELETE /cosmic_accents/1.json
  def destroy
    @cosmic_accent.destroy
    respond_to do |format|
      format.html { redirect_to cosmic_accents_url, notice: 'Cosmic accent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosmic_accent
      @cosmic_accent = CosmicAccent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cosmic_accent_params
      params.require(:cosmic_accent).permit(:content, :cosmic_part_id)
    end
end
