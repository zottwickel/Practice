class OrangeTree
  def initialize
    @heightValue = 1
    @fruitValue = 0
    puts 'your orange tree is planted'
  end
  def yearPasses
    if @heightValue <=14 && @heightValue > 4
      puts 'Last year\'s fruit falls to the ground and is lost.'
      @heightValue = @heightValue + 1
      puts 'tree is ' + @heightValue.to_s + ' feet tall!'
      @fruitValue = (((-0.495867768595) * @heightValue ** 2) + ((9.42148760331) * @heightValue) - 29.7520661157).round
      puts 'there are ' + @fruitValue.to_s + ' oranges on the tree!'
    end
    if @heightValue <= 4
      @heightValue = @heightValue + 1
      puts 'tree is ' + @heightValue.to_s + ' feet tall!'
      puts 'it is still to young to produce fruit!'
    end
    if @heightValue > 14
      puts 'the tree has died'
      exit
    end
  end
  def wait
    puts @heightValue.to_s + 'ft tall'
    yearPasses
  end
  def pickAnOrange
    if @fruitValue > 0
      puts 'you pick and eat an orange'
      puts 'it is delicious'
      @fruitValue = @fruitValue - 1
      puts 'there are ' + @fruitValue.to_s + ' oranges left'
    else
      puts 'there are no oranges to eat!'
    end
  end
end