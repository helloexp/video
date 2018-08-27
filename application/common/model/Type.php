<?php
/**
 * type模型
 * User: Administrator
 * Date: 2018/8/25 0025
 * Time: 17:06
 */

namespace app\common\model;

use think\Model;
use think\model\concern\SoftDelete;

class Type extends Model
{
    // 软删除
    use SoftDelete;
    protected $deleteTime = 'deleted_time';

    // 过滤
    public static function fieldTime()
    {
        return self::field('deleted_time',true);
    }

    // 视频分类
    public function videoType()
    {
        return $this->alias('t')
            ->join('vd_video v', 't.id=v.type')
            ->field('
                v.id, v.time, v.title, v.fabulous, v.step_on, v.watch_count, v.is_hd, v.create_time,
                v.update_time, t.type
            ')
            ->order('create_time', 'desc');
    }

    // 搜索排序
    public function searchSort($where, $order)
    {
        return $this->alias('t')
            ->join('vd_video v', 't.id=v.type')
            ->field('
                v.id, v.time, v.title, v.fabulous, v.step_on, v.watch_count, v.is_hd, v.create_time,
                v.update_time, t.type
            ')
            ->where($where)
            ->order($order, 'desc');
    }
}