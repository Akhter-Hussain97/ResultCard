<?php
$servername="localhost";
$username="root";
$password="";
$dbname="cardform";
$conn=new mysqli($servername, $username, $password, $dbname);
  if(!$conn){
    echo "Some thing when wrong ";
  }
?>