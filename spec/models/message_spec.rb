require 'rails_helper'

describe Message do
  context 'relationship' do
    let(:message) { Message.new }

    it 'should belongs to sender' do
      expect { message.sender = User.new }.not_to raise_error
    end

    it 'should belongs to receiver' do
      expect { message.receiver = User.new }.not_to raise_error
    end
  end

  context 'validations' do
    let(:sender) do
      sender = User.new(email: 'sender@email.com', name: 'sender')
      sender.password = sender.password_confirmation = '123456'
      sender.save!
      sender
    end

    let(:receiver) do
      receiver = User.new(email: 'receiver@email.com', name: 'receiver')
      receiver.password = receiver.password_confirmation = '123456'
      receiver.save!
      receiver
    end

    let(:message) { Message.new(sender: sender, receiver: receiver, text: '') }

    it 'should not be empty' do
      create(:user)
      expect(message.invalid?).to eq(true)
    end
  end
end
