<?php

require_once("./db.php");

if($_POST){
    $sql = "INSERT INTO mob_variant (mob_id, variant_id) VALUES(:mob_id, :variant_id)";

    $stmt = $dbh->prepare($sql);
    $stmt->bindParam("mob_id", $_POST["mob_id"], PDO::PARAM_INT);
    $stmt->bindParam("variant_id", $_POST["variant_id"], PDO::PARAM_INT);

    $stmt->execute();
}

$mobvariantsResults = $dbh->query("SELECT mob_variant.mob_id, mob_variant.variant_id FROM mob_variant");
$mobvariants = $mobvariantsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $mobvariants;

header("Content-Type:application/json");
echo json_encode($obj);