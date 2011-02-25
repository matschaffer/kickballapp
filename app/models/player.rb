class Player < ActiveRecord::Base
  belongs_to :team
  
  def last_name
    begin
    name.split(' ').last
  rescue Exception
    super
  end
  end
end
