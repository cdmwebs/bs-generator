require 'sinatra'
require 'faker'
require 'haml'

get '/' do
  @bs = "#{[Faker::Company.catch_phrase, Faker::Company.bs].join(" will ")}."
  haml :index
end
