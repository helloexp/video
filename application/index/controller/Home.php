<?php
namespace app\index\Controller;

use app\common\model\Statistics;
use app\common\model\Video;
use app\common\model\Type;
use think\facade\Request;

class Home extends Validate
{
    // 首页分类
    public function classify()
    {
        $result = Type::field('create_time, update_time, deleted_time', true)
            ->order('sort','asc')
            ->select();

        return json($result);
    }

    // 首页搜索
    public function search()
    {
        $data = Request::get();

        $result['code'] = 0;
        $result['msg'] = '成功获取数据';
        $result['count'] = Video::where('title|desc','like','%'.$data['title'].'%')->count();
        $result['data'] = Video::taskout()
            ->where('title|desc','like','%'.$data['title'].'%')
            ->order('create_time', 'desc')
            ->page($data['page'], $data['limit'])
            ->select();

        return json($result);
    }

    // 特别推荐
    public function recommend()
    {
        $result['data'] = Video::taskout()
            ->where('recommend=1')
            ->order('create_time', 'desc')
            ->all();
        return json($result);
    }

    // 最新视频
    public function newVideo()
    {
        $result['data'] = Video::taskout()
            ->order('create_time','desc')
            ->limit(8)
            ->select();

        return json($result);
    }

    // 热门电影
    public function hotVideo()
    {
        $result['data'] =Video::taskout()
            ->order('watch_count','desc')
            ->limit(8)
            ->select();
        return json($result);
    }

    // 分类电影
    public function type()
    {
        $data = Request::get();
        $map['type'] = $data['id'];

        $result['code'] = 0;
        $result['msg']  = "数据获取成功";
        $result['count'] = Video::where($map)->count();
        $result['data'] = Video::where($map)
            ->page($data['page'], $data['limit'])
            ->field('type, step_on, update_time, deleted_time', true)
            ->order('create_time', 'desc')
            ->select();

        return json($result);
    }

    // 电影详情
    public function detailVideo()
    {
        $data = Request::get();

        $map['v.id'] = $data['id'];
        $res = Video::where($map)
            ->alias('v')
            ->join('vd_type t', 't.id = v.type')
            ->field('
            t.type, v.id, v.url, v.img, v.time, v.title, v.desc, v.fabulous, v.step_on, v.watch_count,
            v.is_hd, v.create_time, v.type as vtype
          ')
            ->find();
        
        $result = [
            'code' => 0,
            'msg' => '数据请求成功',
            'data' => $res
        ];
        return json($result);
    }

    // 相关视频
    public function relevant()
    {
        $data = Request::get();
        $map['id'] = $data['id'];

        $type = Video::taskout()->where($map)->value('type');
        $res = Video::taskout()->where('type',$type)->order('create_time', 'desc')->limit(12)->select();

        $result = [
            'code' => 0,
            'msg' => '数据请求成功',
            'data' => $res
        ];
        return json($result);
    }

    // 视频 点赞\踩
    public function comment()
    {
        if(Request::isPost()) {
            // 发 fabulous: 1 点赞, 发 step_on: 1 踩
            $data = Request::post();
            $map['id'] = $data['id'];

            if(isset($data['fabulous'])) {
                $res = Video::where($map)->setInc('fabulous');
                if($res) {
                    $result = [
                        'code' => 0,
                        'msg' => '赞的很华丽' ,
                    ];
                    return json($result);
                }

            } else if(isset($data['step_on'])) {
                $res = Video::where($map)->setInc('step_on');
                if($res) {
                    $result = [
                        'code' => 0,
                        'msg' => '踩了一下' ,
                    ];
                    return json($result);
                }
            }
        }

        return json($result = ['code' =>1,'msg' => '换个姿势试试']);
    }

    // 统计观看次数
    public function countWatch()
    {
        $map['id'] = Request::get();
        Video::where($map)->setInc('watch_count');
    }

    // 浏览网站数据统计
    public function statistics()
    {
        $statistics = new Statistics();
        $statistics->browse_ip = $_SERVER['REMOTE_ADDR'];

        $statistics->save();
    }

    // 获取点赞和踩
    public function getComment()
    {
        $get = Request::get();

        $map['id'] = $get['id'];
        $data = Video::where($map)->field('fabulous, step_on')->find();

        return json($data);
    }
}