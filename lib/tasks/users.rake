namespace :users do
  desc "Creates a new user"
  task :create, [:email, :password] => [:environment] do |t, args|
    puts "Creating user: #{args[:email]}..."

    User.create(
      email: args[:email],
      password: args[:password],
      password_confirmation: args[:password]
    )

    puts "User created."
  end

end
