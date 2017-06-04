class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy #dependent indica para o post que quando ele for excluido que seus comentarios tambem sejam
	validates :title, length: { minimum: 5 }, presence: true
	validates :body, presence: true
end
