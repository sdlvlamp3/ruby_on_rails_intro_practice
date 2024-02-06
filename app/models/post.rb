class Post < ApplicationRecord

# Validations:

validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },
validates :published_at, presence: true

# Callbacks:

before_create :capitalize_title

    private

    def capitalize_title
        self.title = title.split.map(&:capitalize).join(' ')
    end
end
