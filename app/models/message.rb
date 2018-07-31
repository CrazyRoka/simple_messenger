class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  validate :text_cannot_be_empty

  def text_cannot_be_empty
    errors.add(:text, 'must be non empty') if text.strip.empty?
  end
end
