<?php
/**
 * recommend 模型
 * User: Administrator
 * Date: 2018/8/25 0025
 * Time: 17:06
 */

namespace app\common\model;

use think\Model;
use think\model\concern\SoftDelete;

class Recommend extends Model
{
    use SoftDelete;
    protected $deleteTime = 'deleted_time';

    /*
     * 过滤字段
     */
    static public function linkVideo()
    {
        return self::alias('vr')
            ->join(['vd_video'=>'v'],'vr.video_id = v.id')
            ->field('vr.id, vr.video_id, v.img, v.title, v.desc');
    }
}