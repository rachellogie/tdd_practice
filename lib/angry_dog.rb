
class AngryDog
  def initialize
    @count = 0
  end

  def poke
    @count += 1
    if @count == 3
      return "bark"
    end
    return "growl"
  end

end