class ReportsController < ApplicationController
  def productivity_person
    # @pics = Pic.uniq
    #@pics = Pic.where(created_at: '2017-01-30 04:36:14.539234'..'2017-02-01 12:41:47.348653')

    @pics = Pic.where(date: (params[:start])..(params[:end]))
    #@parts = Part.uniq.all
    #@employees = Employee.all
    #@areas = Area.all

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
