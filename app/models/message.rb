class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :phone, :body
  validates :name, :body, presence: true
  validates :phone, format: { with: /\A\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*\z/ },
                    allow_blank: true
  validates :email, presence: true, length: { maximum: 255 }, 
                    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
