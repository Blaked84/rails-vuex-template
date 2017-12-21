import Vue from 'vue/dist/vue.esm';
import Vuex from 'vuex';
import * as actions from './actions';
import * as getters from './getters';
import foo from './modules/foo';

Vue.use(Vuex);

export default new Vuex.Store({
    actions,
    getters,
    modules: {
        foo,
    }
})
