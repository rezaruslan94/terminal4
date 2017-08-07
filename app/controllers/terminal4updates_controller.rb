class Terminal4updatesController < ApplicationController
  before_action :set_terminal4update, only: [:show, :edit, :update, :destroy]

  # GET /terminal4updates
  # GET /terminal4updates.json
  def index
    @terminal4updates = Terminal4update.all
  end

  # GET /terminal4updates/1
  # GET /terminal4updates/1.json
  def show
  end

  # GET /terminal4updates/new
  def new
    @terminal4update = Terminal4update.new
  end

  # GET /terminal4updates/1/edit
  def edit
  end

  # POST /terminal4updates
  # POST /terminal4updates.json
  def create
    @terminal4update = Terminal4update.new(terminal4update_params)

    respond_to do |format|
      if @terminal4update.save
        format.html { redirect_to new_terminal4update_url, notice: 'Terminal4update was successfully created.' }
        format.json { render :show, status: :created, location: @terminal4update }
      else
        format.html { render :new }
        format.json { render json: @terminal4update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminal4updates/1
  # PATCH/PUT /terminal4updates/1.json
  def update
    respond_to do |format|
      if @terminal4update.update(terminal4update_params)
        format.html { redirect_to @terminal4update, notice: 'Terminal4update was successfully updated.' }
        format.json { render :show, status: :ok, location: @terminal4update }
      else
        format.html { render :edit }
        format.json { render json: @terminal4update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminal4updates/1
  # DELETE /terminal4updates/1.json
  def destroy
    @terminal4update.destroy
    respond_to do |format|
      format.html { redirect_to terminal4updates_url, notice: 'Terminal4update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal4update
      @terminal4update = Terminal4update.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminal4update_params
      params.require(:terminal4update).permit(:qty, :terminal_fourth_id)
    end
end
