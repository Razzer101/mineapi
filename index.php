<?php

$obj = new stdClass;

$obj->all_mobs = "http://$_SERVER[SERVER_NAME]/mineapi/mobs.php";
$obj->one_mob_example = "http://$_SERVER[SERVER_NAME]/mineapi/mobs.php?id=1";

header("Content-Type:application/json");
echo json_encode($obj);