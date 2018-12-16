

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

    $newPw = $("#newUserModal #newPassword").val();
    $newPwRepeat = $("#newUserModal #repeatNewPassword").val();
    $username = $("#newUserModal #username").val();

    // Check if passwords match
    if($newPw != $newPwRepeat) {
        $("#newUserModal #errorText").html("Die Passwörter stimmen nicht überein!");
        $("#newUserModal #errorText").css("display", "block");
    }
    // Check if username is too short
    else if ($username.length < 3) {
        $("#newUserModal #errorText").html("Der Benutzername muss mindestens 3 Zeichen lang sein!");
        $("#newUserModal #errorText").css("display", "block");
    }
    // Check if password is too short
    else if ($newPw.length < 6) {
        $("#newUserModal #errorText").html("Das Passwort muss mindestens 6 Zeichen lang sein!");
        $("#newUserModal #errorText").css("display", "block");
    }
    else
    {
        $("#newUserModal #errorText").css("display", "none");

        // Submit data to server and see if any errors occur
        $.ajax({
            url: "postback/create_user_postback.php", 
            type: "POST",
            data: {
                username: $username,
                password: $newPw,
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