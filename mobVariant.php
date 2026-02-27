<?php

$headers = apache_request_headers();
require_once("./db.php");

if($headers["x-mineapi-key"] != "050206"){
    header("Location: ./");
    exit();
}

if($_POST && $headers["x-mineapi-key"] == "050206"){
    $sql = "INSERT INTO mob_variant (mob_id, variant_id) VALUES(:mob_id, :variant_id)";
    $stmt = $dbh->prepare($sql);
    $stmt->bindParam("mob_id", $_POST["mob_id"], PDO::PARAM_INT);
    $stmt->bindParam("variant_id", $_POST["variant_id"], PDO::PARAM_INT);
    $stmt->execute();
}

if ($_GET["id"] && $_SERVER['REQUEST_METHOD'] == "PATCH" && $headers["x-mineapi-key"] == "050206") {
    parse_str(file_get_contents('php://input'), $_PATCH);
    $patchsql = "UPDATE mob_variant SET ";
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
        if($key == "variant_id"){
            $stmt->bindParam("$key", $_PATCH["$key"], PDO::PARAM_INT);
        }
    }
    $stmt->execute();
}

if ($_GET["id"] && $_SERVER['REQUEST_METHOD'] == "DELETE" && $headers["x-mineapi-key"] == "050206") {
    $deletesql = "DELETE FROM mob_variant WHERE id = :id";
    $stmt = $dbh->prepare($deletesql);
    $stmt->bindParam("id", $_GET["id"], PDO::PARAM_INT);
    $stmt->execute();
}

$mobvariantsResults = $dbh->query("SELECT mob_variant.id, mob_variant.mob_id, mob_variant.variant_id FROM mob_variant");
$mobvariants = $mobvariantsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $mobvariants;

header("Content-Type:application/json");
echo json_encode($obj);