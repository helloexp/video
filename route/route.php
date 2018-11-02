<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

Route::get('think', function () {
    return 'hello,ThinkPHP5!';
});

Route::get('hello/:name', 'index/hello');

// 路由定义
// 404 路由设置, /404
Route::rule('404', 'index/index/_404');

// 播放器 /play
Route::rule('play', 'index/index/play');

// 分类路由 /category
Route::rule('category', 'index/index/category');

// 搜索
Route::rule('search', 'index/index/search');

// 更多
Route::rule('more', 'index/index/more');

return [
];
