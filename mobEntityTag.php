<?php

$headers = apache_request_headers();
require_once("./db.php");

if($_POST && $headers["x-mineapi-key"] == "050206"){
    $sql = "INSERT INTO mob_entity_tag (mob_id, entity_tag_id) VALUES(:mob_id, :entity_tag_id)";

    $stmt = $dbh->prepare($sql);
    $stmt->bindParam("mob_id", $_POST["mob_id"], PDO::PARAM_INT);
    $stmt->bindParam("entity_tag_id", $_POST["entity_tag_id"], PDO::PARAM_INT);

    $stmt->execute();
}

$mobTagsResults = $dbh->query("SELECT mob_entity_tag.mob_id, mob_entity_tag.entity_tag_id FROM mob_entity_tag");
$mobTags = $mobTagsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $mobTags;

header("Content-Type:application/json");
echo json_encode($obj);