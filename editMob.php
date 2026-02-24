<?php

require_once("./db.php");

header("Content-Type:application/json");

if ($_SERVER['REQUEST_METHOD'] == "PUT") {
    parse_str(file_get_contents('php://input'), $_PUT);
    $sql = "UPDATE mobs SET name = :name, nature = :nature, spawning = :spawning, general_behavior = :general_behavior, drops = :drops, version_release = :version_release, release_date = :release_date WHERE id = :id";
    $stmt = $dbh->prepare($sql);
    $stmt->bindParam("id", $_GET["id"], PDO::PARAM_INT);
    $stmt->bindParam("name", $_PUT["name"]);
    $stmt->bindParam("nature", $_PUT["nature"], PDO::PARAM_INT);
    $stmt->bindParam("spawning", $_PUT["spawning"]);
    $stmt->bindParam("general_behavior", $_PUT["general_behavior"]);
    $stmt->bindParam("drops", $_PUT["drops"]);
    $stmt->bindParam("version_release", $_PUT["version_release"]);
    $stmt->bindParam("release_date", $_PUT["release_date"]);

    $stmt->execute();
}

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