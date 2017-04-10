$( document ).ready(function() {
  $( ".dp" ).datepicker({
    dateFormat: 'dd-mm-yy',
    inline: true
  });
});

$(document).ready(function() {
  $('#PicDataTables').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#PicDataTables').data('source'),
    "pagingType": "full_numbers",
  });
});

$(document).ready(function() {
  $('#EmployeeDataTables').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#EmployeeDataTables').data('source'),
    "pagingType": "full_numbers",
  });
});
