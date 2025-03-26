<template>
    <div>
        <Header></Header>
        <h1>Home Page</h1>
    </div>
    <div class="container mt-4">
    <h3 class="mb-3">🛍 Đơn hàng gần đây</h3>
    <table class="table table-striped">
      <thead class="table-dark">
        <tr>
          <th>Mã đơn</th>
          <th>Khách hàng</th>
          <th>Tổng tiền</th>
          <th>Trạng thái</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="order in orders" :key="order.id">
          <td>{{ order.id }}</td>
          <td>{{ order.customer }}</td>
          <td>₫{{ order.total }}</td>
          <td><span :class="getStatusClass(order.status)">{{ order.status }}</span></td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
<script>
import Header from './Header.vue';
export default {
    components: {
        Header
    }
}
</script>

