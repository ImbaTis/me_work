# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  Job.create(title: Faker::Job.title, industry: Faker::Job.field)
end
50.times do
  Resource.create(name: Faker::Book.title)
end

10.times do
  user = User.new(email: Faker::Internet.free_email, password: Devise.friendly_token)
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





# 10.times do Resource.create(name: )
