$(document).ready(function() {
  $('fieldset.positioned').trigger('nested_fields_changed');
});

$('fieldset.positioned').live('nested_fields_changed', function() {
  var pos_fld = this.getAttribute('data-positioned-by');
  repositionNestedFields(this, pos_fld);

  if (!$(this).hasClass('ui-sortable')) {
    $(this).sortable({update: function() { repositionNestedFields(this, pos_fld); }});
  }
});
