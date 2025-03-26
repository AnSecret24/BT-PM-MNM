import { createWebHistory, createRouter }from 'vue-router';
import Home from './components/Home.vue';
import SignUp from './components/SignUp.vue';
import Login from './components/Login.vue';
import OderList from './components/OderList.vue';
import HomePage from './components/HomePage.vue';


const routes = [
    {
        name: 'Home',
        component: Home,
        path: '/',
    },
    {
        name: 'SignUp',
        component: SignUp,
        path: '/sign-up',
    },
    {
        name: 'Login',
        component: Login,
        path: '/log-in',
    },
    {
        name: 'OderList',
        component: OderList,
        path: '/oder-list',
    },
    {
        name: 'HomePage',
        component: HomePage,
        path: '/home-page',
    },
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;