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
        $data = Request::post();

        $type = new Type;
        $info = $type->save($data);

        $result = $info
            ? $result = ['code' => 0 ,'msg' =>'添加成功']
            : $result = ['code' => 1 ,'msg' => '添加失败'] ;

        return json($result);
    }

    // 视频分类修改
    public function update()
    {
        $data = Request::post();

        $data['update_time'] = time();
        $map['id'] = $data['id'];

        $list = Type::where($map)
            ->cache(CACHE_TYPE)
            ->update($data);

        $result = $list
            ?$result = ['code' => 0,'msg' => '更新成功']
            :$result =['code' => 1,'msg' => '更新失败'];
        return json($result);
    }
    
    //视频分类删除
    public function delete()
    {
        $data = Request::post();
        $map['id'] = $data['id'];

        $list = Type::destroy($map);
        $result = $list
            ?$result = ['code' => 1,'msg' => '删除成功']
            :$result =['code' => 0 ,'msg' => '删除失败'];

        return json($result);
    }
}