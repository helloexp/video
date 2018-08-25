<?php
/**
 * video 模型
 * User: Administrator
 * Date: 2018/8/25 0025
 * Time: 17:06
 */

namespace app\common\model;

use think\Model;
use think\model\concern\SoftDelete;

class Video extends Model
{
    use SoftDelete;
    protected $deleteTime = 'deleted_time';

    //过滤字段
    static public function taskout(){
        return self::field('update_time, deleted_time, url, step_on, type',true);
    }
}