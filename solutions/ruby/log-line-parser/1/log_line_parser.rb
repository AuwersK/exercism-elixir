class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    message = @line.split(":")
    message[1].strip
  end

  def log_level
    message = @line.split(":")
    message[0].delete("[]").downcase
  end

  def reformat
    "#{message} (#{log_level})" 
  end
end
