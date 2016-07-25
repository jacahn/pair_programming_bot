require 'sinatra'
require 'sinatra/reloader'


get '/' do
  @direction = "Do you have a test for that?"
  @yes = '/pass'
  @no = '/write_test'
  erb :bot
end

get '/pass' do
  @direction = "Does the test pass?"
  @yes = '/refactor'
  @no = '/write_code'
  erb :bot
end

get '/refactor' do
  # retactor /do_refactor or /new_feature
  @direction = "Do you need to refactor?"
  @yes = '/do_refactor'
  @no = '/new_feature'
  erb :bot
end

get '/write_code' do
  # write_code
  @direction = "Write enough code to pass."
  # @yes = '/'
  # @no = '/new_feature'
  @done = '/'
  erb :done
end

get '/do_refactor' do
  # redirect goes back to index
  @direction = "Refactor code."
  # @yes = '/'
  # @no = '/new_feature'
  @done = '/'
  erb :done
end

get '/new_feature' do
  # goes back to index
  @direction = "Add a new feature."
  # @yes = '/'
  # @no = '/new_feature'
  @done = '/'
  erb :done
end

get '/write_test' do
  @direction = "Write a test."
  @done = '/'
  erb :done
end
