#WritingAssignment
#A basic webapp that generates and tracks writing assignments for students

require 'rubygems'
require 'sinatra'
require 'haml'
require 'yaml'

get '/' do
    @title = "WritingAssignments"
    
    bigarray = YAML.load_file( 'itemlist.yaml')
    
    random_one = rand(bigarray['objects'].length)
    @object_one = bigarray['objects'][random_one]
    
    random_two = rand(bigarray['objects'].length)
    @object_two = bigarray['objects'][random_two]
    
    random_three = rand(bigarray['objects'].length)
    @object_three = bigarray['objects'][random_three]
    
    random_loc = rand(bigarray['locations'].length)
    @location = bigarray['locations'][random_loc]
    
    random_dev = rand(bigarray['devices'].length)
    @device = bigarray['devices'][random_dev]
    
    haml :mainpage
end