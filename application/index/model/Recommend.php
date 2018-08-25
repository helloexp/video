<?php
    /**
     * Created by PhpStorm.
     * User: Administrator
     * Date: 2018/8/25 0025
     * Time: 15:42
     */
    namespace app\index\Model;

    use think\Model;

    class Recommend extends Model
    {
        //主键
        protected $pk = 'id';

        //自动时间戳
        protected $autoWriteTimestamp = true;
    }