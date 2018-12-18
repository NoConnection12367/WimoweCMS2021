$(document).ready(function () {
    var editor = new MediumEditor('.editable');

    $(function () {
        $('.editable').mediumInsert({
            editor: editor
        });
    });

    $("#savebutton").click(function () {
        var allContents = editor.serialize();
        console.log(allContents.editor_content.value);
        $.post("functions.php",
            {
                content: allContents.editor_content.value,
                siteid: getUrlParameter('loadcontenid')
            },
            function (status) {
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