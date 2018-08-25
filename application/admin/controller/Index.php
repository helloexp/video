<?php
namespace app\admin\controller;

class Index extends Validate
{
	// 首页
    public function index()
    {
        return $this->fetch();
    }

    // 主页
    public function home()
    {
    	return $this->fetch();
    }
}
