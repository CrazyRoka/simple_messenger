FactoryBot.define do
  factory :user, class: User do
    name     'John'
    email    'john@email.com'
    password 'example'
    password_confirmation 'example'
  end
end
