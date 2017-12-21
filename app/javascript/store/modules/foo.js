import * as types from '../mutation-types'
import * as api from '../../api'


// initial state
const state = {
    foo: "Foo from store!",
    foos : []
};

// getters
const getters = {
    foo: state => state.foo
};

// actions
const actions = {
    fetchAllFoos ({commit}) {
        api.foos.allPromise().then((foos)=>{
            commit(types.UPDATE_ALL_FOOS,foos)
        })

    },
    addFoo ({ commit, state }) {
        commit(types.ADD_FOO)
    }};

// mutations
const mutations = {
    [types.ADD_FOO] (state) {
        state.foo += "Foo! "
    },
    [types.UPDATE_ALL_FOOS](state, foos){
        state.foos = foos
    }
};

export default {
    state,
    getters,
    actions,
    mutations
};
