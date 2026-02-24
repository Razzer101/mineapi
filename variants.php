<?php

$headers = apache_request_headers();
require_once("./db.php");

if($headers["x-mineapi-key"] != "050206"){
    header("Location: ./");
    exit();
}

$variantsResults = $dbh->query("SELECT variants.id, variants.name FROM variants");
$variants = $variantsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $variants;

header("Content-Type:application/json");
echo json_encode($obj);