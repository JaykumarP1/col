class StudsController < ApplicationController
  before_action :set_stud, only: [:show, :edit, :update, :destroy]

  # GET /studs
  # GET /studs.json
  def index
    @studs = Stud.all
  end

  # GET /studs/1
  # GET /studs/1.json
  def show
  end

  # GET /studs/new
  def new
    @stud = Stud.new
  end

  # GET /studs/1/edit
  def edit
  end

  # POST /studs
  # POST /studs.json
  def create
    @stud = Stud.new(stud_params)

    respond_to do |format|
      if @stud.save
        format.html { redirect_to @stud, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @stud }
      else
        format.html { render :new }
        format.json { render json: @stud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studs/1
  # PATCH/PUT /studs/1.json
  def update
    respond_to do |format|
      if @stud.update(stud_params)
        format.html { redirect_to @stud, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @stud }
      else
        format.html { render :edit }
        format.json { render json: @stud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studs/1
  # DELETE /studs/1.json
  def destroy
    @stud.destroy
    respond_to do |format|
      format.html { redirect_to studs_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stud
      @stud = Stud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stud_params
      params.require(:stud).permit(:name,:dept_id)
    end
end
