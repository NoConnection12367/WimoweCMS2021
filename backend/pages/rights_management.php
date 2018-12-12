<h1>Rechteverwaltung</h1>

<div>
    <table>
        <tr>
            <th>Benutzername</th>
            <th>Rechtegruppe</th>
        </tr>

        <?php
            // Load all users
            $sql = "SELECT * FROM user LEFT JOIN user_rights ON user.GroupID=user_rights.ID";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                // Users found

                while($row = mysqli_fetch_assoc($result)) {
                    echo "<tr><td>" . $row["Username"] . "</td><td>" . $row["Name"] . "</td></tr>";
                }
            }
        ?>

    </table>
</div>