require 'sinatra'
require 'faker'
require 'haml'
require 'active_support'

get '/' do
  @bs = "#{[Faker::Company.catch_phrase.titleize, Faker::Company.bs].join(" will ")}."
  haml :index
end
