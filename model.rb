

def user_registration(name, email)
  @database_connection.sql("INSERT INTO users (username, password) VALUES ('#{name}', '#{email}')")
  flash[:notice] = "Thank you for signing up to get emails from terence!"
  redirect '/signup'
end
