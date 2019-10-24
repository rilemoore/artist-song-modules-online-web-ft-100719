

module Memorable
  module ClassMethods
    def reset_all
     all.clear
    end

   def count
     all.count
   end
  end
  
  module InstanceMethods
    def initialize
      
    end
  end
end