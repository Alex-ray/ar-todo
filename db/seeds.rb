require 'Faker'

10.times do
  todo = Faker::Lorem.sentence(word_count = 5)
  time = Time.now
  completed = ["NULL", Time.now].sample
  hash = {:created_at => Time.now, :updated_at => Time.now,:completed_at => completed, :description => todo}
  Task.create(hash)
end