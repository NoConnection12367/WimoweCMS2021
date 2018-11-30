$(document).ready(function(){
    var editor = new MediumEditor('.editable');

    $("#savebutton").click(function(){
        $.post( "../pages/content_saver.php", 
        { content: $('#editor_content').html(),
          siteid: $("#select_option option:selected").val(),
          tag: "text"
    },
        function(status){
            alert("Status: " + status);
        });
    });

    
});