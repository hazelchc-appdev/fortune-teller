class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

def losers
  @unlucky = Array.new

  5.times do
    unlucky_rand = rand(1...100)

    @unlucky.push(unlucky_rand)
  end 

  render({ :template => "lottery_stuff/ohno.html.erb"})
end

end
