class Noun
  CHOICES = %w(man mountain state ocean country building cat airline wealth  happiness pride fear religion bird book phone rice snow water)

  def self.randomize
    CHOICES.sample
  end
end
