require 'random_data'

# # Create Posts
# 50.times do
#   Post.create!(
#     title: RandomData.random_sentence,
#     body:  RandomData.random_paragraph
#   )
# end
#
# Post.find_or_create_by!(
#   title: "This is unique title!",
#   body: "This is unique body!"
# )
#
# posts = Post.all
#
# # Create Comments
# 100.times do
#   Comment.create!(
#     post: posts.sample,
#     body: RandomData.random_paragraph
#   )
# end
#
# Comment.find_or_create_by!(
#   post: posts.find_by(title: "This is unique title!"),
#   body: "This is unique comment body!"
# )
#
# puts "Seed finished"
# puts "#{Post.count} posts created"
# puts "#{Comment.count} comments created"

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

# Create Questions
50.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end

puts "Seed finished"
puts "#{Question.count} questions created"
