20.times do |i|
  User.create!(:email => "email#{i}@domain.com")
end