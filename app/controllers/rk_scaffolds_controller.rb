class RkScaffoldsController < ApplicationController
  before_action :set_rk_scaffold, only: [:show, :edit, :update, :destroy]

  # GET /rk_scaffolds
  # GET /rk_scaffolds.json
  def index
    @rk_scaffolds = RkScaffold.all
  end

  # GET /rk_scaffolds/1
  # GET /rk_scaffolds/1.json
  def show
  end

  # GET /rk_scaffolds/new
  def new
    @rk_scaffold = RkScaffold.new
  end

  # GET /rk_scaffolds/1/edit
  def edit
  end

  # POST /rk_scaffolds
  # POST /rk_scaffolds.json
  def create
    @rk_scaffold = RkScaffold.new(rk_scaffold_params)

    respond_to do |format|
      if @rk_scaffold.save
        format.html { redirect_to @rk_scaffold, notice: 'Rk scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @rk_scaffold }
      else
        format.html { render :new }
        format.json { render json: @rk_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rk_scaffolds/1
  # PATCH/PUT /rk_scaffolds/1.json
  def update
    respond_to do |format|
      if @rk_scaffold.update(rk_scaffold_params)
        format.html { redirect_to @rk_scaffold, notice: 'Rk scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @rk_scaffold }
      else
        format.html { render :edit }
        format.json { render json: @rk_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rk_scaffolds/1
  # DELETE /rk_scaffolds/1.json
  def destroy
    @rk_scaffold.destroy
    respond_to do |format|
      format.html { redirect_to rk_scaffolds_url, notice: 'Rk scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rk_scaffold
      @rk_scaffold = RkScaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rk_scaffold_params
      params[:rk_scaffold]
    end
end
