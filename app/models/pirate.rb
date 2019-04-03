class Pirate
   attr_accessor :ships, :name, :height, :weight

   def initialize(hash)
      @ships = []
      hash.each do |k,v|
         instance_variable_set("@#{k}", v) unless v.nil? || k == "ships"
      end
   end
end