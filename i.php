<?php
header('Access-Control-Allow-Origin: *');

$r = [
	'code' => 1,
	'msg' => '成功'
];

echo json_encode($r);