class Author < ActiveRecord::Base
    validates :name, presence: {:message => "must not be blank"}
    validates :email, uniqueness: {:message => "has an account already"}, presence: {:message => "must not be blank"}
    validates :phone_number, length: {:is => 10}
end
