class ReportsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_po_item, only: [:destroy]

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  # load_and_authorize_resource

    def productivity_person
      @data_report_person = Pic.data_report_person(params[:start_date], params[:end_date], params[:area_combo])
      @area = Area.find(params[:area_combo]) if params[:area_combo].present?

      logger.debug
      respond_to do |format|
        format.html
        format.pdf do
          render  pdf: 'person',   # Excluding ".pdf" extension.
                  layout: 'pdf'
        end
      end
    end

  def productivity_people
    @pics = Pic.select('part_id, sum(wh) as total_wh, area_id').where(pic_date: (params[:start])..(params[:end])).group(:area_id)
    @parts = Part.where(id: @pics.collect(&:part_id))
    @areas = Area.where(id: @pics.collect(&:area_id))
    @employees = Employee.all
    @division = Division.all
    @data_report_people = Pic.data_report_people(params[:start_date], params[:end_date])
    respond_to do |format|
      format.html
      format.pdf do
        render  pdf: 'people',   # Excluding ".pdf" extension.
                layout: 'pdf'
      end
    end
  end

  def test
  end

  def per_item
    @report_per_item = PoItem.data_report_per_item
  end

  def per_po
    @po_updates = PoItem.joins(:po_updates).select('po_id, item_id, po_item_id, qty, sum(qty_finish) as finish, po_inspect, po_stuffing').group(:po_item_id).order(:po_id)
  end

  def per_buyer
    @buyer_pos = Po.joins(:buyer).select('number, buyer_id, name as name_buyer')
    @po_items = @buyer_pos.joins(:po_items).order("buyers.name asc")
    @po_updates = @po_items.joins(:po_updates).select('po_id, item_id, po_item_id, qty, sum(qty_finish) as finish, po_inspect, po_stuffing').group(:po_item_id).order(:po_id)
  end

  private

    def set_po_item

      @item = Item.find(params[:id])

    end

  def report_params
    params.require(:pic).permit(:wh, :qty, :area_id, :part_id, :employee_id, :start_date, :end_date, :format)
  end


end
