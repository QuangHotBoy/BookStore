<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
        <a href="/admin/thongke" class="logo d-flex align-items-center"><span
            class="d-none d-lg-block text-uppercase">Book Store</span>
        </a> <i class="fa-solid fa-bars-staggered toggle-sidebar-btn"
            style="font-size: 25px;"></i>
    </div>
    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST"
            action="#">
            <input type="text" name="query" placeholder="Tìm kiếm ...">
            <button type="submit" title="Search">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
    </div>
    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">
            <li class="nav-item d-block d-lg-none"><a
                class="nav-link nav-icon search-bar-toggle " href="#"> <i
                    class="fa-solid fa-magnifying-glass"></i>
            </a></li>

            <li class="nav-item dropdown pe-3"><a
                class="nav-link nav-profile d-flex align-items-center pe-0"
                href="#" data-bs-toggle="dropdown"> <img
                    src="/icon/avatarNEW.png" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">${username.fullname}</span>
            </a>

                <ul
                    class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>${username.email}</h6> <span>Admin</span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li><a class="dropdown-item d-flex align-items-center"
                        href=""> <i class="fa-solid fa-circle-user"></i> <span>Trang
                                Cá Nhân</span>
                    </a></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li><a class="dropdown-item d-flex align-items-center"
                        href=""> <i class="fa-solid fa-user-gear"></i> <span>Cài
                                Đặt</span>
                    </a></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li><a class="dropdown-item d-flex align-items-center"
                        href=""> <i class="fa-solid fa-circle-question"></i> <span>Cần
                                Hỗ Trợ ?</span>
                    </a></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li><a class="dropdown-item d-flex align-items-center"
                        href="/account/logout"> <i
                            class="fa-solid fa-arrow-right-from-bracket"></i> <span>Đăng
                                Xuất</span>
                    </a></li>

                </ul></li>
        </ul>
    </nav>
</header>

<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link " href="/admin/thongke">
                <i class="fa-regular fa-clipboard"></i>
                <span>Thống Kê</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="fa-solid fa-clock"></i><span>Sản Phẩm</span>
                <i class="fa-solid fa-caret-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/product/addproduct">
                        <i class="fa-solid fa-caret-right" style="font-size: 15px;"></i><span>Thêm Sản Phẩm</span>
                    </a>
                </li>
                <li>
                    <a href="/product/UpdateProduct">
                        <i class="fa-solid fa-caret-right" style="font-size: 15px;"></i><span>Cập Nhật Sản Phẩm</span>
                    </a>
                </li>
            </ul>
        </li>


        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="fa-solid fa-table-list"></i><span>Danh Sách</span>
                <i class="fa-solid fa-caret-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/product/listproduct">
                        <i class="fa-solid fa-caret-right" style="font-size: 15px;"></i><span>Danh Sách Sản Phẩm</span>
                    </a>
                </li>
            </ul>
        </li>

        

        <hr>

        <li class="nav-item"><a class="nav-link collapsed"
            href="/home/profile"> <i class="fa-solid fa-circle-user"></i> <span>Trang
                    Cá Nhân</span>
        </a></li>
    </ul>
</aside>