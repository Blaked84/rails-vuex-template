<template>
    <div id="foo">
        <p>{{ foo }}</p>
        <button @click="addFoo">Add Foo</button>
    </div>
</template>

<script>
    import {mapGetters, mapMutations, mapActions} from 'vuex'
    
    export default {
        computed: {
            ...mapGetters(['foo'])
        },
        components: {
        },
        methods: {
            ...mapActions(['addFoo'])
        }
    }
</script>


<style>

</style>
