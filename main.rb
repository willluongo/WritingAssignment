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
    list_hash['objects']=list_hash['objects'].sort_by{rand}
    list_hash['locations']=list_hash['locations'].sort_by{rand}
    list_hash['devices']=list_hash['devices'].sort_by{rand}
    
    @object_one = list_hash['objects'][1]

    @object_two = list_hash['objects'][2]
    
    @object_three = list_hash['objects'][3]
    
    @location = list_hash['locations'][1]
    
    @device = list_hash['devices'][1]
    
    haml :mainpage
end

post "/submitwork" do
    # Testing!
    return params[:work]
end
    




