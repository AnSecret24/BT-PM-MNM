<template>
  <div class="sidebar navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
      <h5>Quản lý Chuỗi Cửa Hàng Tiện Lợi</h5>
      <a class="navbar-brand" href="#">📋 Danh mục</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="sidebarMenu">
        <ul class="navbar-nav me-auto">
          <li class="nav-item"><a href="#" class="nav-link text-white">📊 Dashboard</a></li>
          <li class="nav-item"><a href="#" class="nav-link text-white">📦 Quản lý hàng hóa</a></li>
          <li class="nav-item"><a href="#" class="nav-link text-white">👥 Nhân viên</a></li>
          <li class="nav-item"><a href="#" class="nav-link text-white">🏪 Cửa hàng</a></li>
          <li class="nav-item"><a href="#" class="nav-link text-white">🎯 Khuyến mãi</a></li>
          <router-link to="/sign-up">⬅️ Đăng xuất</router-link>
        </ul>
      </div>
    </div>
  </div>
</template>

<style>
/* Biến Sidebar thành menu ngang */
.sidebar {
  width: 100%;
  height: 60px; /* Độ cao bằng với Navbar */
}
</style>
