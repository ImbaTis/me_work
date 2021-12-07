<template>
  <div class="max-w-screen-2xl mx-auto px-4 sm:px-6 md:px-8 notslider">
        <!-- Replace with your content -->
    <slider v-if="showSlider" />
    <div class="py-4">
      <div>
        <div class="relative bg-white">
          <div class="lg:absolute lg:inset-0">
            <div class="lg:absolute lg:inset-y-0 lg:left-0 lg:w-1/2">
              <img :src="jobBanner" class="h-56 w-full object-cover lg:absolute lg:h-full">
            </div>
          </div>
          <div class="relative pt-12 pb-16 px-4 sm:pt-16 sm:px-6 lg:px-8 lg:max-w-7xl lg:mx-auto lg:grid lg:grid-cols-2">
            <div class="lg:col-start-2 lg:pl-8">
              <div class="text-base max-w-prose mx-auto lg:max-w-lg lg:ml-auto lg:mr-0">
                <h2 class="leading-6 text-yellow-900 font-semibold tracking-wide uppercase">Work with Purpose</h2>
                <h3 class="mt-2 text-3xl leading-8 font-extrabold tracking-tight text-yellow-600 sm:text-4xl">Make Change Happen</h3>
                <p class="mt-8 text-lg text-gray-500">“Don’t judge each day by the harvest you reap but by the seeds that you plant.”</p>
                <div class="mt-5 prose prose-indigo text-gray-500">
                  <p> – Robert Louis Stevenson </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="flex flex-col py-4 px-0 border-red-600 ">
        <div class="-my-6 sm:-mx-6 lg:-mx-3 border-red-600">
          <div class="py-12 align-middle min-w-full border-red-600">
            <div class="shadow  h-screen border-b border-gray-200 sm:rounded-lg">
              <table class=" w-full table-fixed divide-y divide-gray-200 ">
                <thead class="bg-gray-50">
                  <tr>
                    <th scope="col" class="w-1/3 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider border-red-600">
                      Work for Me
                    </th>
                    <th scope="col" class="w-1/4 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                      Category
                    </th>
                    <th scope="col" class="w-1/4 px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                      Type
                    </th>

                  </tr>
                </thead>
                <tbody>
                  <!-- Odd row -->
                  <!-- <% @jobs.each_with_index do |job, i| %> -->
                  <template v-for="(job, i) in jobs">

                    <tr @click="expandSlider(job.id, i)" :key="i" class="" >

                      <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                        {{job.title}}
                      </td>
                      <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                        {{job.industry}}
                      </td>
                      <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                        {{ job.kind == 'full_time'? 'Full Time' : 'Part Time' }}
                      </td>
                      <td class="<%= job.fav? ? 'fas fa-heart' : 'far fa-heart'  %>  py-4 whitespace-nowrap text-right text-sm font-medium">
                        <a href="#" class="text-indigo-600 hover:text-indigo-900 pr-4"></a>
                      </td>
                      <td class=" py-4 whitespace-nowrap text-right text-sm font-medium">
                        <a :href="job.url" class="text-indigo-600 hover:text-indigo-900 pr-4">Apply now!</a>
                      </td>
                    </tr>
                  </template>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <!-- </div> -->
</template>

<script>
import jobBanner from 'images/job_hoping.png'
export default {
  name: 'JobsIndex',
  props: {
    jobs: Array
  },
  data() {
    return {
      jobBanner,
      showSlider: false
    }
  },
  mounted() {
    console.log('jobs', this.jobs)
  },
  methods: {
    expandSlider(id, index) {
      console.log('inside expandSlider', {id}, {index})
      // now you have id, and index, you can do whatever you want! xoxo, Aggy
    }
  }
}
</script>
