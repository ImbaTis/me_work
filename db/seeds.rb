require 'json'
Assessment.delete_all


TestResult.delete_all
Favorite.delete_all
User.delete_all
Job.delete_all
Resource.delete_all


Assessment.create(title: "Demo", description: "Personality Assessment", time: "1min", date: "Not Taken", url: "")
Assessment.create(title: "MBIT", description: "Personality Assessment", time: "8min", date: "11/12/2021", url: "https://www.16personalities.com/free-personality-test")
Assessment.create(title: "HEXACO", description: "HEXACO Personality Test", time: "10min", date: "15/12/2021", url: "https://www.idrlabs.com/hexaco/test.php")
Assessment.create(title: "DISC", description: "Measure your behavioral style", time: "5min", date: "15/12/2021", url: "https://www.discprofiles.com/blog/2011/12/test-your-knowledge-of-disc-styles/")
Assessment.create(title: "Clifton Strengths", description: "Discover the best part of yourself", time: "10min", date: "15/12/2021", url: "https://high5test.com/")
Assessment.create(title: "Enneagram", description: "Get your unique portrait", time: "45min", date: "15/12/2021", url: "https://www.truity.com/test/enneagram-personality-test")
Assessment.create(title: "MBIT", description: "Personality Assessment", time: "8min", date: "11/12/2021", url: "https://www.16personalities.com/free-personality-test")
Assessment.create(title: "HEXACO", description: "HEXACO Personality Test", time: "10min", date: "15/12/2021", url: "https://www.idrlabs.com/hexaco/test.php")
Assessment.create(title: "DISC", description: "Measure your behavioral style", time: "5min", date: "15/12/2021", url: "https://www.discprofiles.com/blog/2011/12/test-your-knowledge-of-disc-styles/")
Assessment.create(title: "Clifton Strengths", description: "Discover the best part of yourself", time: "10min", date: "15/12/2021", url: "https://high5test.com/")
Assessment.create(title: "Enneagram", description: "Get your unique portrait", time: "45min", date: "15/12/2021", url: "https://www.truity.com/test/enneagram-personality-test")
Assessment.create(title: "MBIT", description: "Personality Assessment", time: "8min", date: "11/12/2021", url: "https://www.16personalities.com/free-personality-test")
Assessment.create(title: "HEXACO", description: "HEXACO Personality Test", time: "10min", date: "15/12/2021", url: "https://www.idrlabs.com/hexaco/test.php")
Assessment.create(title: "DISC", description: "Measure your behavioral style", time: "5min", date: "15/12/2021", url: "https://www.discprofiles.com/blog/2011/12/test-your-knowledge-of-disc-styles/")
Assessment.create(title: "Clifton Strengths", description: "Discover the best part of yourself", time: "10min", date: "15/12/2021", url: "https://high5test.com/")
Assessment.create(title: "Enneagram", description: "Get your unique portrait", time: "45min", date: "15/12/2021", url: "https://www.truity.com/test/enneagram-personality-test")

# Seeding jobs
file = File.read('db/json/business.json')
jobs = JSON.parse(file)["jobs"]

jobs.each do |item|
  Job.create(title: item["title"], company: item["company_name"], industry: item["category"], new: true, fav: true, url:item["url"], description: item["description"], kind: item["job_type"])
end

# 50.times do
#   Job.create(title: Faker::Job.title, industry: Faker::Job.field, new: false, fav: false, url: Faker::Internet.url, description: Faker::ChuckNorris.fact, kind: 'Gig')
# end

# 18.times do
#   Job.create(title: Faker::Job.title, industry: Faker::Job.field, new: true, fav: false, url: Faker::Internet.url, description: Faker::ChuckNorris.fact, kind: 'Job')
# end

# 10.times do
#   Resource.create(name: Faker::Book.title, kind: 'course', description: Faker::ChuckNorris.fact, url: Faker::Internet.url )
# end
# 10.times do
#   Resource.create(name: Faker::Book.title, kind: 'book', description: Faker::ChuckNorris.fact, url: Faker::Internet.url )
# end
# 10.times do
#   Resource.create(name: Faker::Book.title, kind: 'article', description: Faker::ChuckNorris.fact, url: Faker::Internet.url )
# end
# 10.times do
#   Resource.create(name: Faker::Book.title, kind: 'video', description: Faker::ChuckNorris.fact, url: Faker::Internet.url )
# end
Resource.create(name: "Unlocking Your Potential: 5 Exercises to Build Creative Confidence", kind: "course", description: "Make your next creative project your best yet, with simple steps from creative superstar Emma Gannon!", url: "https://www.skillshare.com/classes/Unlocking-Your-Potential-5-Exercises-to-Build-Creative-Confidence/1109027672?via=homepage")
Resource.create(name: "Now, Discover Your Strengths", kind: "book", description: "The revolutionary Gallup program that shows you how to develop your unique talents and strengths", url: "https://www.amazon.com/Discover-Your-Strengths-Marcus-Buckingham/dp/0743201140/ref=sr_1_1?crid=1BD92KHFC899C&keywords=now+discover+your+strengths&qid=1638942927&sprefix=now+disc%2Caps%2C612&sr=8-1")
Resource.create(name: "le wagon Web Development course in Shanghai", kind: "course", description: "Change your life, learn to code.", url: "https://www.lewagon.com/shanghai/web-development-course/full-time")
Resource.create(name: "CEIBS MBA", kind: "course", description: "get ready to venture into the future with CEIBS", url: "https://www.ceibs.edu/mba")
Resource.create(name: "CFA Training Program", kind: "course", description: "Designing Concise Courses for Busy Finance Sector Employees", url: "https://www.gaodun.com/cfa/")
Resource.create(name: "Shanghai Jiaotong University MBA", kind: "course", description: "Ranked 2nd in Chinese Mainland Business School", url: "https://mba.sjtu.edu.cn/en/")
Resource.create(name: "What Color Is Your Parachute? 2021", kind: "book", description: "Your Guide to a Lifetime of Meaningful Work and Career Success", url: "https://www.amazon.com/What-Color-Your-Parachute-2021/dp/1984857878/ref=sr_1_1_sspa?keywords=career+change+book&qid=1638944064&s=books&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExUTJBMEJFQVBOTlc3JmVuY3J5cHRlZElkPUEwNzEwOTcyRldMQkk4VlVIWVVQJmVuY3J5cHRlZEFkSWQ9QTAzNDAxNjYyMElJMkFBUldPOTAzJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==")
Resource.create(name: "The 2-Hour Job Search", kind: "book", description: "Get the Right Job Faster", url: "https://www.amazon.com/dp/1984857282/ref=sspa_dk_detail_1?psc=1&pd_rd_i=1984857282&pd_rd_w=UyvMa&pf_rd_p=9fd3ea7c-b77c-42ac-b43b-c872d3f37c38&pd_rd_wg=jzQEd&pf_rd_r=HRB72Q8JJ2KJDPGFDRQV&pd_rd_r=112099d6-69fa-4fc6-ac0f-180ad879825f&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyWkpUQVdOUURVMlM0JmVuY3J5cHRlZElkPUEwMjgyNTg0MkhCR1FOSUIwSU8wJmVuY3J5cHRlZEFkSWQ9QTEwMDM4OTQxUDRRQkVVSjhWWU9QJndpZGdldE5hbWU9c3BfZGV0YWlsJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==")
Resource.create(name: "le wagon Data Science course in Shanghai", kind: "course", description: "Enter the world of Data Science as a Data Analyst, Data Engineer or Data Scientist", url: "https://www.lewagon.com/shanghai/data-science-course/full-time")
Resource.create(name: "How to sell anything", kind: "video", description: "Crash Course Entrepreneurship #12", url: "https://www.youtube.com/watch?v=n7-wsGLc1js&t=2s")
Resource.create(name: "Learn Programming as an Absolute Beginner", kind: "video", description: "help you learn computer programming as an absolute beginner", url: "https://www.youtube.com/watch?v=8Ze0b2VvwHQ")
Resource.create(name: "Python for Beginners", kind: "video", description: "Learn Python in 1 Hour", url: "https://www.youtube.com/watch?v=kqtD5dpn9C8")
Resource.create(name: "From $0 to $200,000 in 12 months", kind: "article", description: "a no-holds-barred detailing of what it’s like being a solopreneur", url: "https://medium.com/@ryan_14411/from-0-to-200-000-in-12-months-the-truth-about-solo-growth-c6a8d20b8b3a")


10.times do
  user = User.new(
    email: Faker::Internet.free_email,
    password: Devise.friendly_token,
    pic_url: "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
    location: "ShangHai",
    languages: "English, Chinese, Spanish",
    code: "Ruby, Python, HTML, CSS",
    slogan: "Carpe Diem",
    quote: "I like all the birds",
    passions: "underwater basket weaving",
    hobbies: "magnets",
    story: "Born, lived... TBD",
    work_style: 'Working with the crazies',
    causes: "the penguins",
    why: "To leave a better world",
    hours: "50/50 WFH",
    commute: "30 mins max",
    skills: "Ninja-ing, filing taxes",
    contribute: "more like what CANT I contribute",
    comp: "whatever Warren Buffet makes... plus 5",
    teammates: "easy going, hard workers",
    boss: "a boss who leads from the front and has his teams best interest at heart",
    org_structure: "pyramid shaped with multiple levels",
    size: " Publicaly traded mega corporation",
    work_structure: "uhm yes",
    amenities: "Gym, meditation space, open bar",
    travel: "As little travel as possible"
  )
  user.save!
  puts "user #{user.id} created"
  rand(5..15).times do
    fav = Favorite.new(
      user: user,
      record: Job.all.sample
    )
    unless fav.save
      puts "fav error #{fav.errors.full_messages}"
    end
    puts "fav #{fav.id} created"
  end
  rand(5..15).times do
    fav = Favorite.new(
      user: user,
      record: Resource.all.sample
    )
    unless fav.save
      puts "fav error #{fav.errors.full_messages}"
    end
    puts "fav #{fav.id} created"
  end

  rand(1..10).times do
    res = TestResult.new(name: Faker::GreekPhilosophers.name, content: Faker::ChuckNorris.fact, user: user)
    unless res.save
        puts "fav error #{res.errors.full_messages}"
    end
    puts "fav #{res.id} created"
  end
end

puts "now for the test acct"

user = User.new(
    email: "test@test.com",
    password: "123456",
    pic_url: "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
    location: "ShangHai",
    languages: "English, Chinese, Spanish",
    code: "Ruby, Python, HTML, CSS",
    slogan: "Carpe Diem",
    quote: "I like all the birds",
    passions: "underwater basket weaving",
    hobbies: "magnets",
    story: "Born, lived... TBD",
    work_style: 'Working with the crazies',
    causes: "the penguins",
    why: "To leave a better world",
    hours: "50/50 WFH",
    commute: "30 mins max",
    skills: "Ninja-ing, filing taxes",
    contribute: "more like what CANT I contribute",
    comp: "whatever Warren Buffet makes... plus 5",
    teammates: "easy going, hard workers",
    boss: "a boss who leads from the front and has his teams best interest at heart",
    org_structure: "pyramid shaped with multiple levels",
    size: " Publicaly traded mega corporation",
    work_structure: "uhm yes",
    amenities: "Gym, meditation space, open bar",
    travel: "As little travel as possible"
  )
  user.save!
  puts "user #{user.id} created"
  rand(5..15).times do
    fav = Favorite.new(
      user: user,
      record: Job.all.sample
    )
    unless fav.save
      puts "fav error #{fav.errors.full_messages}"
    end
    puts "fav #{fav.id} created"
  end
  rand(5..15).times do
    fav = Favorite.new(
      user: user,
      record: Resource.all.sample
    )
    unless fav.save
      puts "fav error #{fav.errors.full_messages}"
    end
    puts "fav #{fav.id} created"
  end

  rand(1..10).times do
    res = TestResult.new(name: Faker::GreekPhilosophers.name, content: Faker::ChuckNorris.fact, user: user)
    unless res.save
      puts "fav error #{res.errors.full_messages}"
    end
    puts "fav #{res.id} created"
  end
