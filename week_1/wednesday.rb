class String
 attr_reader :string, :split_string, :loop, :reverse_a_string
 attr_writer :string

  def initialize(string)
    @string = string
  end

  def split_string
    @split_string = string.split(//)
  end

  def loop
    @loop = []
    i = 0

    5.times do
      i = i - 1
      @loop << split_string[i]
    end
    @loop
  end

  def reverse_a_string
    @reverse_a_string = loop.join
  end

end

string = String.new("abcde")

p string.reverse_a_string

# a = [ "a", "b", "c", "d" ]
# a.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
# a.map.with_index{ |x, i| x * i } #=> ["", "b", "cc", "ddd"]
# a                                #=> ["a", "b", "c", "d"]

# class String
#  attr_reader :string, :split_string, :loop, :reverse_a_string
#  attr_writer :string

#   def initialize(string)
#     @string = string
#   end


#   def reverse_a_string
#     @reverse_a_string = string.split
#     reverse_a_string.each do |letter|
#       p letter
#     end
#   end

# end

# string = String.new("abcde")

# p string.reverse_a_string

def reverse_a_string(string)
  split_string = string.split("")
  reverse_string = []
  split_string.length.times{ reverse_string << split_string.pop}
  reverse_string.join
end

p reverse_a_string("abcde")




