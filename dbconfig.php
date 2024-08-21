<?php 
// DB credentials.
define('DB_HOST','db');
define('DB_USER','prabhat');
define('DB_PASS','prabhat@10');
define('DB_NAME','prabhat');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS);
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>