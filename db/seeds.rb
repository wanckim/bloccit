require 'random_data'

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
    topic: topics.sample,
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
  )
end

# Post.find_or_create_by!(
#   title: "This is unique title!",
#   body: "This is unique body!"
# )

posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Comment.find_or_create_by!(
#   post: posts.find_by(title: "This is unique title!"),
#   body: "This is unique comment body!"
# )

# Create SponsoredPosts
50.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_price
  )
end

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{SponsoredPost.count} sponsored posts created"
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
