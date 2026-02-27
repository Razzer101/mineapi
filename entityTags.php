<?php

$headers = apache_request_headers();
require_once("./db.php");

if($headers["x-mineapi-key"] != "050206"){
    header("Location: ./");
    exit();
}

if($_POST && $headers["x-mineapi-key"] == "050206"){
    $postsql = "INSERT INTO entity_tags (tag, info) VALUES(:tag, :info)";

    $stmt = $dbh->prepare($postsql);
    $stmt->bindParam("tag", $_POST["tag"]);
    $stmt->bindParam("info", $_POST["info"]);
    $stmt->execute();
}

if ($_GET["id"] && $_SERVER['REQUEST_METHOD'] == "DELETE" && $headers["x-mineapi-key"] == "050206") {
    $sql = "DELETE FROM entity_tags WHERE id = :id";
    $stmt = $dbh->prepare($sql);
    $stmt->bindParam("id", $_GET["id"], PDO::PARAM_INT);
    $stmt->execute();
}

$tagsResults = $dbh->query("SELECT entity_tags.id, entity_tags.tag FROM entity_tags");
$tags = $tagsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $tags;

header("Content-Type:application/json");
echo json_encode($obj);