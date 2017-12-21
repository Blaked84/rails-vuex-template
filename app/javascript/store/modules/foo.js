import * as types from '../mutation-types'

// initial state
// shape: [{ id, quantity }]
const state = {
    foo: "Foo from store!"
};

// getters
const getters = {
    foo: state => state.foo
};

// actions
const actions = {
    addFoo ({ commit, state }) {
        commit(types.ADD_FOO)
    }};

// mutations
const mutations = {
    [types.ADD_FOO] (state) {
        state.foo += "Foo! "
    }
};

export default {
    state,
    getters,
    actions,
    mutations
};
