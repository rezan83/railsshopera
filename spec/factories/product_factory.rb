FactoryBot.define do
    sequence(:id) { |n| "#{n}#{n}" }
    sequence(:description) { |n| "test bla bla bla#{n}" }
    sequence(:name) { |n| "test#{n}" }
    factory :product, class: Product do
        id 
        description 
        name
    end
end