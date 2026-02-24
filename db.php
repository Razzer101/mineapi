<?php

try{
    $dbh = new PDO("mysql:host=localhost;dbname=mineapi", "root", "root");
} catch(PDOException $e) {
    echo "Error! " . $e->message;
}