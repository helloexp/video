<?php
namespace app\index\controller;

use think\facade\Request;

class Index extends Validate
{
    // 首页
    public function index()
    {
        return $this->fetch();
    }

    // 类别
    public function category()
    {
        $data = Request::get();

        $this->assign('data', $data);

        return $this->fetch();
    }

    // 视频播放
    public function play()
    {
        $data = Request::get();
        $this->assign('data', $data);

        return $this->fetch();
    }

    // 404
    public function _404()
    {
        return $this->fetch();
    }
}
