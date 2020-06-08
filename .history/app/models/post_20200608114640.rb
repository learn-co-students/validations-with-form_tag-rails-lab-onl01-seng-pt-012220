class Post < ActiveRecord::Base
    validates :title, presence: {message: => "must not be blank"}
    validates :content, length: {minimum: => 100}
end
