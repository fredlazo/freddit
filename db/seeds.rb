require 'random_data'
# Create Topics
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

# Create Users
5.times do
  User.create!(
# #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

# Create Topics
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

# Create Posts
50.times do
  Post.create!(
<<<<<<< HEAD
    user:   users.sample,
=======
>>>>>>> checkpoint34-A
    topic: topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
<<<<<<< HEAD
    user: users.sample,
=======
>>>>>>> checkpoint34-A
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

admin = User.create!(
  name:     'Admin',
  email:    'fredlazo@yahoo.com',
  password: 'password',
  role:     'admin'
)

member = User.create!(
  name:     'Member User',
  email:    'member@example.com',
  password: 'password'
)

puts "Seed finished"
<<<<<<< HEAD
puts "#{User.count} users created"
=======
>>>>>>> checkpoint34-A
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
