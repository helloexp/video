<?php
namespace app\admin\controller;

class Index extends Validate
{
    public function index()
    {
        return $this->fetch();
    }
}
