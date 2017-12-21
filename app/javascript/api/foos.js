import baseApi from './base'

export default {
    allPromise(){
        return baseApi.findAll('foos').then((response)=>{
            return response
        })
    }
}