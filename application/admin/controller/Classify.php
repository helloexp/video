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
    // 视频分类
    public function video()
    {
        // 如果是ajax请求
        if (Request::isAjax()) {
            $data = Request::get();
            $list = Type::fieldTime()
                ->page($data['page'], $data['limit'])
                ->order('sort', 'asc')
                ->select();

            // 结果
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

    //视频分类修改
    public function update()
    {
        $data = Request::post();

        $data['update_time'] = time();
        $map['id'] = $data['id'];

        $list = Type::where($map)
            ->update($data);

        $result['code'] = $list ? $result['code'] = 1 : $result['code'] = 0;
        return json($result);
    }
    
    //视频分类删除
    public function delete()
    {
        $data = Request::post();
        
        $map['id'] = $data['id'];

        $list = Type::where($map)->useSoftDelete();

        $result['code'] = $list ? $result['code'] = 1 : $result['code'] = 0;

        return json($result);
    }
}