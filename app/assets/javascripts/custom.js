$( document ).ready(function() {
  $(".dp" ).datepicker({
    dateFormat: 'dd-mm-yy',
    inline: true
  });
});

$( document ).ready(function() {
  $(".ComboPart").select2({
    width: '250px',
    placeholder: "Choose a part",
    allowClear: true
  });
});

$(document).on('nested:fieldAdded', function(event){
  var field = event.field;
  //Untuk Add data di form
  field.find('.wh').val($('#area_pics_attributes_0_wh').val());
  console.log("nilai wh di baris pertama = " + $('#area_pics_attributes_0_wh').val());

  field.find('.dp').val($('#area_pics_attributes_0_pic_date').val());
  field.find('.po').val($('#buyer_terminal_fourths_attributes_0_po').val());

  var dateField = field.find('.dp');
  dateField.datepicker({
    dateFormat: 'dd-mm-yy',
    inline: true
  });

  var dataDropdown = field.find('.ComboPart');
  dataDropdown.select2({
    width: '250px',
    placeholder: "Choose a part",
    // theme: "bootstrap",
    allowClear: true
  });
});

$(document).ready(function() {
  $('#PicDataTables').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#PicDataTables').data('source'),
    "pagingType": "full_numbers",
    "columnDefs": [
      { "orderable": false, "targets": [5,6] }
    ]
  });
});

$(document).ready(function() {
  $('#EmployeeDatatables').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#EmployeeDatatables').data('source'),
    "pagingType": "full_numbers"
  });
});



$(document).ready(function() {
  $('#TerminalFourthDatatables').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#TerminalFourthDatatables').data('source'),
    "pagingType": "full_numbers",
    "columnDefs": [
      { "orderable": false, "targets": [4,7,8,9] }
    ]
  });
});

// $( document ).ready(function() {
//   $(".ComboPartTest").select2({
//     width: '250px',
//     placeholder: "Choose a part",
//     allowClear: true
//   });
// });
$( document ).ready(function() {
  $(".ComboPartTest").select2({
    width: '250px',
    placeholder: "Choose a part",
    allowClear: true,
    ajax: {
      processResults: function (data) {
        return {
          results: data.items
        };
      }
    }
  });
});
