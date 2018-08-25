<?php
namespace app\admin\Controller;

use think\Controller;

//标签
class Lable extends Controller
{
    //标签列表
    public function list()
    {
        return $this->view->fetch();
    }

    //标签添加
    public function add()
    {
        return $this->fetch();
    }
}
?>