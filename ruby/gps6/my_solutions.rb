# Virus Predictor

# I worked on this challenge [by myself, with: Roger V.].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# It requires and pulls in the file enabling us to use it in this file.  
# It pulls it in from our local computer or folder so it is relative as opposed to just require which is available to anyone in ruby to pull.
require_relative 'state_data'

class VirusPredictor

# Initialize the attributes for the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Prints out the predicted death and the spread of virus
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Calculates the number of deaths based on the density of the state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

# calculates the speed of spread by the population density 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# # OLD DRIVER CODE 
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# NEW DRY DRIVER CODE
STATE_DATA.each do |state_name, state_info|
  state=VirusPredictor.new(state_name,state_info[:population_density],state_info[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section

   














