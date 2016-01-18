# Virus Predictor

# I worked on this challenge Heather Conklin.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# allows you to grab the information from a file within the same project

require_relative 'state_data'

class VirusPredictor
  # args => instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # invokes methods with the args given
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  def all_states
    # iterate through the STATE_DATA hash
     #   run virus_effects for each state
    STATE_DATA.each do |state, data|
      @state = state
      @population_density = data[:population_density]
      @population = data[:population]
      self.virus_effects
    end
  end


  private
  # calculates number_of_deaths based on population_density
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #
    case @population_density
      when 51..100
        number_of_deaths = (@population * 0.1).floor
      when 101..150
        number_of_deaths = (@population * 0.2).floor
      when 151..200
        number_of_deaths = (@population * 0.3).floor
      when 201..50000
        number_of_deaths = (@population * 0.4).floor
      else
        number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # calculates speed of spread based on population_density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

    case @population_density
      when 51..100
        speed += 2
      when 101..150
        speed += 1.5
      when 151..200
        speed += 1
      when 201..50000
        speed += 0.5
      else
        speed += 2.5
    end


    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# alabama.all_states


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# Differences include how they are accessed and how they are printed out.

# What does require_relative do? How is it different from require?

# Require relative lets you poll information in one file by referring to another file using the file name or relative path.  Require typically needs to have had something installed before you can use it.

# What are some ways to iterate through a hash?

# .each, .each_key, .each_value, etc.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# Since they are instance variables, you don't need to make reference to them since they are accessible across methods, so there was no reason to have them within virus_effects.

# What concept did you most solidify in this challenge?

# I definitely have a better grasp on when you use if/else vs case/when now.