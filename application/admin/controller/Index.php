<?php
namespace app\admin\controller;

use app\common\model\Statistics;
use think\Request;
use think\Controller;

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

    //访问量
    public function amount()
    {
        //日访问
        $listday = Statistics::whereTime('create_time','today')->count();

        //周访问
        $listweek = Statistics::whereTime('create_time','-7day')->count();

        //月访问
        $listmonth = Statistics::whereTime('create_time','-30day')->count();

        $result = ['code' => 0,
            'data' => [
                'day'=>$listday,
                'week'=>$listweek,
                'month'=>$listmonth,
                'total' =>$listday + $listweek +$listmonth
            ]
        ];
        return json($result);
    }
}
