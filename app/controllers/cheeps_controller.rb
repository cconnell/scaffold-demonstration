class CheepsController < ApplicationController
  before_action :set_cheep, only: [:show, :edit, :update, :destroy]

  # GET /cheeps
  # GET /cheeps.json
  def index
    @cheeps = Cheep.all
  end

  # GET /cheeps/1
  # GET /cheeps/1.json
  def show
  end

  # GET /cheeps/new
  def new
    @cheep = Cheep.new
  end

  # GET /cheeps/1/edit
  def edit
  end

  # POST /cheeps
  # POST /cheeps.json
  def create
    @cheep = Cheep.new(cheep_params)

    respond_to do |format|
      if @cheep.save
        format.html { redirect_to @cheep, notice: 'Cheep was successfully created.' }
        format.json { render :show, status: :created, location: @cheep }
      else
        format.html { render :new }
        format.json { render json: @cheep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cheeps/1
  # PATCH/PUT /cheeps/1.json
  def update
    respond_to do |format|
      if @cheep.update(cheep_params)
        format.html { redirect_to @cheep, notice: 'Cheep was successfully updated.' }
        format.json { render :show, status: :ok, location: @cheep }
      else
        format.html { render :edit }
        format.json { render json: @cheep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cheeps/1
  # DELETE /cheeps/1.json
  def destroy
    @cheep.destroy
    respond_to do |format|
      format.html { redirect_to cheeps_url, notice: 'Cheep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cheep
      @cheep = Cheep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cheep_params
      params.require(:cheep).permit(:content, :user_id)
    end
end
