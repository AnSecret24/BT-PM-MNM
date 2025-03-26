
<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }

        .container {
            text-align: center;
        }

        .toggle-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }

        .toggle-container a {
            text-decoration: none;
            color: black;
            font-weight: bold;
            margin: 0 10px;
        }

        .toggle-container input {
            width: 40px;
            height: 20px;
            appearance: none;
            background: #ccc;
            border-radius: 20px;
            position: relative;
            cursor: pointer;
            outline: none;
        }

        .toggle-container input:checked {
            background: #000;
        }

        .toggle-container input::before {
            content: "";
            width: 18px;
            height: 18px;
            background: white;
            border-radius: 50%;
            position: absolute;
            top: 1px;
            left: 2px;
            transition: 0.3s;
        }

        .toggle-container input:checked::before {
            left: 20px;
        }

        .login-box {
            width: 300px;
            padding: 20px;
            background: #c4c4c4;
            box-shadow: 5px 5px 0px #222;
            text-align: center;
        }

        .login-box h2 {
            margin-bottom: 20px;
        }

        .input-box {
            display: flex;
            flex-direction: column;
            margin-bottom: 15px;
        }

        .input-box input {
            width: 100%;
            padding: 10px;
            border: none;
            box-shadow: 3px 3px 0px #222;
        }

        .login-btn {
            background: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            box-shadow: 3px 3px 0px #222;
        }

        .login-btn:hover {
            background: #ddd;
        }
</style>

<template>
    <div class="container">
        <div class="toggle-container">
            <a href="">Log in</a>
            <input type="checkbox">
            <router-link to="/sign-up">Sign up</router-link>
        </div>

        <div class="login-box">
            <h2>Log in</h2>
            <div class="input-box">
                <input type="text" v-model="form.email" placeholder="Email">
            </div>
            <div class="input-box">
                <input type="password" v-model="form.email" placeholder="Password">
            </div>
            <button class="login-btn" @click="Login">Let's go!</button>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            form: {
                email: '',
                password: '',
            }
        }
    },
    methods: {
        Login() {
            console.log(this.form);
        }
    }    
}
</script>