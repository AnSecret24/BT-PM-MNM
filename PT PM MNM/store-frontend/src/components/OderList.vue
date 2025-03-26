<template>
    <nav class="menu-container">
     <!-- Tiêu đề danh sách đơn hàng -->
        <span class="menu-title">Danh sách đơn hàng</span>
        <!-- Danh sách menu -->
        <ul class="menu">
            <li><a href="#">Sản Phẩm</a></li>
            <li><a href="#">Đơn Hàng</a></li>
            <li><a href="#">Doanh Thu</a></li>
            <li><a href="#">Khách Hàng</a></li>
            <li><a href="#">Cửa hàng</a></li>
        </ul>
        <button class="logout-btn">Đăng Xuất</button>
    </nav>

    <div class="order-container">
    <table class="order-table">
      <thead>
        <tr>
          <th>Mã Đơn</th>
          <th>Khách Hàng</th>
          <th>Ngày Đặt</th>
          <th>Tổng Tiền</th>
          <th>Trạng Thái</th>
          <th>Hành Động</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(order, index) in orders" :key="index">
          <td>{{ order.id }}</td>
          <td>{{ order.customer }}</td>
          <td>{{ order.date }}</td>
          <td>{{ order.total }}</td>
          <td>
            <span :class="statusClass(order.status)">{{ order.status }}</span>
          </td>
          <td>
            <button class="btn-view">Xem</button>
            <button class="btn-delete">Xóa</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        menuItems: ["Sản Phẩm", "Đơn Hàng", "Doanh Thu", "Khách Hàng", "Cửa"],
      };
    },
  };
  </script>
  
<style>
/* Nút đăng xuất nhỏ gọn */
.logout-btn {
    background-color: #ff4d4d;
    color: white;
    border: none;
    padding: 6px 10px;  /* Giảm padding */
    font-size: 12px;  /* Giảm kích thước chữ */
    font-weight: bold;
    border-radius: 4px;
    cursor: pointer;
    transition: 0.3s ease;
    display: flex;
    align-items: center;
    justify-content: center; /* Căn giữa nội dung */
    width: auto; /* Để nút có kích thước phù hợp với nội dung */
    min-width: 80px; /* Đặt chiều rộng tối thiểu */
}

/* Hover */
.logout-btn:hover {
    background-color: #cc0000;
}
  /* Định dạng thanh menu */
  .menu-container {
    position: fixed; /* Cố định menu ở trên cùng */
    top: 0;
    left: 0;
    width: 100%;
    background-color: #f0a5c4;
    padding: 15px 50px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    z-index: 1000; /* Đảm bảo menu hiển thị trên các phần khác */
}

.menu-title {
    font-size: 24px;  /* Tăng kích thước chữ */
    font-weight: bold; /* In đậm */
    color: rgb(21, 4, 4);
    margin-right: auto; /* Đẩy menu và ô tìm kiếm sang phải */
    text-transform: uppercase; /* Viết hoa toàn bộ (nếu cần) */
}


  /* Danh sách menu */
  .menu {
    list-style: none;
    display: flex;
    padding: 0;
    margin: 0;
    flex-wrap: nowrap; /* Ngăn menu xuống dòng */
}


.menu li {
    margin-right: 20px; /* Giảm khoảng cách để tránh xuống dòng */
    white-space: nowrap; /* Ngăn chữ bị ngắt dòng */
}

  .menu a {
      text-decoration: none;
      color: rgb(101, 100, 100);
      font-weight: bold;
      padding: 10px 20px;
      transition: background 0.3s;
  }

  .menu a:hover {
      background: rgba(255, 255, 255, 0.3);
      border-radius: 5px;
  }

  
  /* Responsive cho màn hình nhỏ */
  @media screen and (max-width: 768px) {
      .menu-container {
          flex-direction: column;
          text-align: center;
      }

      .menu {
          flex-direction: column;
          width: 100%;
      }

      .menu li {
          margin: 10px 0;
      }

      .search-box {
          margin-top: 10px;
      }
  }
</style>
  