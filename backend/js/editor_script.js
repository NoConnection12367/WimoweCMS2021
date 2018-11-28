$(document).ready(function() {
    var editor = new MediumEditor('.editable');

    $( "#savebutton" ).click(function() {
        console.log($('#editor_content').html());
      });
});

