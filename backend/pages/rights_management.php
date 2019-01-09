
<?php
    // Check if user is allowed to view this page
    if (permissionLevel() < 25) {
        include("permission_denied.php");
        return;
    }
?>


<div class="rightManagementContainer">

    <script src="js\rights_management_script.js" type="text/javascript"></script>

    <h1>Rechteverwaltung</h1>
    <!-- Table listing all existing users -->
    <table class="userTable" cellspacing="0">
        <tr class="even">
            <td class="th">Benutzername</td>
            <td class="th">Rechtegruppe</td>
            <td></td>
            <td></td>
        </tr>

        <?php
            // Load all users
            $sql = "SELECT user.ID,Username,GroupID,Name,RightLevel FROM user LEFT JOIN user_rights ON user.GroupID=user_rights.ID ORDER BY Username";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                // Users found
                $i = 0;
                while($row = mysqli_fetch_assoc($result)) {
                    $i++;
                    $cssType = $i % 2 ? "odd" : "even";
                    echo "<tr class='" . $cssType . "'><td>" . $row["Username"] . "</td><td>" . $row["Name"] . "</td>
                            <td class='icontd'><div class='user-editBtn iconButton' userID='" . $row["ID"] . "' username='" . $row["Username"] . "' rightID='" . $row["GroupID"] . "'><i class='fas fa-edit'></i><div></td>
                            <td class='icontd'><div class='user-delBtn iconButton' value='" . $row["Username"] . "'><i class='fas fa-trash-alt'></i><div></td></tr>";
                }
            }
        ?>

    </table>

    <button id="newUserButton" class="buttonStyle">Neuen Benutzer anlegen</button>

    <!-- Create new user Dialog -->
    <div id="newUserModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>

            <h2>Neuen Benutzer anlegen</h2>
            <br>
            <p>Benutzername / E-Mail Adresse:</p>
            <input id="username" type="text"/>

            <p>Neues Passwort:</p>
            <input id="newPassword" type="password"/>

            <p>Passwort wiederholen:</p>
            <input id="repeatNewPassword" type="password"/>

            <p>Rechtegruppe:</p>
            <select id="rightGroup" required>

                <!-- Load all available user right levels from the database -->
                <?php
                    $sql = "SELECT * FROM user_rights ORDER BY RightLevel";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {

                        while($row = mysqli_fetch_assoc($result)) {
                            echo "<option value='" . $row["ID"] . "'>" . $row["Name"] . "</option>";
                        }
                    }
                ?>
            </select>

            <p id="errorText"></p>

            <div>
                <button id="createUserButton" class="buttonStyle" type="submit">Benutzer anlegen</button>
            </div>

        </div>

    </div>

    <!-- Edit user Dialog -->
    <div id="editUserModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>

            <h2>Benutzer bearbeiten</h2>
            <br>
            <p>Benutzername / E-Mail Adresse:</p>
            <input id="username" type="text"/>

            <p>Passwort:</p>
            <input id="password" type="password"/>

            <p>Rechtegruppe:</p>
            <select id="rightGroup" required>

                <!-- Load all available user right levels from the database -->
                <?php
                    $sql = "SELECT * FROM user_rights ORDER BY RightLevel";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {

                        while($row = mysqli_fetch_assoc($result)) {
                            echo "<option value='" . $row["ID"] . "'>" . $row["Name"] . "</option>";
                        }
                    }
                ?>
            </select>

            <p id="errorText"></p>

            <div>
                <button id="saveUserButton" class="buttonStyle" type="submit">Speichern</button>
            </div>

        </div>

    </div>

</div>
