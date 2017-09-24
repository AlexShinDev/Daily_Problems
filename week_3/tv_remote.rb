# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)
class TV
  attr_reader :power, :volume, :channel
  attr_writer :power, :volume, :channel

  def initialize(power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end

end

class Remote
  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    if @tv.power == "off"
      @tv.power = "on"
    else 
      @tv.power = "off"
    end
  end

  def increment_volume
    @tv.volume += 1 if @tv.power == "on"
  end

  def decrement_volume
    @tv.volume -= 1 if @tv.power =="on"
  end

  def set_channel(channel)
    @tv.channel = channel if @tv.power == "on"
  end
end

p tv = TV.new("on",50,25)
p remote = Remote.new(tv)
p remote.set_channel(30)
p remote

