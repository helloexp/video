<?php
/**
 * type模型
 * User: Administrator
 * Date: 2018/8/25 0025
 * Time: 17:06
 */

namespace app\common\model;

use think\Model;

class Type extends Model
{
    // 模型初始化
    protected static function init()
    {
    }

    // 过滤
    public static function fieldTime()
    {
        return self::field('deleted_time',true);
    }

    /*
     * 链接视频
     */
    static public function linkVideo()
    {
        return self::alias('vt')
            ->join('vd_video v','vt.id = v.type');
    }
}