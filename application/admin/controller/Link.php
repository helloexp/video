<?php
/**
 * 友情链接
 * User: Administrator
 * Date: 2018/8/25 0025
 * Time: 15:39
 */

namespace app\admin\controller;

class Link extends Validate
{
    // 链接列表
    public function index()
    {
        return $this->fetch();
    }

    // 链接添加
    public function add()
    {
        return $this->fetch();
    }
}