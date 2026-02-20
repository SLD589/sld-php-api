<?php
header('Content-Type: text/plain; charset=utf-8');

// 从URL中获取参数
$id = isset($_GET['id']) ? $_GET['id'] : '';

// 这里是你的核心逻辑，示例：返回Base64编码的结果
if ($id) {
    $response_data = "你查询的信息是: " . $id;
    echo base64_encode($response_data);
} else {
    echo "缺少参数";
}
?>
