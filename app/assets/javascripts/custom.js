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
  field.find('.wh').val($('#area_pics_attributes_0_wh').val());
  console.log("nilai wh di baris pertama = " + $('#area_pics_attributes_0_wh').val());

  field.find('.dp').val($('#area_pics_attributes_0_pic_date').val());

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
  });
});
