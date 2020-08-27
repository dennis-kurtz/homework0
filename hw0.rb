# A simple script to verify that
# your ruby environment is configured properly
#
# \author Hans J. Johnson
#

SELT_REQUIRED_VERSION="2.6.6"

my_user_name =  ENV['USERNAME']
if my_user_name.nil? || my_user_name.empty?
  my_user_name = ENV['USER']
end

if my_user_name == 'codio'
  puts "You are running this script in codio,  please use your personal computer"
else
  if RUBY_VERSION == SELT_REQUIRED_VERSION
    puts "Congratulations, you appear to be running the requested version of Ruby #{ SELT_REQUIRED_VERSION } to be used for SELT in Fall 2018."
  else
    puts "WARNING:  #{ RUBY_VERSION } may not function as described in the SELT eSaaS book examples"
  end

  5.times do
    puts "Hello #{ my_user_name }!"
  end
end