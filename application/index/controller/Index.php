<?php
namespace app\index\controller;

class Index extends Validate
{
    public function index()
    {
        return $this->fetch();
    }
}
