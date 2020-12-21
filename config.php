<?php
$connection = new mysqli("localhost","root","","dropdown");
if (! $connection){
    die("Error in connection".$connection->connect_error);
}