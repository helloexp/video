<?php
namespace app\index\Controller;

use think\controller;
use think\Db;
use app\index\model\Video;
use app\index\model\Type;
use app\index\model\Recommend;
use think\facade\Request;

class Home extends Validate
{
    //首页分类
    public function classify()
    {
        $result = Type::taskout()->select();
        return json($result);
    }

    //首页查询
    public function seach()
    {
        $data = Request::get();
        $data['title'] = '1';
        $result = Video::
            where('title','like','%'.$data['title'].'%')
            ->select();

        return json($result);
    }

    //特别推荐
    public function recommend()
    {
        $result = Db::table('vd_recommend')
            ->alias('a')
            ->join(['vd_video'=>'v'],'a.video_id = v.id')
            ->field('a.id,a.video_id,v.url,v.img,v.title,v.desc')
            ->select();
        return json($result);
    }

    //最新视频
    public function newVideo()
    {
        $result['count'] = Video::count();
        $result['data'] = Video::order('create_time','desc')
            ->limit(8)
            ->field('type,update_time,deleted_time',true)
            ->select();

        return json($result);
    }

    //热门电影
    public function hotVideo()
    {
        $result['count'] = Db::table('vd_video')->count();
        $result['data'] = Db::table('vd_video')
            ->order('watch_count','desc')
            ->limit(8)
            ->field('type,update_time,deleted_time',true)
            ->select();
        return json($result);
    }

    //分类电影查询
    public function type()
    {
        $data = Request::get();
        $data['id'] = '1';
        $map['vt.id'] = $data['id'];
        $result['data'] = Type::linkeVideo()->where($map)->select();
        return json($result);
    }
}
?>