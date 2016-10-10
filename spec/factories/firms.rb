FactoryGirl.define do
  sequence :firm_number do |n|
    Faker::Number.number(5) #=> "1"
  end
  
  factory :firm do
    firm_full_name {Faker::Company.name}
    firm_short_name {Faker::Company.suffix}
    firm_domain "neucom.io"
    firm_address {Faker::Address.street_address}
  end
end
