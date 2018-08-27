<?php
namespace app\admin\controller;

use app\common\model\Type;
use app\common\model\Recommend;
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

    //视频列表搜索 ->排序搜索
    public function seach()
    {
        if(Request::isAjax())
        {
            $data = Request::post();
            $map['type'] = $data['type'];

            //参数 type seach 0 视频上传时间 1 视频喜欢度 2 观看次数
            if($data['seach'] == 0)
            {
                $res = \app\common\model\Video::where($map)
                    ->order('create_time','desc')
                    ->limit($data['page'],$data['limit'])
                    ->select();
            }
            if($data['seach'] ==1)
            {
                $res = \app\common\model\Video::where($map)
                    ->order('fabulous','desc')
                    ->limit($data['page'],$data['limit'])
                    ->select();
            }
            if($data['seach'] ==2)
            {
                $res = \app\common\model\Video::where($map)
                    ->order('watch_count','desc')
                    ->limit($data['page'],$data['limit'])
                    ->select();
            }

            return json($result = [
                'code'=>0,
                'msg'=>'数据请求成功',
                'data'=>$res
            ]);
        }
        return json($result = ['code'=>1,'msg'=>'非法操作']);
    }

    //视频列表操作->删除
    public function delete()
    {
        if(Request::isAjax())
        {
            $data = Request::post();

            $res = \app\common\model\Video::destroy($data);

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

    //视频列表操作 ->是否高清
    public function definition()
    {
        // id , is_hd:0 高清,1 其他
        if(Request::isAjax())
        {
            $data = Request::post();

            $map['id'] = $data['id'];

            //设置高清
            if($data['is_hd'] == 0 )
            {
                $res = \app\common\model\Video::where($map)->update($data);
                if($res)
                {
                    return json($result = ['code' => 0,'msg' =>'设置成功']);
                }
            }

            //设置其他
            if($data['is_hd'] == 1)
            {
                $res = \app\common\model\Video::Where($map)->update($data);
                if($res)
                {
                    return json($result = ['code' => 0,'msg' =>'设置成功']);
                }
            }
        }
        return json($result = ['code' => 1,'msg' =>'设置失败']);
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

            $res = Recommend::revideo()
                ->limit($data['page'],$data['limit'])
                ->select();

            $result = [
                'code' => 0,
                'msg' => '数据请求成功',
                'count' => Recommend::count(),
                'data' => $res,
            ];

            return json($result);

        }
        return $this->fetch();
    }
    //特别推荐操作 -> 删除
    public function redeleted()
    {
        if(Request::isAjax())
        {
            $data = Request::post();
            $res = Recommend::destroy($data);
            if($res)
            {
                return json($result=['code'=>0,'msg'=>'删除成功']);
            }
        }
        return json($result=['code'=>1,'msg'=>'删除失败']);
    }

    // 相关视频
    public function relevant()
    {
        return $this->fetch();
    }

}