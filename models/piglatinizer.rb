class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    if "aeiouAEIOU".include? word.split("")[0]
      word + "way"
      else
      var = word.split("").take_while do |letter|
      !"aeiouAEIOU".include? letter
    end
      word[var.length..-1] + var.join + "ay"
    end
  end

  def to_pig_latin(text)
    text.split.map do |word|
      piglatinize(word)
    end.join(" ")
  end
end