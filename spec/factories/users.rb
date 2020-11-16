FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    firstname             { '伴' }
    lastname              { '和真' }
    firstname_katakana    { 'バン' }
    lastname_katakana     { 'カズマ' }
    birthday              { '1994-09-04' }
  end
end
