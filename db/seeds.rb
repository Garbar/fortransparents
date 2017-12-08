require 'ffaker'

def sample_text
  (1..10).map{|i|"<p>#{FFaker::HTMLIpsum.fancy_string}</p>"}.join
end

# Article.destroy_all

# 50.times do
#   Article.new.tap do |q|
#     q.title = FFaker::Book.title
#     q.body = sample_text
#     q.description = FFaker::HipsterIpsum.phrase
#     q.save!
#   end
end
