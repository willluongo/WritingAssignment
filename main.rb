#WritingAssignment
#A basic webapp that generates and tracks writing assignments for students

require 'rubygems'
require 'sinatra'
require 'haml'
require 'yaml'
require 'sinatra/reloader'

get '/' do
    @title = "WritingAssignments"
    
    bigarray = YAML.load_file('itemlist.yaml')
    
    random_one = rand(bigarray['objects'].length)
    @object_one = bigarray['objects'][random_one]
    bigarray['objects'].delete_at(random_one)
    
    random_two = rand(bigarray['objects'].length)
    @object_two = bigarray['objects'][random_two]
    bigarray['objects'].delete_at(random_two)
    
    random_three = rand(bigarray['objects'].length)
    @object_three = bigarray['objects'][random_three]
    
    random_loc = rand(bigarray['locations'].length)
    @location = bigarray['locations'][random_loc]
    
    random_dev = rand(bigarray['devices'].length)
    @device = bigarray['devices'][random_dev]
    
    haml :mainpage
end

post "/submitwork" do
    # Testing!
    return params[:work]
end


