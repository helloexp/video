<?php
/**
 * 视频分类
 * @671
 * 2018年8月25日14:50:20
 */
namespace app\admin\controller;

use app\common\model\Type;
use think\facade\Request;

class Classify extends Validate
{
    // 首页
    public function index()
    {
        // 如果是ajax请求
        if (Request::isAjax()) {
            $data = Request::get();
            $list = Type::fieldTime()
                ->page($data['page'], $data['limit'])
                ->order('sort', 'asc')
                ->select();

            $result = [
                'code' => 0,
                'msg' => '',
                'data' => $list,
                'count' => Type::count()
            ];

            return json($result);
        }

        return $this->fetch();
    }

    // 添加分类
    public function add()
    {
        return $this->fetch();
    }
}