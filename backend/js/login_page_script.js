


$(document).ready(function () {

    $("#loginButton").click(function () {
        login();
    });

});

function login() {

    $user = $("#username").val();
    $pass = $("#password").val();

    // Submit data to the server and see if any errors occur
    $.ajax({
        url: "postback/login_postback.php", 
        type: "POST",
        data: {
            username: $user,
            password: $pass
        },
        success: function(result){
            if (result != "Success")
            {
                // Request unsuccessful, display errormessage
                $("#loginContainer #errorText").html(result);
                $("#loginContainer #errorText").css("display", "block");
            }
            else
            {
                // User created successfully, reload page to display requested page
                location.reload();
            }
        }
    });
}