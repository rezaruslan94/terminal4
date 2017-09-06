class PosController < ApplicationController
  before_action :set_po, only: [:show, :edit, :update, :destroy]

  # GET /pos
  # GET /pos.json
  def index
    @pos = Po.all
  end

  # GET /pos/1
  # GET /pos/1.json
  def show
  end

  # GET /pos/new
  def new
    @po = Po.new
    @po.po_items.build
  end

  # GET /pos/1/edit
  def edit
  end

  # POST /pos
  # POST /pos.json
  def create
    @po = Po.new(po_params)

    respond_to do |format|
      if @po.save
        format.html { redirect_to pos_url, notice: 'Po was successfully created.' }
        format.json { render :show, status: :created, location: @po }
      else
        format.html { render :new }
        format.json { render json: @po.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pos/1
  # PATCH/PUT /pos/1.json
  def update
    respond_to do |format|
      if @po.update(po_params)
        format.html { redirect_to pos_url, notice: 'Po was successfully updated.' }
        format.json { render :show, status: :ok, location: @po }
      else
        format.html { render :edit }
        format.json { render json: @po.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pos/1
  # DELETE /pos/1.json
  def destroy
    @po.destroy
    respond_to do |format|
      format.html { redirect_to pos_url, notice: 'Po was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_po
      @po = Po.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def po_params
      params.require(:po).permit(:number, :buyer_id,
      po_items_attributes: [:id, :po_inspect, :po_stuffing, :qty, :po_id, :item_id, :_destroy])
    end
end
