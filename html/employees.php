<?php
$mysqli = new mysqli("localhost", "root", "root", "usersdb");

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$query = "SELECT id, username, email, password, role, created, updated FROM Users";

if ($result = mysqli_query($mysqli, $query)) {

    /* fetch associative array */
    while ($row = mysqli_fetch_assoc($result)) {
        printf ("id.%s username:%s - email %s | password: %s | role: %s | created: %s | updated: %s <br>", $row["id"], $row["username"], $row["email"], $row["password"], $row["role"], $row["created"], $row["updated"]);

}

    /* free result set */
    mysqli_free_result($result);
}

/* close connection */
mysqli_close($link);
?>