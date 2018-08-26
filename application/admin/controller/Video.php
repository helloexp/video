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
                ->page($get['page'], $get['limit'])
                ->select();

            $result = [
                'code' => 0,
                'msg' => '数据请求成功',
                'count' => $type->count(),
                'data' => $data,
            ];

            return json($result);
        }

        return $this->fetch();
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