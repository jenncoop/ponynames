class PonyName

  PONY_FIRST_NAME_OPTIONS = ["Trotty", "Stinky", "Gallopy", "Glitter", "Poppy", "Bucky", "Stride", "Flower", "Buckles"]
  PONY_LAST_NAME_OPTIONS = ["MacSparkleHooves", "Lavender-Butterfly", "HoneyBunch-McFee", "McChaps", "Van WinkleMane", "Lazy-Prance", "Fluffy-Bottom", "Jingle-Hooves"]
  PONY_TYPES = ["Unicorn", "Pegasus"]

  PONY_FIRST_NAME_HASH = {}
  PONY_LAST_NAME_HASH = {}
  
  def initialize(first_name, last_name)
    build_pony_hash(PONY_FIRST_NAME_HASH, true)
    build_pony_hash(PONY_LAST_NAME_HASH, false)
    print(last_name, first_name)
  end

  private

  def discover_pony_first_name(first_name)
    valid?(first_name) ? "#{PONY_FIRST_NAME_HASH[initial(first_name)]}" : "*** Error - You entered #{first_name} ***"
  end

  def discover_pony_last_name(last_name)
    valid?(last_name) ? "#{PONY_LAST_NAME_HASH[initial(last_name)]}" : "*** Error - You entered #{last_name} ***"
  end

  def discover_pony_type(first_name)
    if initial(first_name).match(/[a-gA-G]/)
      PONY_TYPES[0]
    else
      PONY_TYPES[1]
    end
  end

  def print(last_name, first_name)
    puts "Your pony name is: #{discover_pony_first_name(first_name)} #{discover_pony_last_name(last_name)}"
    puts "You are a #{discover_pony_type(first_name)}"
  end

  def initial(str)
    str[0,1].upcase
  end

  def valid?(name)
    name =~ /[a-zA-Z]+/
  end

  def build_pony_hash(hash, is_first)
    ("A".."Z").each do |char|
      if char =~ /[a-cA-C]/
        is_first ? hash[char] = PONY_FIRST_NAME_OPTIONS[0] : hash[char] = PONY_LAST_NAME_OPTIONS[0]
      elsif char =~ /[d-fD-F]/
        is_first ? hash[char] = PONY_FIRST_NAME_OPTIONS[1] : hash[char] = PONY_LAST_NAME_OPTIONS[1]
      elsif char =~ /[g-iG-I]/
        is_first ? hash[char] = PONY_FIRST_NAME_OPTIONS[2] : hash[char] = PONY_LAST_NAME_OPTIONS[2]
      elsif char =~ /[j-lJ-L]/
        is_first ? hash[char] = PONY_FIRST_NAME_OPTIONS[3] : hash[char] = PONY_LAST_NAME_OPTIONS[3]
      elsif char =~ /[m-oM-O]/
        is_first ? hash[char] = PONY_FIRST_NAME_OPTIONS[4] : hash[char] = PONY_LAST_NAME_OPTIONS[4]
      elsif char =~ /[p-rP-R]/
        is_first ? hash[char] = PONY_FIRST_NAME_OPTIONS[5] : hash[char] = PONY_LAST_NAME_OPTIONS[5]
      elsif char =~ /[s-uS-U]/
        is_first ? hash[char] = PONY_FIRST_NAME_OPTIONS[6] : hash[char] = PONY_LAST_NAME_OPTIONS[6]
      elsif char =~ /[v-xV-X]/
        is_first ? hash[char] = PONY_FIRST_NAME_OPTIONS[7] : hash[char] = PONY_LAST_NAME_OPTIONS[7]
      else
        is_first ? hash[char] = PONY_FIRST_NAME_OPTIONS[8] : hash[char] = PONY_LAST_NAME_OPTIONS[8]
      end
    end
  end

end

puts "********* Welcome to PONY NAME DESIGNATOR!!! *********"

puts "Enter Your First Name:"

first_name = gets.chomp

puts "Enter Your Last Name:"

last_name = gets.chomp

PonyName.new(first_name, last_name)
