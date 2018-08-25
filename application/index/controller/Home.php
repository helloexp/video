<?php
namespace app\index\Controller;

use app\common\model\Video;
use app\common\model\Type;
use app\common\model\Recommend;
use think\facade\Request;

class Home extends Validate
{
    //首页分类
    public function classify()
    {
        $result = Type::fieldTime()->select();
        return json($result);
    }

    //首页搜索
    public function seach()
    {
        $data = Request::get();
        $result = Video::taskout()
            ->where('title','like','%'.$data['title'].'%')
            ->select();

        return json($result);
    }

    //特别推荐
    public function recommend()
    {
        $result = Recommend::linkVideo()->select();
        return json($result);
    }

    //最新视频
    public function newVideo()
    {
        $result['count'] = Video::count();
        $result['data'] = Video::taskout()
            ->order('create_time','desc')
            ->limit(8)
            ->select();

        return json($result);
    }

    //热门电影
    public function hotVideo()
    {
        $result['count'] = Video::count();
        $result['data'] =Video::taskout()
            ->order('watch_count','desc')
            ->limit(8)
            ->select();
        return json($result);
    }

    //分类电影
    public function type()
    {
        $data = Request::get();
        $map['vt.id'] = $data['id'];
        $result['data'] = Type::linkVideo()
            ->where($map)
            ->select();
        return json($result);
    }
}