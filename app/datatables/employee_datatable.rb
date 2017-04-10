class EmployeeDatatable < AjaxDatatablesRails::Base

include AjaxDatatablesRails::Extensions::WillPaginate
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['employees.name']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['employees.name']
  end

  private

  def data
    records.map do |record|
      [
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
        record.name
      ]
    end
  end

  def get_raw_records
    # insert query here
    Employee.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
