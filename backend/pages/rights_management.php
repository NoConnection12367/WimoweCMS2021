
<div class="rightManagementContainer">
    <h1>Rechteverwaltung</h1>
    <table class="userTable" cellspacing="0">
        <tr class="even">
            <th>Benutzername</th>
            <th>Rechtegruppe</th>
        </tr>

        <?php
            // Load all users
            $sql = "SELECT * FROM user LEFT JOIN user_rights ON user.GroupID=user_rights.ID ORDER BY Username" ;
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                // Users found
                $i = 0;
                while($row = mysqli_fetch_assoc($result)) {
                    $i++;
                    $cssType = $i % 2 ? "odd" : "even";

                    echo "<tr class='" . $cssType . "'><td>" . $row["Username"] . "</td><td>" . $row["Name"] . "</td></tr>";
                }
            }
        ?>

    </table>

    <button id="newUserButton" class="buttonStyle">Neuen Benutzer anlegen</button>

</div>