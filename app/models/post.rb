class Post < ActiveRecord::Base
	validates :title, length: { minimum: 5 }, presence: true
	validates :body, presence: true
end
