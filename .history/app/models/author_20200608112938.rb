class Author < ActiveRecord::Base
    validates :name, presence: {:message "must not be blank"}
end
