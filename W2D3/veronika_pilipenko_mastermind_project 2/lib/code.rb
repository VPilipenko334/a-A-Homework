class Code
  attr_reader :pegs

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  
  #when ALL chars are in the arr of POSSIBLE_PEGS --> true
  #iterate through the arr / use .all and see if the chars match the pegs 

  #this is a hash so you have to use KEY method --> returns boolean
  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase)}
  end

  #(accepts an ARRAY of CHARS represending pegs)
  def initialize(chars)
    #if the valid pegs contain chars --> then set it to @ PEG but char has to be upcase
    if Code.valid_pegs?(chars)     #if the arr contains valid pegs, should equal true
        @pegs = chars.map! {|char| char.upcase}
      #chars is an ARR so you can map over it to modify it
      else
        raise "pegs are not valid"
      end
  end

  #call Code.new(ARR)
  #the array --> given length containing RANDOM PEGS (.sample) 
  #call it a random pegs arr and shovel in random pegs 
    def self.random(length)      #takes in a length --> (number)
      random_pegs = []
      # length.times {random_pegs << POSSIBLE_PEGS.keys.sample} 

      while length > random_pegs.length 
        random_pegs << POSSIBLE_PEGS.keys.sample 
      end

      Code.new(random_pegs)
    end


    #call Code.new with an arr of chars
    #return a Code instance with peg colors given by chars of the string 
    def self.from_string(string)      #string representing pegs as arguments 
      peg_colors = string.split("")
      Code.new(peg_colors)
    end

    #returns the element of @pegs at the given index
    def [](idx)
      ele = @pegs[idx]
    end
   
    def length
      return @pegs.length 
    end

    def num_exact_matches(guess_code)
      # $guess = Code.new(POSSIBLE_PEGS.keys.sample)
      # if num_exact_matches == 
      #   return 

    end









end

