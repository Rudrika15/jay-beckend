<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" type="image/x-icon" href="{{ asset('img/final-logo-JayInfo.jpg') }}" alt="faviconImg.png">
    <title>Jay Infotech</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Custom fonts for this template-->
    <link href="{{ asset('assets/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{ asset('assets/css/sb-admin-2.min.css') }}" rel="stylesheet">
    {{-- sweet alert css --}}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>




</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand bg-white d-flex border-right align-items-center justify-content-center"
                href="{{ route('home') }}">
                {{-- <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div> --}}

                <img src="{{ asset('img/logo-2.jpg') }}" class="img-fluid" alt="">
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('home') }}">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            {{-- <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Components</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>
                </div>
            </li> --}}

            <li class="nav-item active">
                <a class="nav-link" href="{{ route('users.index') }}">
                    <i class="fas fa-fw fa-users"></i>
                    <span>Users</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('product.index') }}">
                    <i class="fas fa-fw fa-boxes"></i>
                    <span>Products </span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('parts.index') }}">
                    <i class="fas fa-fw fa-camera"></i>
                    <span>Parts </span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('qr.index') }}">
                    <i class='fas fa-qrcode'></i>
                    <span>Qr </span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('team.index') }}">
                    <i class="fas fa-fw fa-users"></i>
                    <span>Teams </span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="{{ route('roles.index') }}">
                    <i class="fas fa-user-check"></i>
                    <span>Roles</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="{{ route('report.display') }}">
                    <i class="fas fa-fw fa-file"></i>
                    <span>Reports</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('notification.index') }}">
                    <i class="fas fa-fw fa-bell"></i>
                    <span>Notification</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('leave.report') }}">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Leave reports</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('call.report') }}">
                    <i class="fas fa-fw fa-file"></i>
                    <span>Staff Call Report</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('client.call.report') }}">
                    <i class="fas fa-fw fa-file"></i>
                    <span>Client Call Report</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('version.index') }}">
                    <i class="fas fa-fw fa-code-branch"></i>
                    <span>App Version</span></a>
            </li>


            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>



        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <div class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        {{-- <h3> @yield('title') </h3> --}}
                    </div>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span
                                    class="mr-2 d-none d-lg-inline text-gray-600 h5 pt-2">{{ Auth::user()->name }}</span>
                                {{-- <img class="img-profile rounded-circle" src="{}"> --}}
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">

                                <a class="dropdown-item" href="{{ route('logout') }}"
                                    onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                    class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <div class="container-fluid">
                    {{-- <div class="d-flex justify-content-end">
                        @if (session('success'))
                            <div class="toast" role="alert" aria-live="assertive" data-bs-delay="10000"
                                aria-atomic="true">
                                <div class="toast-body text-white bg-success">
                                    {{ session('success') }}
                                </div>
                            </div>
                        @endif


                    </div> --}}
                    @yield('content')
                </div>

            </div>
            <!-- End of Main Content -->

            {{-- <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer --> --}}

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>


    {{-- <script>
        document.addEventListener('DOMContentLoaded', function() {
            var toastElement = document.querySelector('.toast');
            if (toastElement) {
                var toast = new bootstrap.Toast(toastElement);
                toast.show();

            }
        });
    </script> --}}






    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('assets/vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{ asset('assets/vendor/jquery-easing/jquery.easing.min.js') }}"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{ asset('assets/js/sb-admin-2.min.js') }}"></script>

    <!-- Page level plugins -->
    <script src="{{ asset('assets/vendor/chart.js/Chart.min.js') }}"></script>

    <!-- Page level custom scripts -->
    <script src="{{ asset('assets/js/demo/chart-area-demo.js') }}"></script>
    <script src="{{ asset('assets/js/demo/chart-pie-demo.js') }}"></script>
    <!-- Include SweetAlert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        $(document).ready(function() {
            $('.delete-btn').on('click', function(e) {
                e.preventDefault(); // Prevent the default link behavior

                // Fetch the URL for deletion
                var deleteUrl = $(this).attr('href');
                if (!deleteUrl) {
                    console.error(
                        'Delete URL is undefined. Please check the href attribute of the button.');
                    return;
                }

                // Show SweetAlert confirmation
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!',
                    cancelButtonText: 'Cancel'
                }).then(function(result) {
                    if (result.isConfirmed) { // SweetAlert result for confirmation
                        window.location.href = deleteUrl;
                    }
                });
            });
        });
    </script>





</body>

</html>
