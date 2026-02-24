<?php

$headers = apache_request_headers();
require_once("./db.php");

if($headers["x-mineapi-key"] != "050206"){
    header("Location: ./");
    exit();
}

$tagsResults = $dbh->query("SELECT entity_tags.id, entity_tags.tag FROM entity_tags");
$tags = $tagsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $tags;

header("Content-Type:application/json");
echo json_encode($obj);