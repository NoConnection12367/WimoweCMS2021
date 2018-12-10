<?php
// Connect to sql database

// Define constants
$servername = "localhost";
$username = "root";
$password = "";

// Create connection
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    mysqli_set_charset($conn, "utf8");
    mysqli_select_db($conn, "wimowe");
}

$content = $_REQUEST["content"];
$siteid = $_REQUEST["siteid"];
$tag = $_REQUEST["tag"];


$sql = "INSERT INTO content_de (Content, SiteID, Tag) VALUES ('" . $content . "', '" . $siteid . "', '" . $tag . "')  ON DUPLICATE KEY UPDATE Content=\" . $content . \", Tag=\". $tag .\"";
if (mysqli_query($conn, $sql)) {
    echo "Content wurde gespeichert.";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
?>