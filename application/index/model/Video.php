<?php
    /**
     * Created by PhpStorm.
     * User: Administrator
     * Date: 2018/8/25 0025
     * Time: 15:42
     */
namespace app\index\Model;

use think\Model;

class Video extends Model
{
    //主键
    protected $pk = 'id';

    //自动时间戳
    protected $autoWriteTimestamp = true;

    //过滤字段
    static public function taskout(){
        return self::field('updat_time,deleted_time',true);
    }
}