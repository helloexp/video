<?php
namespace app\index\controller;

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
        return $this->fetch();
    }

    // 视频播放
    public function play()
    {
        return $this->fetch();
    }

    // 404
    public function _404()
    {
        return $this->fetch();
    }
}
