<template>
  <div id="app">
    <table>
      <tbody>
        <tr>
          <th>ID</th>
          <th>name</th>
          <th>email</th>
          <th>created_date</th>
        </tr>
        <tr v-for="e in users" :key="e.id">
          <td>{{ e.id }}</td>
          <td>{{ e.name }}</td>
          <td>{{ e.email }}</td>
          <td>{{ e.created_at }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      users: []
    }
  },
  mounted () {
    axios
      .get('/api/v1/users.json')
      .then(response => (this.users = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>