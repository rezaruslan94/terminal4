$( document ).ready(function() {
  $( ".dp" ).datepicker({
    dateFormat: 'dd-mm-yy',
    inline: true
  });
});
$(document).on('nested:fieldAdded', function(event){
  // this field was just inserted into your form
  var field = event.field;
  var wh = field.find('.wh')
    wh.pic_form_fields.text_field(:wh)
  // it's a jQuery object already! Now you can find date input
  var dateField = field.find('.dp');
  // and activate datepicker on it
  dateField.datepicker({
    dateFormat: 'dd-mm-yy',
    inline: true
  });
})

$(document).ready(function() {
  $('#PicDataTables').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#PicDataTables').data('source'),
    "pagingType": "full_numbers",
  });
});

$(document).ready(function() {
  $('#select-beast').selectize({
      create: true,
      sortField: 'text'
  });
});
