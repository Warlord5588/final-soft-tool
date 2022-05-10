<template>
  <div id="app">
    <div>
      <h1>TABLE INFORMATION MOCKUP DATABASE</h1>
    </div>
    <!-- ตาราง -->
    <div class="table">
      <table>
        <thead>
          <tr>
            <th>Register ID</th>
            <th>Telephone</th>
            <th>OTP</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="register in registers" :key= "register.register_id">
            <th>{{register.register_id}}</th>
            <td>{{register.telephone}}</td>
            <td>{{register.otp_number}}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data(){
    return{
    registers:[]
    }
  },
  mounted() {
    axios
      .get("http://localhost:5000")
      .then((response) => {
        console.log(response)
        this.registers= response.data.rows
        });

  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
table{
  margin-left: auto;
  margin-right: auto;
  text-align: center;
  border: solid;
}
</style>
