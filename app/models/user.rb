class User < ApplicationRecord
  has_many :messages, foreign_key: 'sender_id'
end
