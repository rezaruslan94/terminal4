class TerminalFourthDatatable < AjaxDatatablesRails::Base

include AjaxDatatablesRails::Extensions::WillPaginate

  def sortable_columns
    # Declare strings in this format: ModelName.column_name

    @sortable_columns ||= %w(TerminalFourth.po Buyer.name TerminalFourth.item_name TerminalFourth.qty TerminalFourth.terminal_inspect TerminalFourth.terminal_stuffing)

  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= %w(TerminalFourth.po Buyer.name TerminalFourth.item_name TerminalFourth.qty TerminalFourth.terminal_inspect TerminalFourth.terminal_stuffing)
  end

  private

  def_delegators :@view, :link_to, :edit_terminal_fourth_path, :edit_finish_terminal_fourth_path
  def data
    records.map do |record|
      {
        '0' => record.po,
        '1' => record.buyer.name,
        '2' => record.item_name,
        '3' => record.qty,
        '4' => record.set_finish,
        '5' => record.terminal_inspect,
        '6' => record.terminal_stuffing,
        '7' => link_to('Update Finish', edit_finish_terminal_fourth_path(record)),
        '8' => link_to('Update', edit_terminal_fourth_path(record)),
        '9' => link_to('Delete', record, method: :delete, data: {confirm: 'Are you sure?'})
      }
    end
  end

  def get_raw_records
    # insert query here
    TerminalFourth.eager_load(:buyer).distinct
  end
  # ==== Insert 'presenter'-like methods below if necessary
end
