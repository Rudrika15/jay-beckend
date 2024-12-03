<?php

use App\Http\Controllers\Api\AdminController;
use App\Http\Controllers\Api\ApiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\UserApiController;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\AttendanceController;
use App\Http\Controllers\Api\TaskController;
use Spatie\FlareClient\Api;

// use App\Http\Controllers\Api\AttendanceController;
Route::post('/auth/register', [AuthController::class, 'createUser']);
Route::post('/auth/login', [AuthController::class, 'loginUser']);
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/show-attendance', [AttendanceController::class, 'index']);
    Route::get('/today-attendance', [AttendanceController::class, 'todayattendance']);
    Route::post('/attendance', [AttendanceController::class, 'store']);
    Route::get('/attendance/delete', [AttendanceController::class, 'deleteAttendance']);


    // change password
    Route::post('/auth/change-password', [AuthController::class, 'changePassword']);
    Route::post('/leave/request', [AttendanceController::class, 'leaveRequest']);
    Route::get('/leaves', [AttendanceController::class, 'myLeaves']);
    Route::post('/save-token', [AuthController::class, 'saveToken']);


    // admin routes
    Route::get('/daily', [AdminController::class, 'dailyAttendance']);
    Route::get('/leave-applications', [AdminController::class, 'leaveApplication']);
    Route::post('/leave-approval/{id}', [AdminController::class, 'approveLeave']);
    Route::post('/leave/cancel/{id}', [AdminController::class, 'cancelLeave']);
    Route::post('/report', [AdminController::class, 'report']);

    Route::get('/notifications', [AttendanceController::class, 'getNotifications']);
    //task
    Route::get('/mytask', [TaskController::class, 'myTask']);
    Route::post('/task', [TaskController::class, 'addTask']);
    Route::delete('/deleteTask', [TaskController::class, 'deleteTask']);
    Route::get('/showTask', [TaskController::class, 'showTask']);
    Route::post('/updateTask', [TaskController::class, 'updateTask']);
    Route::get('/allTask', [TaskController::class, 'allTask']);
    Route::get('/todaysLeave', [TaskController::class, 'todaysLeave']);



    Route::get('/client-list', [ApiController::class, 'clientlist']);
    Route::post('/create-call', [ApiController::class, 'createcall']);
    Route::get('/list-call', [ApiController::class, 'getCalllog']);
    Route::get('/team-list', [ApiController::class, 'getTeams']);
    Route::get('/chage-status', [ApiController::class, 'chageStatus']);
    Route::get('/get-call-detail/{id}', [ApiController::class, 'getCallDetail']);

    Route::get('/parts-list', [ApiController::class, 'getParts']);
    ROute::get('call-list', [ApiController::class, 'callList']);
    ROute::get('client-call-list', [ApiController::class, 'clientSideCallList']);


    Route::post('/assign-task', [ApiController::class, 'assignTask']);
    Route::get('/qr-list', [ApiController::class, 'qrList']);
});

Route::get('getVersion', [TaskController::class, 'version']);
