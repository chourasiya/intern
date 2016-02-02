<?php
$servername = "localhost";
$username = "sankalp";
$password = "shivam";
$dbname = "sankalp";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// prepare and bind
$stmt = $conn->prepare("INSERT INTO intern (firstname, year, email, collagename, contact) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssss", $firstname, $year, $email, $collagename, $contact);

// set parameters and execute
$firstname = $_POST["fname"];
$year = $_POST["lname"];
$email = $_POST["ename"];
$collagename = $_POST["clgname"];
$contact = $_POST["cname"];
$stmt->execute();

echo "You have been registered successfully.Database entry <br/>";
//$conn1 = mysql_connect($servername, $username, $password);
//mysql_select_db("sankalp", $conn1);
/*$result = mysql_query("SELECT * FROM intern");
while($row = mysql_fetch_array($result))
{
	echo $row['firstname']. " " . $row['year']. " " . $row['email']. " " . $row['collagename']. " " . $row['contact'];
    echo "<br/>";
}
mysql_close($conn);*/
$query = "SELECT * FROM intern";
$result = $conn->query($query);
while($row = $result->fetch_object())
{
	echo $row->firstname. "\t" . $row->year. "\t" . $row->email. "\t" . $row->collagename. "\t" . $row->contact;
    echo "<br/>";
}
$result->close();
$stmt->close();
$conn->close();
?>