#WritingAssignment
#A basic webapp that generates and tracks writing assignments for students

require 'rubygems'
require 'sinatra'
require 'haml'
require 'yaml'
require 'sinatra/reloader'

get '/' do
    @title = "WritingAssignments"
    
    list_hash = YAML.load_file('itemlist.yaml')
    
    random_one = rand(list_hash['objects'].length)
    @object_one = list_hash['objects'][random_one]
    list_hash['objects'].delete_at(random_one)
    
    random_two = rand(list_hash['objects'].length)
    @object_two = list_hash['objects'][random_two]
    list_hash['objects'].delete_at(random_two)
    
    random_three = rand(list_hash['objects'].length)
    @object_three = list_hash['objects'][random_three]
    
    random_loc = rand(list_hash['locations'].length)
    @location = list_hash['locations'][random_loc]
    
    random_dev = rand(list_hash['devices'].length)
    @device = list_hash['devices'][random_dev]
    
    haml :mainpage
end

post "/submitwork" do
    # Testing!
    return params[:work]
end




