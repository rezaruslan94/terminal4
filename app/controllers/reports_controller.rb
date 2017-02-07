class ReportsController < ApplicationController
    def productivity_person
      # @pics = Pic.where(date: (params[:start])..(params[:end]))
      @pics = Pic.select('part_id, sum(qty) as total_qty').where(pic_date: (params[:start])..(params[:end])).group(:part_id)
      @parts = Part.where(id: @pics.collect(&:part_id))
    end

  def productivity_people
    @pics = Pic.all
    @employees = Employee.all
  end

  def report_params
  params.require(:pic, :area).permit(:wh, :qty, :area_id, :part_id)
end
end
