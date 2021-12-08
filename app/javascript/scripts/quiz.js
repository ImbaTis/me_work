const quiz = () => {
  const assessments = document.querySelectorAll('.assessment');
  // console.log(assessments)
  const page = document.querySelector('.notslider')
  // console.log(page)
  const slider = document.querySelector('.assessment-slider')
  // console.log(slider)
  const closepanel = document.getElementById('closepanel')
  const create = document.getElementById('create')
  const cancel = document.getElementById('cancel')
  // console.log(closepanel)

  if (assessments.length) {
    assessments.forEach((assessment) => {
      // console.log({ assessment })
      assessment.addEventListener('click', (e) => {
        console.log(e.currentTarget)
        console.log('HELLLLOOOO 1', slider.classList)
        slider.classList.remove("invisible")
        console.log('HELLLLOOOO 2',slider.classList)
      })
    })
  };

  if (page) {
    page.addEventListener('click', (e) => {
      if (slider) {
        slider.classList.add("invisible")
        console.log('HELLLLOOOO 3', slider.classList)
      }
    })
  };

  if (closepanel) {
    closepanel.addEventListener('click', (e) => {
      if (slider) {
        slider.classList.add("invisible")
      }
    })
  };

  if (create) {
    create.addEventListener('click', (e) => {
      if (slider) {
        slider.classList.add("invisible")
      }
    })
  };

  if (cancel) {
    cancel.addEventListener('click', (e) => {
      if (slider) {
        slider.classList.add("invisible")
      }
    })
  }
}

export {quiz}
