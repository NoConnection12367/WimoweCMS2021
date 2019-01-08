

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

    var pageTitle = $("#pageTitle").val();

    // Submit data to server and see if any errors occur
    $.ajax({
        url: "postback/layout_page_postback.php", 
        type: "POST",
        data: {
            pageTitle: pageTitle
        },
        success: function(result){
            if (result == "Success")
            {
                // User deleted successfully, reload page to display refreshed userlist
            }
        }
    });
}