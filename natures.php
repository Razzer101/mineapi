<?php

require_once("./db.php");

$naturesResults = $dbh->query("SELECT natures.id, natures.title FROM natures");
$natures = $naturesResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $natures;

header("Content-Type:application/json");
echo json_encode($obj);