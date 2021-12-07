<template>
  <div>
    <!-- this is just the html -->
    <h1 class="text-xl">title: {{job.title}}</h1>
  </div>
</template>

<script>
  export default {
    name: 'Slider',
    props: {
      // job: { type: Object, default: {}}
      // job: Object,
      jobId: Number
    },
    data() {
      return {
        job: {}
      }
    },
    mounted() {
      this.getJob()
    },
    ready() {

    },
    method: {
      getJob() {
        this.$http.get(`/jobs/${this.jobId}?format=json`).then(res=> {
          console.log('this is job show in json format', res)
          this.job = res.data.job
        })
      }
    }
  }
</script>

<style scoped>

</style>
