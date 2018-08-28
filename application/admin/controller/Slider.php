<?php
/**
 * 轮播图设置
 * @671
 * 2018年8月25日14:50:20
 */
namespace app\admin\controller;

use think\facade\Request;

class Slider extends Validate
{
    // 轮播图设置
    public function index()
    {
        // 如果是ajax请求
        if (Request::isAjax()) {
            $data = Request::get();
            $list = \app\common\model\Slider::page($data['page'], $data['limit'])
                ->order('sort', 'asc')
                ->select();

            // 结果
            $result = [
                'code' => 0,
                'msg' => '',
                'data' => $list,
                'count' => \app\common\model\Slider::count()
            ];

            return json($result);
        }

        return $this->fetch();
    }

    // 轮播图更新/添加
    public function save()
    {
        if (Request::isPost()) {
            // 判断是新增还是编辑
            $data = Request::post();
            $slider = new \app\common\model\Slider();

            $sid = !isset($data['id'])
                ? $slider->save($data)
                : $slider->save($data, ['id' => $data['id']]);

            if (empty($sid)) {
                return json([ 'code' => -1, 'msg' => '添加/编辑失败' ]);
            }

            return json(['code' => 0, 'msg' => '添加/编辑成功']);
        }

        $id = Request::get('id');
        $this->assign('id', $id);
        if (isset($id)) {
            // 编辑
            $sliderinfo = \app\common\model\Slider::get($id);
        } else {
            $sliderinfo = [
                'img' => '',
                'jump' => '',
                'sort' => ''
            ];
        }

        $this->assign('sliderinfo', $sliderinfo);
        return $this->fetch();
    }
    
    // 轮播图删除
    public function delete()
    {
        $data = Request::post();
        $map['id'] = $data['id'];

        $list = \app\common\model\Slider::destroy($map);
        $result = $list
            ?$result = ['code' => 1,'msg' => '删除成功']
            :$result =['code' => 0 ,'msg' => '删除失败'];

        return json($result);
    }
}