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
end
