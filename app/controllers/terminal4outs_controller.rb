class Terminal4outsController < ApplicationController
  before_action :set_terminal4out, only: [:show, :edit, :update, :destroy]

  # GET /terminal4outs
  # GET /terminal4outs.json
  def index
    @terminal4outs = Terminal4out.all
  end

  # GET /terminal4outs/1
  # GET /terminal4outs/1.json
  def show
  end

  # GET /terminal4outs/new
  def new
    @terminal4out = Terminal4out.new
  end

  # GET /terminal4outs/1/edit
  def edit
  end

  # POST /terminal4outs
  # POST /terminal4outs.json
  def create
    @terminal4out = Terminal4out.new(terminal4out_params)

    respond_to do |format|
      if @terminal4out.save
        format.html { redirect_to @terminal4out, notice: 'Terminal4out was successfully created.' }
        format.json { render :show, status: :created, location: @terminal4out }
      else
        format.html { render :new }
        format.json { render json: @terminal4out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminal4outs/1
  # PATCH/PUT /terminal4outs/1.json
  def update
    respond_to do |format|
      if @terminal4out.update(terminal4out_params)
        format.html { redirect_to @terminal4out, notice: 'Terminal4out was successfully updated.' }
        format.json { render :show, status: :ok, location: @terminal4out }
      else
        format.html { render :edit }
        format.json { render json: @terminal4out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminal4outs/1
  # DELETE /terminal4outs/1.json
  def destroy
    @terminal4out.destroy
    respond_to do |format|
      format.html { redirect_to terminal4outs_url, notice: 'Terminal4out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal4out
      @terminal4out = Terminal4out.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminal4out_params
      params.require(:terminal4out).permit(:fix, :terminal_fourth_id)
    end
end
