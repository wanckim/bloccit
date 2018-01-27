require 'random_data'

# Create Users
5.times do
  User.create!(
    name: RandomData.random_name,
    email: RandomData.random_email,
    password: RandomData.random_sentence
  )
end

users = User.all

# Create Topics
15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end

topics = Topic.all

# Create Posts
50.times do
  Post.create!(
    user: users.sample,
    topic: topics.sample,
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
  )
end

posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    user: users.sample,
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

admin = User.create!(
  name: "Admin User",
  email: "admin@example.com",
  password: "password",
  role: 'admin'
)

member = User.create!(
  name: "Member User",
  email: "member@example.com",
  password: "password",
  role: 'member'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"


# # Create Advertisements
# 50.times do
#   Advertisement.create!(
#     title: RandomData.random_sentence,
#     copy: RandomData.random_paragraph,
#     price: RandomData.random_price
#   )
# end
#
# puts "Seed finished"
# puts "#{Advertisement.count} advertisements created"

# # Create Questions
# 50.times do
#   Question.create!(
#     title: RandomData.random_sentence,
#     body: RandomData.random_paragraph,
#     resolved: false
#   )
# end
#
# puts "Seed finished"
# puts "#{Question.count} questions created"
