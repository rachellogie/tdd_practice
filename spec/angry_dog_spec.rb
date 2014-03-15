
require 'angry_dog'

describe "AngryDog" do

  it "growls if you poke it" do
    dog = AngryDog.new

    actual = "growl"

    expected = dog.poke(1)

    expect(actual).to eq expected
  end

  it "barks if you poke it three times" do
    dog = AngryDog.new

    actual = "bark"

    expected = dog.poke(3)

    expect(actual).to eq expected
  end
end