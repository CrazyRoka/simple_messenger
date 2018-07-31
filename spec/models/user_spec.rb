require 'rails_helper'

describe User do
  context 'relationship' do
    let(:user) { User.new }

    it 'should have many send messages' do
      expect { user.send_messages.build }.not_to raise_error
    end

    it 'should have many received messages' do
      expect { user.received_messages.build }.not_to raise_error
    end
  end
end
