<?php
namespace app\admin\controller;

//视频管理
class Video extends Validate
{
    // 视频列表
    public function index()
    {
        return $this->fetch();
    }

    // 视频上传
    public function upload()
    {
        return $this->fetch();
    }

    // 特别推荐
    public function recommend()
    {
        return $this->fetch();
    }

    // 相关视频
    public function relevant()
    {
        return $this->fetch();
    }
}