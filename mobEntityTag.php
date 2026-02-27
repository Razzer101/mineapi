<?php

$headers = apache_request_headers();
require_once("./db.php");

if($headers["x-mineapi-key"] != "050206"){
    header("Location: ./");
    exit();
}

if($_POST && $headers["x-mineapi-key"] == "050206"){
    $sql = "INSERT INTO mob_entity_tag (mob_id, entity_tag_id) VALUES(:mob_id, :entity_tag_id)";
    $stmt = $dbh->prepare($sql);
    $stmt->bindParam("mob_id", $_POST["mob_id"], PDO::PARAM_INT);
    $stmt->bindParam("entity_tag_id", $_POST["entity_tag_id"], PDO::PARAM_INT);
    $stmt->execute();
}

if ($_GET["id"] && $_SERVER['REQUEST_METHOD'] == "PATCH" && $headers["x-mineapi-key"] == "050206") {
    parse_str(file_get_contents('php://input'), $_PATCH);
    $patchsql = "UPDATE mob_entity_tag SET ";
    foreach($_PATCH as $key => $value){
        $patchsql .= "$key = :$key";
        if(end($_PATCH) != $value){
            $patchsql .= ", ";
        }
    }
    $patchsql .= " WHERE id = :id";
    
    $stmt = $dbh->prepare($patchsql);
    $stmt->bindParam("id", $_GET["id"], PDO::PARAM_INT);
    foreach($_PATCH as $key => $value){
        if($key == "mob_id"){
            $stmt->bindParam("$key", $_PATCH["$key"], PDO::PARAM_INT);
        }
        if($key == "entity_tag_id"){
            $stmt->bindParam("$key", $_PATCH["$key"], PDO::PARAM_INT);
        }
    }
    $stmt->execute();
}

if ($_GET["id"] && $_SERVER['REQUEST_METHOD'] == "DELETE" && $headers["x-mineapi-key"] == "050206") {
    $deletesql = "DELETE FROM mob_entity_tag WHERE id = :id";
    $stmt = $dbh->prepare($deletesql);
    $stmt->bindParam("id", $_GET["id"], PDO::PARAM_INT);
    $stmt->execute();
}

$mobTagsResults = $dbh->query("SELECT mob_entity_tag.id, mob_entity_tag.mob_id, mob_entity_tag.entity_tag_id FROM mob_entity_tag");
$mobTags = $mobTagsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $mobTags;

header("Content-Type:application/json");
echo json_encode($obj);