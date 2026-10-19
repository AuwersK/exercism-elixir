class AssemblyLine
  def initialize(speed)
    @speed = speed
  end
  CARS_PRODUCED_EACH_HOUR = 221
  
  def production_rate_per_hour
    if @speed >= 1 && @speed <= 4
      @speed * CARS_PRODUCED_EACH_HOUR * 1
    elsif @speed >= 5 && @speed < 9
      @speed * CARS_PRODUCED_EACH_HOUR * 0.9
    elsif @speed == 9
      @speed * CARS_PRODUCED_EACH_HOUR * 0.8
    else 
      @speed * CARS_PRODUCED_EACH_HOUR * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
