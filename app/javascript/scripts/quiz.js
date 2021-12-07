const quiz = () => {
  const page = document.querySelector('.notslider')
  const quiz = document.querySelectorAll('.assessment')
  const slider = document.getElementById('slider')
  const closepanel = document.getElementById('closepanel')

  console.log(page)
  console.log(quiz)
  console.log(slider)
  console.log(closepanel)

  if (quiz.length) {
    quiz.forEach((quiz) => {
      quiz.addEventListener('click', (e) => {
        console.log(e.currentTarget.dataset.id)
      })

    })
  };

};



export {quiz}
