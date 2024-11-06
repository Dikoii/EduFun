<?php

use App\Http\Controllers\NavigationController;
use Illuminate\Support\Facades\Route;

Route::get('/', [NavigationController::class, 'homePage'])->name('homePage');

Route::get('/home', [NavigationController::class, 'homePage'])->name('homes');

Route::get('/category/{category_name}', [NavigationController::class, 'categoryPage'])->name('categoryPage');

Route::get('/aboutUs', [NavigationController::class, 'aboutUsPage'])->name('aboutUs');

Route::get('/courseDetail/{course_id}', [NavigationController::class, 'courseDetailPage'])->name('courseDetailPage');

Route::get('/writers', [NavigationController::class, 'writersPage'])->name('writers');

Route::get('/writerDetail/{writer_id}', [NavigationController::class, 'writerDetailPage'])->name('writerDetailPage');

Route::get('/popular', [NavigationController::class, 'popularPage'])->name('popularPage');