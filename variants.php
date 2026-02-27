<?php

$headers = apache_request_headers();
require_once("./db.php");

if($headers["x-mineapi-key"] != "050206"){
    header("Location: ./");
    exit();
}

if($_POST && $headers["x-mineapi-key"] == "050206"){
    $postsql = "INSERT INTO variants (name) VALUES(:name)";
    $stmt = $dbh->prepare($postsql);
    $stmt->bindParam("name", $_POST["name"]);
    $stmt->execute();
}

if ($_GET["id"] && $_SERVER['REQUEST_METHOD'] == "DELETE" && $headers["x-mineapi-key"] == "050206") {
    $deletesql = "DELETE FROM variants WHERE id = :id";
    $stmt = $dbh->prepare($deletesql);
    $stmt->bindParam("id", $_GET["id"], PDO::PARAM_INT);
    $stmt->execute();
}

$variantsResults = $dbh->query("SELECT variants.id, variants.name FROM variants");
$variants = $variantsResults->fetchAll(PDO::FETCH_ASSOC);

$obj = new stdClass;
$obj->results = $variants;

header("Content-Type:application/json");
echo json_encode($obj);