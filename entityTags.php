<?php

require_once("./db.php");

$tagsResults = $dbh->query("SELECT entity_tags.id, entity_tags.tag FROM entity_tags");
$tags = $tagsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $tags;

header("Content-Type:application/json");
echo json_encode($obj);