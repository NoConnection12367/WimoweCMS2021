

$(document).ready(function () {

    $("#newUserButton").click(function () {
        $("#newUserModal").css("display", "block");
    });

    $(".close").click(function () {
        $("#newUserModal").css("display", "none");
    });

    $("#createUserButton").click(function () {

        createNewUser();
    });

});

function createNewUser() {

    // Check if passwords match
    if($("#newUserModal #newPassword").val() != $("#newUserModal #repeatNewPassword").val()) {
        $("#newUserModal #errorText").html("Die Passwörter stimmen nicht überein!");
        $("#newUserModal #errorText").css("display", "block");
    }
    else
    {
        $("#newUserModal #errorText").css("display", "none");

        // Submit data to server and see if any errors occur
        $.ajax({
            url: "functions.php", 
            type: "POST",
            data: {
                username: $("#newUserModal #username").val(),
                password: $("#newUserModal #newPassword").val(),
                rightGroup: $("#newUserModal #rightGroup").val()
            },
            success: function(result){
                if (result != "Success")
                {
                    // Request unsuccessful, display errormessage
                    $("#newUserModal #errorText").html(result);
                    $("#newUserModal #errorText").css("display", "block");
                }
                else
                {
                    // User created successfully, reload page to display refreshed userlist
                    location.reload();
                }
            }
        });

    }
}