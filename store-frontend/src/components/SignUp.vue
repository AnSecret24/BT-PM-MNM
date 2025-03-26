<style >
body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f4f4f4;
    margin: 0;
}

.container {
    text-align: center;
}

.toggle {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 20px;
}

.toggle a {
    text-decoration: none;
    color: black;
    font-weight: bold;
    margin-right: 10px;
}

.toggle span {
    font-weight: bold;
    margin-left: 10px;
}

/* Custom Switch Button */
.switch {
    position: relative;
    display: inline-block;
    width: 40px;
    height: 20px;
}

.switch input {
    opacity: 0;
    width: 0;
    height: 0;
}

.slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: white;
    border: 2px solid black;
    border-radius: 20px;
}

.slider:before {
    position: absolute;
    content: "";
    height: 14px;
    width: 14px;
    left: 3px;
    bottom: 1px;
    background-color: black;
    border-radius: 50%;
    transition: 0.3s;
}

input:checked + .slider:before {
    transform: translateX(18px);
}

/* Form Box */
.form-box {
    background: #d3d3d3;
    padding: 20px;
    box-shadow: 5px 5px black;
    border-radius: 5px;
    width: 300px;
}

h2 {
    margin-bottom: 20px;
}

input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 2px solid black;
    border-radius: 5px;
    font-size: 16px;
    box-shadow: 4px 4px black;
}

button {
    width: 100%;
    padding: 10px;
    background-color: white;
    color: black;
    border: 2px solid black;
    border-radius: 5px;
    font-size: 18px;
    font-weight: bold;
    cursor: pointer;
    margin-top: 10px;
    box-shadow: 4px 4px black;
}

button:hover {
    background-color: lightgray;
}
</style>
<template>
    <div class="container">
        <div class="toggle">
            <router-link to="/log-in">Log in</router-link>
            <label class="switch">
                <input type="checkbox" checked>
                <span class="slider"></span>
            </label>
            <span>Sign up</span>
        </div>
        <div class="form-box">
            <h2>Sign up</h2>
            <input type="text" v-model="form.name"  placeholder="Name">
            <input type="email" v-model="form.email" placeholder="Email">
            <input type="password" v-model="form.password" placeholder="Password">
            <button @click="SignUp()">Confirm!</button>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            form: {
                name: '',
                email: '',
                password: '',
            }
        }
    },
    methods: {
        SignUp() {
            console.log(this.form);
        }
    }    
}
</script>

