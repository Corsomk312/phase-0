# Virus Predictor

# I worked on this challenge [] with: Nikola Beuscher].
# We spent [1.75] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # when you create a new instance of VirusPredictor 
  # set the 3 input parameters are instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calls two methods on self object with instance variables as parameters
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  
  private
  # a method that prints predicted number of deaths based on 
  # where input for population density falls in a specific range
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    
    def predicted_deaths
      case @population_density
      when 0...49 then deaths = (@population * 0.05).floor
      when 50...99 then deaths = (@population * 0.1).floor
      when 100...149 then deaths = (@population * 0.2).floor
      when 150...199 then deaths = (@population * 0.3).floor
      else deaths = (@population * 0.4).floor
      end 

        print "#{@state} will lose #{deaths} people in this outbreak"

  end
 
  # a method that prints speed o death based on where input for 
  # population density falls in a specific range

    def speed_of_spread   
      case @population_density
        when 0...49 then speed = 2.5
        when 50...99 then speed = 2
        when 100...149 then speed = 1.5
        when 150...199 then speed = 1
        else speed = 0.5
       end 
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

  def virus_reports
    STATE_DATA.each do |state, value| 
      state_name = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
      state_name.virus_effects
     
    end
  end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

test = virus_reports
#=======================================================================
# Reflection Section