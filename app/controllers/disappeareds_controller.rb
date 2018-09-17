class DisappearedsController < ApplicationController
  before_action :set_disappeared, only: [:show, :edit, :update, :destroy]

  # GET /disappeareds
  # GET /disappeareds.json
  def index
    @disappeareds = Disappeared.all
  end

  # GET /disappeareds/1
  # GET /disappeareds/1.json
  def show
  end

  # GET /disappeareds/new
  def new
    @disappeared = Disappeared.new
  end

  # GET /disappeareds/1/edit
  def edit
  end

  # POST /disappeareds
  # POST /disappeareds.json
  def create
    @disappeared = Disappeared.new(disappeared_params)

    respond_to do |format|
      if @disappeared.save
        format.html { redirect_to @disappeared, notice: 'Disappeared was successfully created.' }
        format.json { render :show, status: :created, location: @disappeared }
      else
        format.html { render :new }
        format.json { render json: @disappeared.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disappeareds/1
  # PATCH/PUT /disappeareds/1.json
  def update
    respond_to do |format|
      if @disappeared.update(disappeared_params)
        format.html { redirect_to @disappeared, notice: 'Disappeared was successfully updated.' }
        format.json { render :show, status: :ok, location: @disappeared }
      else
        format.html { render :edit }
        format.json { render json: @disappeared.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disappeareds/1
  # DELETE /disappeareds/1.json
  def destroy
    @disappeared.destroy
    respond_to do |format|
      format.html { redirect_to disappeareds_url, notice: 'Disappeared was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disappeared
      @disappeared = Disappeared.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disappeared_params
      params.require(:disappeared).permit(:user_id, :name, :age, :sex, :birthdate, :date_desapearence, :street_id, :mother, :dad)
    end
end
