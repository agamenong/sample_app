Factory.define :user do |user|
  user.name                  "Gustavo del Castillo"  
  user.email                 "agamenong@gmail.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end  