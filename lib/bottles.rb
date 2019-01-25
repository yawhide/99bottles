class Bottles
  def initialize
  end

  def song
    verse(99, 0)
  end

  def verse(start, last=nil)
    verses = ''
    start..finish.each do |count|
      verses += sing(count)
    end
  end

  def sing(count)
    if count == 0
      return 'No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n'
    end
    "#{count} #{bottle(count)} of beer on the wall, #{count} #{bottle(count)} of beer.\nTake #{count > 1 ? "one" : "it"} down and pass it around, #{suffix(count)} of beer on the wall.\n"
  end

  def bottle(count)
    count > 1 ? 'bottles' : 'bottle'
  end

  def suffix(count)
    if count - 1 > 1
      "#{count - 1} bottles"
    elsif count - 1 == 1
      '1 bottle'
    else
      'no more bottles'
    end
  end
end
