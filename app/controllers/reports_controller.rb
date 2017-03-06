class ReportsController < ApplicationController
  before_action :authenticate_user!
    def productivity_person
      @pics = Pic.select('part_id, sum(qty) as total_qty, area_id').where(pic_date: (params[:start])..(params[:end])).where(area_id: (params[:area_id])).group(:part_id)
      @parts = Part.where(id: @pics.collect(&:part_id))
      @area = Area.find(params[:area_id]) if params[:area_id].present?
      @employees = Employee.all
    end

  def productivity_people
    @pics = Pic.select('part_id, sum(wh) as total_wh, area_id').where(pic_date: (params[:start])..(params[:end])).group(:area_id)
    @parts = Part.where(id: @pics.collect(&:part_id))
    @areas = Area.where(id: @pics.collect(&:area_id))
    @employees = Employee.all
    @division = Division.all
    @report_data = Pic.report_data(params[:start_date], params[:end_date])
  end

  def test
    @pics = Pic.select('part_id, area_id').all
    @areas = Area.select('division_id').all
    @departments = Department.all
    @divisions =Division.all
    @parts = Part.all
    @employees = Employee.all
    @report_data = Pic.report_data(params[:start_date], params[:end_date])
  end

  def report_params
  params.require(:pic).permit(:wh, :qty, :area_id, :part_id, :employee_id)
end
end
