<template>
    <nav class="menu-container">
        <span class="menu-title">Danh sách đơn hàng</span>
        <ul class="menu">
            <li><a href="#">Sản Phẩm</a></li>
            <li><a href="#">Đơn Hàng</a></li>
            <li><a href="#">Doanh Thu</a></li>
            <li><a href="#">Khách Hàng</a></li>
            <li><a href="#">Cửa Hàng</a></li>
            <router-link to="/sign-up">Đăng xuất</router-link>
        </ul>
    </nav>
</template>

<style>
/* Định dạng container menu */
.menu-container {
    display: flex;
    align-items: center;
    justify-content: space-between; /* Căn giữa các phần tử */
    background-color: #f0a5c4;
    padding: 15px 50px;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

/* Tiêu đề menu */
.menu-title {
    font-size: 20px;
    font-weight: bold;
    color: rgb(21, 4, 4);
    text-transform: uppercase;
    white-space: nowrap; /* Giữ chữ không xuống dòng */
}

/* Danh sách menu */
.menu {
    list-style: none;
    display: flex;
    padding: 0;
    margin: 0;
}

/* Các mục menu */
.menu li {
    margin-left: 20px; /* Khoảng cách giữa các mục */
}

/* Link trong menu */
.menu a {
    text-decoration: none;
    color: rgb(51, 51, 51);
    font-weight: bold;
    padding: 10px 15px;
    border-radius: 5px;
    transition: all 0.3s ease;
}

/* Hover */
.menu a:hover {
    background-color: rgba(255, 255, 255, 0.3);
    color: black;
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
        margin-top: 10px;
    }

    .menu li {
        margin: 5px 0;
    }
}
</style>
<script>
export default {
    methods: {
        Logout() {
            localStorage.removeItem();
            this.$router.push({
                name: "Login"
            })
        }
    }
}
</script>
