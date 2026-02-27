<?php

$obj = new stdClass;

$obj->all_mobs = "http://$_SERVER[SERVER_NAME]/mineapi/mobs.php";
$obj->one_mob_example = "http://$_SERVER[SERVER_NAME]/mineapi/mobs.php?id=1";
$obj->offset_example = "http://$_SERVER[SERVER_NAME]/mineapi/mobs.php?offset=20";
$obj->limit_example = "http://$_SERVER[SERVER_NAME]/mineapi/mobs.php?limit=50";
$obj->offset_and_limit_example = "http://$_SERVER[SERVER_NAME]/mineapi/mobs.php?offset=10&limit=20";

header("Content-Type:application/json");
echo json_encode($obj);