class Author < ActiveRecord::Base
    validates :name, presence: {:message => "must not be blank"}
    validates :email, uniqueness: {:message => "has an account already"}#, exclusion: {within: %w("bro@sbahj.info"), message: "%{value} is bad"}
    validates :phone_number, length: {:is => 10}#, exclusion: {within: %w("555035995"), message: "%{value} is bad"}
    # validate :validate_email, :validate_phone_number
    def validate_email
        if self.email
            if self.email.include?("bro@sbahj.info")
                errors.add(:email, "is invalid")
            end
        end
    end

    def validate_phone_number
        if self.phone_number
            if self.phone_number.include?("555035995")
                errors.add(:phone_number, "is invalid")
            end
        end
    end
end
