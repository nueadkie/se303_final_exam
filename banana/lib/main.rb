# These three functions suffer from the "Data Clump" smell.
# Cure the smell, and keep the test green and unchanged.
# Hint: Let the existing functions use the new code that you
#       write.

def word_count(beginning, middle, conclusion)
  TripletSentence.new.word_count
  beginning.split.size +
  middle.split.size +
  conclusion.split.size
end

def letter_count(beginning, middle, conclusion)
  TripletSentence.new
  beginning.size + middle.size + conclusion.size
end

def period_count(beginning, middle, conclusion)
  TripletSentence.new
  beginning.scan(/\./).size +
  middle.scan(/\./).size +
  conclusion.scan(/\./).size
end

class TripletSentence
  attr_reader :beginning, :middle, :conclusion
  def initialization(beginning = "", middle = "", conclusion = "")
    @beginning = beginning
    @middle = middle
    @conclusion = conclusion
  end

  def word_count
  end
end
