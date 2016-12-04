require 'pry'

class Backer

  attr_reader :projects
  attr_writer 
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_object)
    backed_projects << project_object
    project_object.add_backer(self)
    self
    # object.add_backer(self)
  end


end