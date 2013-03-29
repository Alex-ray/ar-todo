require 'spec_helper'
require 'rspec'
require_relative '../app/model/task.rb'

before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:tasks).should be_true
    Task.delete_all

    @task = Task.new
    @task.assign_attributes(
      :description => "build a hacky app",
      :created_at => Time.now,
      :updated_at => Time.now,
      :complete_at => nil
    )
  end

	it "should have a description method and a complete_at method " do
    [:name, :complete_at].each { |mthd| @task.should respond_to mthd }
  end
end