<?php
namespace app\admin\controller;

use app\common\model\Type;
use think\facade\Request;

//视频管理
class Video extends Validate
{
    // 视频列表
    public function index()
    {
        if(Request::isAjax()) {
            $get = Request::get();
            $type = new Type();

            $data = $type
                ->videoType()
                ->where('v.deleted_time','=',NUll)
                ->page($get['page'], $get['limit'])
                ->select();

            $result = [
                'code' => 0,
                'msg' => '数据请求成功',
                'count' => $type->where('deleted_time','=',NUll)->count(),
                'data' => $data,
            ];

            return json($result);
        }

        return $this->fetch();
    }

    //视频列表操作->删除
    public function delete()
    {
        if(Request::isAjax())
        {
            $data = Request::post();
            $map['id'] = $data['id'];

            $res = \app\common\model\Video::destroy($map);

            if($res)
            {
                $result = [
                    'code' => 0 ,
                    'msg' => '删除成功',
                ];
                return json($result);
            }
        }
        return json($result =['code' => 1,'msg' =>'删除失败']);
    }

    //视频列表操作->修改
    public function update()
    {
        if(Request::isAjax())
        {
            $data = Request::post();
            $map['id'] = $data['id'];

            $res = \app\common\model\Video::where($map)
                ->save($data);

            if($res)
            {
                $result = [
                    'code' => 0 ,
                    'msg' => '修改成功',
                ];
                return json($result);
            }
        }
        return json($result =['code' => 1,'msg' =>'修改失败']);
    }

    // 视频上传
    public function upload()
    {
        if(Request::isAjax())
        {

        }
        return $this->fetch();
    }

    // 特别推荐
    public function recommend()
    {
        if(Request::isAjax())
        {
            $data = Request::get();

            $res = \app\common\model\Recommend::linkVideo()
                ->limit($data['page'],$data['limit'])
                ->select();

            $result = [
                'code' => 0,
                'msg' => '数据请求成功',
                'count' => \app\common\model\Video::taskout()->count(),
                'data' => $res,
            ];

            return json($result);

        }
        return $this->fetch();
    }

    // 相关视频
    public function relevant()
    {
        return $this->fetch();
    }

}