

$(document).ready(function () {

    $("#saveButton").click(function () {
        save();
    });

    $(".layout").click(function () {
        $(".layout").removeClass("selected");
        $(this).addClass("selected");
    });

});

function save() {
    var cssPath = $(".selected").attr("cssPath");
    var pageTitle = $("#pageTitle").val();
    var websiteFontSize = $("#websiteFontSize").val();
    var siteFontSize = $("#siteFontSize").val();
    var textFontSize = $("#textFontSize").val();
    var fontFamily = $("#fontFamily").val();

    // Submit data to server and see if any errors occur
    $.ajax({
        url: "postback/layout_page_postback.php", 
        type: "POST",
        data: {
            pageTitle: pageTitle,
            cssPath: cssPath,
            websiteFontSize: websiteFontSize,
            siteFontSize: siteFontSize,
            textFontSize: textFontSize,
            fontFamily: fontFamily
        },
        success: function(result){
            //alert(result);
        }
    });
}