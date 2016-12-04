require 'pry'

class Project

  attr_reader :backers
  attr_writer 
  attr_accessor :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_object)
    @backers << backer_object
    unless backer_object.backed_projects.include?(self)
      backer_object.backed_projects << self
    end
    self
    #object.add_backer(self)
  end

end

