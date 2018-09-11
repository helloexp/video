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
                'count' => \app\common\model\Video::where('deleted_time','=',NUll)->count(),
                'data' => $data,
            ];

            return json($result);
        }

        // 分类列
        $typelist = Type::field('id, type')->order('sort', 'asc')->all();
        $this->assign('typelist', $typelist);

        return $this->fetch();
    }

    // 视频列表搜索 ->排序搜索
    public function search()
    {
        if(Request::isAjax())
        {
            $data = Request::get();
            $map = $data['type'] == 'all' ? 0 : [ 'type' => $data['type'] ];
            $type = new Type();

            //参数 type seach 0 视频上传时间 1 视频喜欢度 2 观看次数
            if($data['search'] == 0) {
                $order = 'create_time';

            } elseif($data['search'] ==1) {
                $order = 'fabulous';

            } elseif($data['search'] ==2) {
                $order = 'watch_count';
            }

            // 设置条件
            $where['v.deleted_time'] = NULL;
            $data['type'] == 'all' ? '' : $where['v.type'] = $data['type'];

            $res = $type->searchSort($where, $order)
                ->page($data['page'], $data['limit'])
                ->select();

            return json($result = [
                'code' => 0,
                'msg' => '数据请求成功',
                'count' => \app\common\model\Video::where($map)->count(),
                'data' => $res
            ]);
        }

        return json($result = ['code'=>1,'msg'=>'非法操作']);
    }

    //视频列表操作->删除
    public function delete()
    {
        if(Request::isAjax()) {
            $data = Request::post();
            $res = \app\common\model\Video::destroy($data['id']);

            if($res) {
                $result = [
                    'code' => 0 ,
                    'msg' => '删除成功',
                ];
                return json($result);
            }
        }
        return json($result =['code' => 1,'msg' =>'删除失败']);
    }

    // 视频列表操作->修改
    public function update()
    {
        if (Request::isAjax()) {
            $data = Request::post();
            $map['id'] = $data['id'];
            $res = \app\common\model\Video::where($map)
                ->save($data);

            if($res) {
                $result = [
                    'code' => 0 ,
                    'msg' => '修改成功',
                ];
                return json($result);
            }

            return json($result =['code' => 1,'msg' =>'修改失败']);
        }

        return json($result =['code' => -1,'msg' =>'非法操作']);
    }

    //视频列表操作 ->是否高清
    public function definition()
    {
        // id , is_hd:0 其他, 1 高清(表示高清)  recommend: 0其他，1推荐（表示推荐）
        if(Request::isAjax()) {
            $data = Request::post();
            $map['id'] = $data['id'];

            //设置高清
            $res = \app\common\model\Video::where($map)->update($data);
            if($res) {
                return json($result = ['code' => 0,'msg' =>'设置成功']);
            }

            return json($result = ['code' => 1,'msg' =>'设置失败']);
        }
    }

    // 推荐搜索
    public function recommendSearch()
    {
        $get = Request::get();
        $type = new Type();

        $map = ['recommend'=> 1];
        return json([
            'code' => 0,
            'msg' => '',
            'count' => \app\common\model\Video::where($map)->count(),
            'data' => $type->videoType()->where(['v.recommend'=> 1])->page($get['page'], $get['limit'])->all()
        ]);
    }

    // 视频上传
    public function upload()
    {
        // post提交, 修改与添加
        if (Request::isPost()) {
            $post = Request::post();
            $video = new \app\common\model\Video();
            $rsuccess = ['code' => 0, 'msg' => '添加/修改成功'];
            $rfailed = ['code' => -1, 'msg' => '添加/修改失败'];

            $vid = empty($post['id'])
                ? $video->save($post)
                : $video->save($post, ['id' => $post['id']]);

            return isset($vid) ? json($rsuccess) : json($rfailed);
        }

        // 判断是不是编辑
        $id = Request::get('id');

        // 获取分类列表
        $typelist = Type::field('id, type')->order('sort', 'asc')->all();
        if (!empty($id)) {
            // 表示编辑
            $data = \app\common\model\Video::where([
                'id' => $id
            ])->field('id, title, time, type, is_hd, img, url, desc, recommend')->find();

        } else {
            $data = [
                'id' => '',
                'title' => '',
                'time' => '',
                'type' => '',
                'is_hd' => 0,
                'img' => '',
                'url' => '',
                'desc' => '',
                'recommend' => 0
            ];
        }

        $this->assign([
            'typelist' => $typelist,
            'data' => $data
        ]);

        return $this->fetch();
    }
}