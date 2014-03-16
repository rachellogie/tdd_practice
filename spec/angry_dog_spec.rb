
require 'angry_dog'

describe "AngryDog" do

  it "growls if you poke it once" do
    dog = AngryDog.new

    actual = "growl"

    expected = dog.poke

    expect(actual).to eq expected
  end

  it "barks if you poke it thrice" do
    dog = AngryDog.new
    dog.poke
    dog.poke

    actual = "bark"

    expected = dog.poke

    expect(actual).to eq expected
  end
end