class PicDatatable < AjaxDatatablesRails::Base
  # uncomment the appropriate paginator module,
  # depending on gems available in your project.
  #include AjaxDatatablesRails::Extensions::Kaminari
   include AjaxDatatablesRails::Extensions::WillPaginate
  # include AjaxDatatablesRails::Extensions::SimplePaginator
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    #@sortable_columns ||= ['employees.name']
    @sortable_columns ||= %w(Pic.area_id Pic.part_id Pic.wh Pic.qty Pic.pic_date)
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    #@searchable_columns ||= ['Pic.area_id' 'Pic.part_id' 'Pic.wh' 'Pic.qty' 'Pic.pic_date']
    @sortable_columns ||= %w(Pic.area_id Pic.part_id Pic.wh Pic.qty Pic.pic_date)
  end

  private

  def data
    records.map do |record|
    {
      '0' => record.area_id,
      '1' => record.part_id,
      '2' => record.wh,
      '3' => record.qty,
      '4' => record.pic_date
    }
    end
  end

  def get_raw_records
    # insert query here
    Pic.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
