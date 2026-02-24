<?php

$headers = apache_request_headers();
require_once("./db.php");

// POST/Add a new mob
if($_POST && $headers["x-mineapi-key"] == "050206"){
    $postsql = "INSERT INTO mobs (name, nature, spawning, general_behavior, drops, version_release, release_date) VALUES(:name, :nature, :spawning, :general_behavior, :drops, :version_release, :release_date)";

    $stmt = $dbh->prepare($postsql);
    $stmt->bindParam("name", $_POST["name"]);
    $stmt->bindParam("nature", $_POST["nature"], PDO::PARAM_INT);
    $stmt->bindParam("spawning", $_POST["spawning"]);
    $stmt->bindParam("general_behavior", $_POST["general_behavior"]);
    $stmt->bindParam("drops", $_POST["drops"]);
    $stmt->bindParam("version_release", $_POST["version_release"]);
    $stmt->bindParam("release_date", $_POST["release_date"]);

    $stmt->execute();
}

// Check mob count
$count = $dbh->query("SELECT count(id) FROM mobs")->fetchColumn();

// Create limit and offset
if($_GET["limit"]){
    $limit = $_GET["limit"];
} else {
    $limit = 10;
}

if($_GET["offset"]){
    $offset = $_GET["offset"];
} else {
    $offset = 0;
}

// GET all mobs
$mobsResult = $dbh->query("SELECT mobs.id, mobs.name FROM mobs LIMIT $limit OFFSET $offset");
$mobs = $mobsResult->fetchAll(PDO::FETCH_ASSOC);

foreach($mobs as &$mob){
    $mob["url"] = "http://$_SERVER[SERVER_NAME]/mineapi/mobs.php?id=" . $mob["id"];
}

$obj = new stdClass;
$obj->count = $count;
$obj->results = $mobs;

header("Content-Type:application/json");
if(!$_GET["id"]){
    echo json_encode($obj);
} else {
    // PATCH/edit a mob
    if ($_SERVER['REQUEST_METHOD'] == "PATCH" && $headers["x-mineapi-key"] == "050206") {
        parse_str(file_get_contents('php://input'), $_PATCH);
        $sql = "UPDATE mobs SET ";
        foreach($_PATCH as $key => $value){
            $sql .= "$key = :$key";
            if(end($_PATCH) != $value){
                $sql .= ", ";
            }
        }
        $sql .= " WHERE id = :id";

        $stmt = $dbh->prepare($sql);
        $stmt->bindParam("id", $_GET["id"], PDO::PARAM_INT);
        foreach($_PATCH as $key => $value){
            if($key == "name"){
                $stmt->bindParam("$key", $_PATCH["$key"]);
            }
            if($key == "nature"){
                $stmt->bindParam("$key", $_PATCH["$key"], PDO::PARAM_INT);
            }
            if($key == "spawning"){
                $stmt->bindParam("$key", $_PATCH["$key"]);
            }
            if($key == "general_behavior"){
                $stmt->bindParam("$key", $_PATCH["$key"]);
            }
            if($key == "drops"){
                $stmt->bindParam("$key", $_PATCH["$key"]);
            }
            if($key == "version_release"){
                $stmt->bindParam("$key", $_PATCH["$key"]);
            }
            if($key == "release_date"){
                $stmt->bindParam("$key", $_PATCH["$key"]);
            }
        }

        $stmt->execute();
    }

    // GET one mob
    $singleMobResult = $dbh->query("SELECT mobs.name, natures.title as nature, mobs.spawning, mobs.general_behavior, mobs.drops, mobs.version_release, mobs.release_date FROM mobs INNER JOIN natures on natures.id = mobs.nature WHERE mobs.id = $_GET[id]");
    $singleMob = $singleMobResult -> fetchAll(PDO::FETCH_ASSOC);

    $tagsResult = $dbh->query("SELECT entity_tags.tag as tag_name, entity_tags.info FROM mobs JOIN mob_entity_tag ON mob_entity_tag.mob_id = mobs.id JOIN entity_tags ON entity_tags.id = mob_entity_tag.entity_tag_id WHERE mobs.id = $_GET[id]");
    $tags = $tagsResult -> fetchAll(PDO::FETCH_ASSOC);

    $variantsResult = $dbh->query("SELECT variants.name as variant_name FROM mobs JOIN mob_variant ON mob_variant.mob_id = mobs.id JOIN variants ON variants.id = mob_variant.variant_id WHERE mobs.id = $_GET[id]");
    $variants = $variantsResult -> fetchAll(PDO::FETCH_ASSOC);

    foreach($singleMob as &$sMob){
        $sMob = [
            "name" => $sMob["name"],
            "nature" => $sMob["nature"],
            "spawning" => $sMob["spawning"],
            "general_behavior" => $sMob["general_behavior"],
            "drops" => $sMob["drops"],
            "variants" => $variants,
            "version_release" => $sMob["version_release"],
            "release_date" => $sMob["release_date"],
            "tags" => $tags
        ];
    }

    $singleMobObj = new stdClass;
    $singleMobObj = $singleMob;
    echo json_encode($singleMobObj);

    // DELETE/slet mob
    if ($_SERVER['REQUEST_METHOD'] == "DELETE") {
        $sql = "DELETE FROM mobs WHERE id = :id";
        $stmt = $dbh->prepare($sql);
        $stmt->bindParam("id", $_GET["id"], PDO::PARAM_INT);
        $stmt->execute();
    }
}