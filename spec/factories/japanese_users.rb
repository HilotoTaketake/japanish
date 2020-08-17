FactoryBot.define do
  factory :japanese_user do
    
      name                       { "abc" }
      email                      { "abc@abc.com" }
      password                   { "111111a" }
      password_confirmation      { "111111a" }
      selfy                      {"20200708-00020635-nekomag-000-1-view.jjg"}
      sex_id                     {"1"}
      prefecture_id              {"1"}   
      how_old                    { 21 }
      
  end
end

