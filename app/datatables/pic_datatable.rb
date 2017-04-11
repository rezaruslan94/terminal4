class PicDatatable < AjaxDatatablesRails::Base
  # uncomment the appropriate paginator module,
  # depending on gems available in your project.
  #include AjaxDatatablesRails::Extensions::Kaminari
   include AjaxDatatablesRails::Extensions::WillPaginate
  # include AjaxDatatablesRails::Extensions::SimplePaginator
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= %w(Area.name Part.number. Pic.wh Pic.qty Pic.pic_date)
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= %w(Area.name Part.number Pic.wh Pic.qty Pic.pic_date)
  end

  private

  def data
    records.map do |record|
    {
      '0' => record.area.name,
      '1' => record.part.number,
      '2' => record.wh,
      '3' => record.qty,
      '4' => record.pic_date
    }
    end
  end

  def get_raw_records
    # insert query here
    Pic.eager_load(:area, :part).distinct
  end
  # ==== Insert 'presenter'-like methods below if necessary
end
