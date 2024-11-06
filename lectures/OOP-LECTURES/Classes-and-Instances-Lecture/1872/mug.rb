class Mug
  attr_reader :material #, :how_full
  # attr_writer :how_full
  attr_accessor :how_full # works as a writer and a reader

  def initialize(material, how_full, is_clean)
    @material = material
    @how_full = how_full
    @is_clean = is_clean
  end

  # GETTER / READERS
  # def material
  #   return @material
  # end

  # SETTER / WRITER
  # def how_full=(new_volume)
  #   @how_full = new_volume
  # end


  def fill_up!
    @how_full = "100%"
  end

  def fill?
    @how_full == "100%"
    # @how_full == "100%" ? "yes, don't spill" : "no, time for a coffee"
  end

  def is_clean?
    @is_clean
  end

  def clean!
    turn_on_tap
    cover_in_soap
    @is_clean = true
    puts "mug is clean"
  end

  private

  def turn_on_tap
    puts "turning on the tap to clean the mug"
  end

  def cover_in_soap
    puts "Now covering the #{@material} mug with soap"
  end

end

all_mugs = []
kikis_mug = Mug.new("porcelain", "10%", false)
all_mugs << kikis_mug

kikis_mug.cover_in_soap

p kikis_mug.fill?
p kikis_mug.is_clean?
puts "Kiki's mug is made out of #{kikis_mug.material}. It is #{kikis_mug.how_full} full."


# kikis_mug.turn_on_tap

# GETTERS / SETTERS
p kikis_mug.material

kikis_mug.how_full = "76%"



puts "Kiki's mug is made out of #{kikis_mug.material}. It is #{kikis_mug.how_full} full."

if kikis_mug.fill?
  puts "don't spill"
end

mehdi_mug = Mug.new("tin", "5%", false)
all_mugs << mehdi_mug

p mehdi_mug.material

# p mehdi_mug
# p kikis_mug

# puts "filling up"
# mehdi_mug.fill_up

# p mehdi_mug
puts "cleaning kiki's mug"
kikis_mug.clean!

p kikis_mug

all_mugs.each do |mug|
  mug.fill_up!
end

# p all_mugs

p kikis_mug.fill?
