class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :phone, :body
  validates :name, :body, presence: true
  validates :email, presence: true, length: { maximum: 255 }, 
                    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
