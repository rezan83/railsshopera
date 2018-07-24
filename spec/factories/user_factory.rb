FactoryBot.define do
    sequence(:email) { |n| "useruser#{n}#{n}#{n}@example.com" }
    sequence(:password) { |n| "useruser#{n}" }
    sequence(:first_name) { |n| "user#{n}" }
    sequence(:last_name) { |n| "example#{n}"}
    factory :user, class: User do
        email 
        password 
        first_name 
        last_name
        admin false
    end
end