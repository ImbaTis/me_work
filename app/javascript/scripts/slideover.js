const slideover = () => {
  const jobs = document.querySelectorAll('.job');
  const page = document.querySelector('.notslider')
  const slider = document.getElementById('slider')
  const jobtitle = document.getElementById('jobtitle')
  const jobindustry = document.getElementById('jobindustry')
  const jobdescription = document.getElementById('jobdescription')
  const closepanel = document.getElementById('closepanel')

  if (jobs.length) {
    jobs.forEach((job) => {
      // console.log({ job })
      job.addEventListener('click', (e) => {
        console.log('HELLO', e.currentTarget.dataset.id);
        fetch(`http://localhost:3000/jobs/${e.currentTarget.dataset.id}?format=json`)
          .then(response => response.json())
          .then((data) => {
            jobtitle.innerText = data.title,
            jobindustry.innerText = data.industry,
            jobdescription.innerText = data.description;

            if (slider) slider.classList.remove("invisible");
          });


      })

    });
  };
  if (page) {
    page.addEventListener('click', (e) => {
      if (slider) {
        slider.classList.add("invisible")
      }
    })
  };
  if (closepanel) {
    closepanel.addEventListener('click', (e) => {
      if (slider) {
        slider.classList.add("invisible")
      }
    })
  }


}
export {slideover}
