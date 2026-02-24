<?php

$headers = apache_request_headers();
require_once("./db.php");

if($headers["x-mineapi-key"] != "050206"){
    header("Location: ./");
    exit();
}

$naturesResults = $dbh->query("SELECT natures.id, natures.title FROM natures");
$natures = $naturesResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $natures;

header("Content-Type:application/json");
echo json_encode($obj);