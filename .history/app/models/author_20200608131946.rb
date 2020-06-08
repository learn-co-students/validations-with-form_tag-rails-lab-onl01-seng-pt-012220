class Author < ActiveRecord::Base
    validates :name, presence: {:message => "must not be blank"}
    validates :email, uniqueness: {:message => "has an account already"}, exclusion: {within: %w('bro@sbahj.info'), message: "invalid email"}
    validates :phone_number, length: {:is => 10}, exclusion: {within: %w('555035995'), message: "invalid phone number"}
end
