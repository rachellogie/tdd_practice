
class Logger

  def initialize(path)
    @path = path
    @count = 0
    @array = []
  end

  def log(message)

    line = "#{message} #{Time.now}"

    @array.push(line)

    if @array.length % 5 == 0
      File.open(@path, "w") do |f|
        @array.each do |line|
          f.puts line
        end
      end
    end


  end
end