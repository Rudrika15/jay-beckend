<?php

use App\Http\Controllers\CallReportController;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LeaveController;
use App\Http\Controllers\PartsController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\QrController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\TeamController;
use App\Http\Controllers\TeammemberController;
use App\Http\Controllers\VersionController;
use App\Http\Controllers\VisitorController;
use Illuminate\Support\Facades\Auth;

Route::get('/login', function () {
    return view('auth/login');
});

// Route::get('/', function () {
//     return view('auth/login');
// });

Auth::routes();


Route::group(['middleware' => ['auth', 'isAdmin']], function () {
    Route::get('/admin-home', [HomeController::class, 'index'])->name('home');
    Route::get('/approve/leave/{id}', [HomeController::class, 'leaveApproved'])->name('leave.approve');
    Route::resource('roles', RoleController::class);

    Route::resource('users', UserController::class);

    Route::get('/Report', [ReportController::class, 'display'])->name('report.display');
    Route::get('/notification', [HomeController::class, 'notification'])->name('notification.index');
    Route::post('/notification', [HomeController::class, 'addNotification'])->name('add.notification');
    Route::get('/notification/delete/{id}', [HomeController::class, 'deleteNotification'])->name('delete.notification');
    Route::get('/leave/report', [LeaveController::class, 'index'])->name('leave.report');

    Route::get('/product-list', [ProductController::class, 'index'])->name('product.index');
    Route::get('/product-create', [ProductController::class, 'create'])->name('product.create');
    Route::post('/product-store', [ProductController::class, 'sto4re'])->name('product.store');

    Route::get('/parts-list', [PartsController::class, 'index'])->name('parts.index');
    Route::get('/parts-create', [PartsController::class, 'create'])->name('parts.create');
    Route::post('/parts-store', [PartsController::class, 'store'])->name('parts.store');
    Route::get('/edit/{id?}/{name}', [PartsController::class, 'edit'])->name('parts.edit');
    Route::post('/parts-update', [PartsController::class, 'update'])->name('parts.update');
    Route::get('/delete/{id?}/{name}', [PartsController::class, 'delete'])->name('parts.delete');

    Route::get('/qr-list', [QrController::class, 'index'])->name('qr.index');
    Route::get('/qr-edit/{id?}', [QrController::class, 'edit'])->name('qr.edit');
    Route::post('/qr-update', [QrController::class, 'update'])->name('qr.update');
    Route::get('/qr-delete/{id?}', [QrController::class, 'destroy'])->name('qr.delete');


    // teams routes
    Route::get('/team-list', [TeamController::class, 'index'])->name('team.index');
    Route::get('/team-create', [TeamController::class, 'create'])->name('team.create');
    Route::post('/team-store', [TeamController::class, 'store'])->name('team.store');
    Route::get('/team-delete/{id?}', [TeamController::class, 'destroy'])->name('team.delete');


    //Team members routes
    Route::get('/team-member-list/{id?}', [TeammemberController::class, 'index'])->name('team.member');
    Route::post('/team-member-create', [TeammemberController::class, 'store'])->name('team.member.store');

    Route::get('/call-report', [CallReportController::class, 'callReport'])->name('call.report');
    Route::get('/call-report-client', [CallReportController::class, 'callReportClient'])->name('client.call.report');
    Route::get('/call-detail/{id}', [CallReportController::class, 'callDetail'])->name('call.detail');
    Route::post('/update-payment/{id}', [CallReportController::class, 'updatePayment'])->name('payment.update');
});

Route::get('happy-birthday', [UserController::class, 'wish']);
Route::get('privacy-policy', [UserController::class, 'privacyPolicy']);

//  version Routes

Route::get('version/index', [VersionController::class, 'index'])->name('version.index');
Route::get('version/create', [VersionController::class, 'create'])->name('version.create');
Route::post('version/store', [VersionController::class, 'store'])->name('version.store');
Route::get('version/edit/{id?}', [VersionController::class, 'edit'])->name('version.edit');
Route::post('version/update', [VersionController::class, 'update'])->name('version.update');
Route::get('version/delete/{id?}', [VersionController::class, 'delete'])->name('version.delete');




//visitor routes
Route::get('/', [VisitorController::class, 'homepage'])->name('visitor.home');
Route::get('/about', [VisitorController::class, 'about'])->name('visitor.about');
Route::get('/product', [VisitorController::class, 'product'])->name('visitor.product');
Route::get('/contact', [VisitorController::class, 'contact'])->name('visitor.contact');
Route::get('/terms', [VisitorController::class, 'terms'])->name('visitor.terms');
Route::get('/privacy', [VisitorController::class, 'privacy'])->name('visitor.privacy');
