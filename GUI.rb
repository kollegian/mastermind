require_relative 'Selections'

class GUI
  def initialize
    @game=Selections.new
    @guess=[]   
  end
  def start
    puts "Hello and Welcome. Please select 4 colors from the down list.\n"
    @game.list
    #
    #  4.times do
    #  x=gets.chomp
    #  x=x.upcase
    #  @game.select(x)  
    #end 
    
    @game.comp_select
    puts "The list is completed"
  end
  def guess
    puts "Please choose 4 colors: \n"
    @game.list
    4.times do
      x=gets.chomp.upcase
      @guess.push(x)
    end
    @guess.each do |a|
      print "#{a} - "
    end
    puts  
  end
  def play
    i=0
    
    while i<12
        puts "You have #{12-i} remaining rights."
      tot_correct=0  
      corr_position=0
      @guess=[]
      guess
      for k in 0..3 do
        if @game.selected[k]== @guess[k]
          corr_position+=1
        end
        if @game.selected.include?(@guess[k])
          tot_correct +=1
        end
      end     
      if corr_position==4
        puts "Well done, You have won!!"
        break
      end
      puts "You have guessed #{tot_correct} totally and #{corr_position} was in the correct position."
      i+=1
    end
    if i==12
    puts "Apologies you lost. The correct definition should have been: "
    p @game.selected
    end    
  end
end