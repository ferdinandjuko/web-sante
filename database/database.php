<?php
function getPDO(){
    try {
    $server="localhost";
    $user="root";
    $mdp="";    
    $conn = new PDO("mysql:host=$server;dbname=websante", $user, $mdp);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connected successfully";
    return $conn;

      } catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
      }

}

?>