FactoryGirl.define do
  factory :group_member do
    group_id 1
    member_jid "MyString"
    is_admin false
  end
end
