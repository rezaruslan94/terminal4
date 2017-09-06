class PoUpdatesController < ApplicationController
  before_action :set_po_update, only: [:show, :edit, :update, :destroy]

  # GET /po_updates
  # GET /po_updates.json
  def index
    @po_updates = PoUpdate.all
  end

  # GET /po_updates/1
  # GET /po_updates/1.json
  def show
  end

  # GET /po_updates/new
  def new
    @po_update = PoUpdate.new
    @po_items = PoItem.joins(:item).order("items.name asc")
  end

  # GET /po_updates/1/edit
  def edit
  end

  # POST /po_updates
  # POST /po_updates.json
  def create
    @po_update = PoUpdate.new(po_update_params)

    respond_to do |format|
      if @po_update.save
        format.html { redirect_to new_po_update_url, notice: 'Po update was successfully created.' }
        format.json { render :show, status: :created, location: @po_update }
      else
        format.html { render :new }
        format.json { render json: @po_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /po_updates/1
  # PATCH/PUT /po_updates/1.json
  def update
    respond_to do |format|
      if @po_update.update(po_update_params)
        format.html { redirect_to @po_update, notice: 'Po update was successfully updated.' }
        format.json { render :show, status: :ok, location: @po_update }
      else
        format.html { render :edit }
        format.json { render json: @po_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /po_updates/1
  # DELETE /po_updates/1.json
  def destroy
    @po_update.destroy
    respond_to do |format|
      format.html { redirect_to po_updates_url, notice: 'Po update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_po_update
      @po_update = PoUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def po_update_params
      params.require(:po_update).permit(:qty_finish, :po_item_id)
    end
end
