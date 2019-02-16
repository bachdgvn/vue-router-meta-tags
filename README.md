# vue-router-meta-tags

The simple callback to update the page title and metadata on route change for vue-router.

## Installing

`npm install @bachdgvn/vue-router-meta-tags`

## Usage
Open router.js, and edit your router. Make sure you placed `title`, `metaTags` for each route in `routes`.

```js
import Vue from 'vue';
import Router from 'vue-router';
import VueRouterMetaTags from '@bachdgvn/vue-router-meta-tags';
import Home from './views/Home.vue';
import About from './views/About.vue';

Vue.use(Router);

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        title: `MyApp - Home Page`,
        metaTags: [
          {
            name: 'description',
            content: `MyApp - The home page of our example app.`,
          },
          {
            property: 'og:description',
            content: `MyApp - The home page of our example app.`,
          },
        ],
      },
    },
    {
      path: '/about',
      name: 'about',
      component: About,
      meta: {
        title: `MyApp - About us`,
        metaTags: [
          {
            name: 'description',
            content: `MyApp - The about page of our example app.`,
          },
          {
            property: 'og:description',
            content: `MyApp - The about page of our example app.`,
          },
        ],
      },
    },
  ],
});

// This callback runs before every route change, including on page load.
router.beforeEach(VueRouterMetaTags.update);

export default router;
```

## Running the tests

`npm test`
