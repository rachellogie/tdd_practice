
require 'angry_dog'

describe "AngryDog" do

  it "growls if you poke it once" do
    dog = AngryDog.new

    actual = "growl"

    expected = dog.poke(1)

    expect(actual).to eq expected
  end
end