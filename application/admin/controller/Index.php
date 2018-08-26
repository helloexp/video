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
        $this->assign('data', $this->amount());

    	return $this->fetch();
    }

    // 控制台
    public function console()
    {
        return $this->fetch();
    }

    // 数据信息
    public function datainfo() 
    {
        return $this->fetch();
    }

    // 年统计量
    public function yearstatis() 
    {
        $result = [
            'year' => date('Y'),
            'month' => [
                Statistics::section(date('Y-1-1'), date('Y-1-31')),
                Statistics::section(date('Y-2-1'), date('Y-2-31')),
                Statistics::section(date('Y-3-1'), date('Y-3-31')),
                Statistics::section(date('Y-4-1'), date('Y-4-31')),
                Statistics::section(date('Y-5-1'), date('Y-5-31')),
                Statistics::section(date('Y-6-1'), date('Y-6-31')),
                Statistics::section(date('Y-7-1'), date('Y-7-31')),
                Statistics::section(date('Y-8-1'), date('Y-8-31')),
                Statistics::section(date('Y-9-1'), date('Y-9-31')),
                Statistics::section(date('Y-10-1'), date('Y-10-31')),
                Statistics::section(date('Y-11-1'), date('Y-11-31')),
                Statistics::section(date('Y-12-1'), date('Y-12-31')),
            ]
        ];

        return json($result);
    }

    // 访问量
    private function amount()
    {
        // 日访问
        $day = Statistics::whereTime('create_time', 'today')->count();
        // 月访问
        $month = Statistics::whereTime('create_time', 'month')->count();
        // 年访问
        $year = Statistics::whereTime('create_time', 'year')->count();
        // 总访问
        $total = Statistics::count();

        // 数据整理
        $result = [
            ['data' => $day, 'class' => 'layui-bg-blue','name' => '日'],
            ['data' => $month, 'class' => '', 'name' => '月'],
            ['data' => $year, 'class' => 'layui-bg-cyan', 'name' => '年'],
            ['data' => $total, 'class' => 'layui-bg-black', 'name' => '总'],
        ];

        return $result;
    }
}
