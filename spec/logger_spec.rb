require 'logger'

describe "Logger" do

  it "writes only five messages when you give it 7" do

    logger = Logger.new(File.expand_path("../../lib/new_file.rb", __FILE__))

    7.times do
      logger.log("hello")
    end

    actual = "hello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\n"

    expected = File.open(File.expand_path("../../lib/new_file.rb", __FILE__)).read

    expect(expected).to eq actual
  end

  it "writes only 10 messages when you give it 13" do

    logger = Logger.new(File.expand_path("../../lib/new_file.rb", __FILE__))

    13.times do
      logger.log("hello")
    end

    actual = "hello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\n"

    expected = File.open(File.expand_path("../../lib/new_file.rb", __FILE__)).read

    expect(expected).to eq actual
  end

end