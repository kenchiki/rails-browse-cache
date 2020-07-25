<template>
  <span><strong>VueのAjaxから出力：</strong>{{ ajax_date }}</span>
</template>

<script>
  import axios from '@packs/modules/axios_on_config'

  export default {
    data: function () {
      return {
        ajax_date: ''
      }
    },
    created: async function () {
        this.ajax_date = await this.getAjaxDate()
    },
    methods: {
      async getAjaxDate() {
        const response = await axios.get('/api/v1/ajax/case6.json')
        return response.data['current_date']
      }
    }
  }
</script>
