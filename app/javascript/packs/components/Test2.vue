<template>
  <div>
    <div>no ajax:{{ date }}</div>
    <div>ajax:{{ ajax_date }}</div>
  </div>
</template>

<script>
  import axios from '@packs/modules/axios_on_config'

  export default {
    data: function () {
      return {
        date: this.getDate(),
        ajax_date: ''
      }
    },
    created: async function () {
        this.ajax_date = await this.getAjaxDate()
    },
    methods: {
      getDate() {
        const now = new Date()
        return now.getHours() + ':' + now.getMinutes() + ':' + now.getSeconds()
      },
      async getAjaxDate() {
        const response = await axios.get('/api/v1/ajax/case7.json')
        return response.data['current_date']
      }
    }
  }
</script>
