<?php
namespace app\index\Controller;

use app\common\model\Slider;
use think\Controller;
use think\facade\Request;

class Index extends Controller
{
    // 首页
    public function index()
    {
        // 获取轮播图
        $slider = Slider::field('img, mimg, jump')
            ->order('sort', 'asc')
            ->cache(CACHE_SLIDER)
            ->select();

        $this->assign('slider', $slider);
        return $this->fetch();
    }

    // 类别
    public function category()
    {
        $data = Request::get();
        $this->assign('data', $data);
        return $this->fetch();
    }

    // 视频播放
    public function play()
    {
        $data = Request::get();
        $this->assign('data', $data);
        return $this->fetch();
    }

    // 搜索页面
    public function search()
    {
        $data = Request::get();
        $this->assign('data', $data);
        return $this->fetch();
    }

    // 更多
    public function more()
    {
        $data  = Request::get();
        if ($data['more'] == 1) $data['title'] = '特别推荐';
        elseif ($data['more'] == 2) $data['title'] = '最新视频';
        elseif ($data['more'] == 3) $data['title'] = '热门影视';
        else return redirect('/404');
        
        $this->assign('data', $data);
        return $this->fetch();
    }

    // 404
    public function _404()
    {
        return $this->fetch();
    }
}
