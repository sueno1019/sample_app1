<template>
  <form @submit.prevent="createUser">
    <div v-if="errors.length != 0">
      <ul v-for="e in errors" :key="e">
        <li><font color="red">{{ e }}</font></li>
      </ul>
    </div>
    <div>
      <label>Name</label>
      <input v-model="user.name" type="text">
    </div>
    <div>
      <label>Email</label>
      <input v-model="user.email" type="email">
    </div>
    <div>
      <label>Password</label>
      <input v-model="user.password" type="password">
    </div>
    <div>
      <label>Password confirmation</label>
      <input v-model="user.password_confirmation" type="password">
    </div>
    <button type="submit">Commit</button>
  </form>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      user: {
        name: '',
        email: '',
        password: '',
        password_confirmation: ''
      },
      errors: ''
    }
  },
  methods: {
    createEmployee: function() {
      axios
        .post('/api/v1/users', this.user)
        .then(response => {
          let e = response.data;
          this.$router.push({ name: 'UserDetailPage', params: { id: e.id } });
        })
        .catch(error => {
          console.error(error);
          if (error.response.data && error.response.data.errors) {
            this.errors = error.response.data.errors;
          }
        });
    }
  }
}
</script>

<style scoped>
</style>