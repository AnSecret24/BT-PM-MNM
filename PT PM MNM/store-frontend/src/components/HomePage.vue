<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
header {
    background: #ff6600;
    color: white;
    padding: 15px;
    text-align: center;
    font-size: 24px;
}
nav {
    display: flex;
    justify-content: center;
    gap: 20px;
    padding: 10px;
    background: #fff4e6;
}
nav a {
    text-decoration: none;
    color: #ff6600;
    font-weight: bold;
}
.banner {
    background: url('banner.jpg') no-repeat center center;
    background-size: cover;
    height: 300px;
    text-align: center;
    color: white;
    font-size: 32px;
    display: flex;
    align-items: center;
    justify-content: center;
}
.products {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding: 20px;
    gap: 15px;
}
.product {
    border: 1px solid #ddd;
    padding: 10px;
    width: 200px;
    text-align: center;
    background: #fff;
}
.product img {
    width: 100%;
    height: 150px;
}
.about {
    text-align: center;
    padding: 20px;
    background: #fff4e6;
}
footer {
    text-align: center;
    padding: 10px;
    background: #333;
    color: white;
}
</style>
<template>
    <div id="app">
        <header>
            Chuỗi Cửa Hàng Tiện Lợi
        </header>
        
        <nav>
            <a href="#">Trang Chủ</a>
            <a href="#">Sản Phẩm</a>
            <a href="#">Hệ Thống Cửa Hàng</a>
            <a href="#">Liên Hệ</a>
        </nav>

        <div class="banner">
            Chào mừng đến với hệ thống cửa hàng của chúng tôi!
        </div>

        <div class="products">
            <div class="product" v-for="product in products" :key="product.id">
                <img :src="product.image" :alt="product.name">
                <h3>{{ product.name }}</h3>
                <p>{{ product.price }} VND</p>
            </div>
        </div>

        <div class="about">
            <h2>Về Chúng Tôi</h2>
            <p>Chuỗi cửa hàng tiện lợi với nhiều sản phẩm phong phú, giá cả hợp lý và phục vụ tận tâm.</p>
        </div>

        <footer>
            © 2025 Chuỗi Cửa Hàng Tiện Lợi. All rights reserved.
        </footer>
    </div>

</template>

<script>

</script>


