$(document).ready(function(){
    var editor = new MediumEditor('.editable');

    $("#savebutton").click(function(){
        $.post( "../pages/content_saver.php", 
        { content: $('#editor_content').html(),
          siteid: getUrlParameter('loadcontenid'),
          tag: "text"
    },
        function(status){
            alert("Status: " + status);
        });
    });  
});

function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
};