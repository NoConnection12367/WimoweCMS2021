<?php

    session_start();

    if (isset($_POST['language'])) {

        // Set language session variable to requested language
        if ($_POST['language'] == "Deutsch") {
            $_SESSION["selectedLanguage"] = "Deutsch";
        }
        else {
            $_SESSION["selectedLanguage"] = "Englisch";
        }

        echo "Success";
    }

?>