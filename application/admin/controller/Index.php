<?php
namespace app\admin\controller;

use app\common\model\Admin;
use app\common\model\Statistics;
use think\facade\Request;

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
        $controls = new Controls();

        $this->assign([
            'S' => $controls->S,
        ]);
        return $this->fetch();
    }

    // 实时获取服务器数据
    public function getRealTime()
    {
        $controls = new Controls();

        return json($controls);
    }

    // 数据信息
    public function datainfo() 
    {
        // 获取数据表格
        if (Request::isAjax()) {
            $get = Request::get();
            $data = Statistics::page($get['page'], $get['limit'])->order('create_time', 'desc')->all();

            $result = [
                'code' => 0,
                'msg' => '',
                'count' => Statistics::count(),
                'data' => $data
            ];
            return json($result);
        }

        // 日访问
        $day = Statistics::whereTime('create_time', 'today')->group('browse_ip')->count();
        // 月访问
        $month = Statistics::whereTime('create_time', 'month')->group('browse_ip')->count();
        // 年访问
        $year = Statistics::whereTime('create_time', 'year')->group('browse_ip')->count();
        // 总访问
        $total = Statistics::group('browse_ip')->count();

        // 数据整理
        $result = [
            ['data' => $day, 'class' => 'layui-bg-blue','name' => '日'],
            ['data' => $month, 'class' => '', 'name' => '月'],
            ['data' => $year, 'class' => 'layui-bg-cyan', 'name' => '年'],
            ['data' => $total, 'class' => 'layui-bg-black', 'name' => '总'],
        ];

        $this->assign('data', $result);
        return $this->fetch();
    }

    // 数据信息搜索
    public function datainfosearch() {
        $get = Request::get();

        $data = $get['flow'] == 0
            ? Statistics::page($get['page'], $get['limit'])->order('create_time', 'desc')->all()
            : Statistics::group('browse_ip')->order('create_time', 'desc')->all();

        return json([
            'code' => 0,
            'msg'  => '',
            'count' => $get['flow'] == 0
                ? Statistics::count()
                : Statistics::group('browse_ip')->count(),
            'data' => $data
        ]);
    }

    // 年统计量
    public function yearstatis() 
    {
        $result = [
            'year' => date('Y'),
            'month' => [
                Statistics::section(date('Y-1-1'), date('Y-2-1')),
                Statistics::section(date('Y-2-1'), date('Y-3-1')),
                Statistics::section(date('Y-3-1'), date('Y-4-1')),
                Statistics::section(date('Y-4-1'), date('Y-5-1')),
                Statistics::section(date('Y-5-1'), date('Y-6-1')),
                Statistics::section(date('Y-6-1'), date('Y-7-1')),
                Statistics::section(date('Y-7-1'), date('Y-8-1')),
                Statistics::section(date('Y-8-1'), date('Y-9-1')),
                Statistics::section(date('Y-9-1'), date('Y-10-1')),
                Statistics::section(date('Y-10-1'), date('Y-11-1')),
                Statistics::section(date('Y-11-1'), date('Y-12-1')),
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

    // 密码修改
    public function passwordSave()
    {
        $post = Request::post();
        $admin = Admin::get($this->id);

        // 更改密码
        $admin->password = md5($post['password'].$admin->create_time);
         $info= $admin->save();

        if (empty($info)) {
            return json(['code' => -1, 'msg' => '密码修改失败']);
        }

        return json(['code' => 0, 'msg' => '密码修改成功']);
    }

    // 清除缓存
    public function clearCache()
    {
        $name = Request::get('name');
        return json(cache($name, NULL));
    }
}
