class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

def status
  string = "" 
  if self.active 
    string += "This student is currently active."
  else 
    string += "This student is currently inactive."
  end
  string
end

def change_status
  if self.active 
    self.active = false 
    self.save
  else
    self.active = true 
    self.save 
  end
end


end







