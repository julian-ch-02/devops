<?php
$db_host = 'devops-db';
$db_user = 'root';
$db_pass = 'root';
$db_name = 'devops';
 
$koneksi = new mysqli($db_host,$db_user,$db_pass,$db_name);
 
if ($koneksi->connect_error) {
   die('Connection Error : '. $koneksi->connect_error).'';
}
?>
