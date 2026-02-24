<?php

require_once("./db.php");

$variantsResults = $dbh->query("SELECT variants.id, variants.name FROM variants");
$variants = $variantsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $variants;

header("Content-Type:application/json");
echo json_encode($obj);