require 'spec_helper'
require 'rspec'
require_relative '../app/model/task.rb'

before(:all) do
  @task = Task.new
  @task.assign_attributes(
    :description => "build a hacky app",
    :created_at => Time.now,
    :updated_at => Time.now,
    :complete_at => nil
  )
  @task.add

end
describe 'check to see if schema if correct' do 
  it "should have a task table" do 
  	ActiveRecord::Base.connection.table_exists?(:tasks).should be_true
end

it "it should have a the correct fields"
	should_have = {
		:integer => ["id"]
		:string => ["description"]
		:date =>   ["created_at", "updated_at", "completed_at"]
	}

		ActiveRecord::Base.connection.columns(:tasks).each do |col|
    	expected[col.type].include?(col.name).should be_true
    end
  end

  describe 'check to see if we can add a task' do 
  it "should have a task table" do 
			
			ActiveRecord::Base.connection.rows(:tasks).first.exist?

end