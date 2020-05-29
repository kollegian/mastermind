class Selections
  attr_accessor :colors, :selected
  def initialize
    @colors=["Black", "Yellow", "Blue", "Cyan", "Purple", "White"]
    @selected=[]
  end
  def list
    @colors.each do |color|
      print color
      print " "
    end
    puts
  end
  def select(a)
    @selected.push(a)
  end
  def comp_select
    @selected=@colors.sample(4)
    @selected.map! {|a| a.upcase}
  end

end