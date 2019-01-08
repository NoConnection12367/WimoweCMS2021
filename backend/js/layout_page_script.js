

$(document).ready(function () {

    // Todo: Load default values

    $("#saveButton").click(function () {
        save();
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