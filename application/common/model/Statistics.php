<?php
/**
 * statistics 模型
 * User: Administrator
 * Date: 2018/8/25 0025
 * Time: 17:06
 */

namespace app\common\model;

use think\Model;
use think\model\concern\SoftDelete;

class Statistics extends Model
{
    use SoftDelete;
    protected $deleteTime = 'deleted_time';

    // 设置区间
    public static function section($start, $end)
    {
        return self::whereTime('create_time', [$start, $end])->count();
    }
}