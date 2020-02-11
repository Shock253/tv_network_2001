
class Network
  attr_accessor :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    all_characters = @shows.reduce([]) { |characters, show| characters + show.characters}
    all_characters.find_all { |character| character.salary > 500_000 && character.name == character.name.upcase}
  end
end
