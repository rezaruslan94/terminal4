class ReportsController < ApplicationController
  def productivity_person
    # @pics = Pic.where(date: (params[:start])..(params[:end]))
    @pics = Pic.group(:part_id).having(date: (params[:start])..(params[:end]))
    @parts = Part.all
  end

  def productivity_people
    @pics = Pic.all
    @employees = Employee.all
  end
  def report_params
    params.require(:pic, :area).permit(:wh, :qty, :area_id, :part_id)
  end
end
