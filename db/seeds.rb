require 'json'
Assessment.delete_all


TestResult.delete_all
Favorite.delete_all
User.delete_all
Job.delete_all
Resource.delete_all


Assessment.create(title: "Demo", description: "Personality Assessment", time: "1min", date: "Not Taken", url: "")
Assessment.create(title: "MBIT", description: "Personality Assessment", time: "30min", date: "11/12/2021", url: "https://www.16personalities.com/free-personality-test")
Assessment.create(title: "Enneagram", description: "Personality Assessment", time: "45min", date: "15/12/2021", url: "https://www.truity.com/test/enneagram-personality-test")


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

10.times do
  Resource.create(name: Faker::Book.title, kind: 'course', description: Faker::ChuckNorris.fact, url: Faker::Internet.url )
end
10.times do
  Resource.create(name: Faker::Book.title, kind: 'book', description: Faker::ChuckNorris.fact, url: Faker::Internet.url )
end
10.times do
  Resource.create(name: Faker::Book.title, kind: 'article', description: Faker::ChuckNorris.fact, url: Faker::Internet.url )
end
10.times do
  Resource.create(name: Faker::Book.title, kind: 'video', description: Faker::ChuckNorris.fact, url: Faker::Internet.url )
end

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
