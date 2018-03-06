require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# for topic part
topics = ["Academy","Off-campus Activity", "Job seeking", "Entrepreneurship", "wuts up"]

Topic.delete_all

topics.each do |tp|
  topic = Topic.new
  topic.name = tp

  topic.save
end


# for user part
users = [["yunye", "123", "yunye@uchicago.edu", true],
         ["Helen", "helen", "helen@uchicago.edu", false],
         ["Nella", "nella", "nella@uchicago.edu", false]]

 User.delete_all
 users.each do |item|
   user = User.new
   user.username = item[0]
   user.email = item[2]
   user.password = item[1]
   user.is_admin = item[3]
   user.save
 end

# for discussion part
discussions = [
   ["An ideal place to eat", "Hey guys, I'm here to recommend to you my favorite restaurant near school"],
   ["greetings", "My name is Helen, I'm new to the program, si Hi to everyone!"],
   ["A question about Hamilton Path for simple graph", "Is there any shortcut method to tell whether or not it is a HP?"]
 ]

Discussion.delete_all

discussions.each do |entry|
  discussion = Discussion.new
  sample_user = User.sample
  loop do
    sample_user = User.sample
    break unless sample_user.is_admin == true
  end
  discussion.user_id = sample_user.id
  discussion.topic_id = Topic.sample.id
  # indexes = [1,2,3]
  # discussion.date = (Date.today + indexes.sample).to_s
  discussion.updated_at = DateTime.now
  discussion.title = entry[0]
  discussion.content = entry[1]
  discussion.save
end

# for comment part
comments = [
   ["Yeah! I love it!"],
   ["Welcome!"],
   ["I have the same question."]
 ]

Comment.delete_all

comments.each do |entry|
  comment = Comment.new
  sample_user = User.sample
  loop do
    sample_user = User.sample
    break unless sample_user.is_admin == true
  end
  comment.user_id = sample_user.id
  comment.discussion_id = Discussion.sample.id
  # indexes = [1,2,3]
  # comment.date = (Date.today + indexes.sample).to_s
  comment.time = DateTime.now
  comment.message = entry
  comment.save
end





print "There are now #{User.count} movies in the database.\n"
print "There are now #{Topic.count} topics in the database.\n"
print "There are now #{Discussion.count} actors in the database.\n"
print "There are now #{Comment.count} users in the database.\n"
