<template>
  <div id="app">
    <div>
      <h1>TABLE INFORMATION STUDENT</h1>
    </div>
    <!-- ตาราง -->
    <div class="table">
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>StudentName</th>
            <th>AGE</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="student in students" :key= "student.student_id">
            <th>{{student.student_id}}</th>
            <td>{{student.student_name}}</td>
            <td>{{student.student_age}}</td>
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
    students:[]
    }
  },
  mounted() {
    axios
      .get("http://localhost:5000")
      .then((response) => {
        console.log(response)
        this.students= response.data.rows
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
