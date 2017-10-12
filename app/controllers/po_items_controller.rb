class PoItemsController < ApplicationController
  before_action :set_po_item, only: [:show, :edit, :update, :destroy]

  # GET /po_items
  # GET /po_items.json
  def index
    @po_items = PoItem.all.order('po_id ASC')
  end

  # GET /po_items/1
  # GET /po_items/1.json
  def show
  end

  # GET /po_items/new
  def new
    @po_item = PoItem.new
  end

  # GET /po_items/1/edit
  def edit
  end

  # POST /po_items
  # POST /po_items.json
  def create
    @po_item = PoItem.new(po_item_params)

    respond_to do |format|
      if @po_item.save
        format.html { redirect_to @po_item, notice: 'Po item was successfully created.' }
        format.json { render :show, status: :created, location: @po_item }
      else
        format.html { render :new }
        format.json { render json: @po_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /po_items/1
  # PATCH/PUT /po_items/1.json
  def update
    respond_to do |format|
      if @po_item.update(po_item_params)
        format.html { redirect_to @po_item, notice: 'Po item was successfully updated.' }
        format.json { render :show, status: :ok, location: @po_item }
      else
        format.html { render :edit }
        format.json { render json: @po_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /po_items/1
  # DELETE /po_items/1.json
  def destroy
    @po_item.destroy
    respond_to do |format|
      format.html { redirect_to po_items_url, notice: 'Po item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_po_item
      @po_item = PoItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def po_item_params
      params.require(:po_item).permit(:qty, :po_inspect, :po_stuffing, :po_id, :item_id)
    end
end
