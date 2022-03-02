class BreaksController < ApplicationController
  def new
  end

  def countdown
    @min_break_length = params[:break_length].to_i

    @current_time = Time.now

    if params[:round_up] == "1"
      @distance_to_next_five = (5 - (@current_time.min % 5))

      @distance_to_next_five = @distance_to_next_five == 5 ? 0 : @distance_to_next_five
  
      @break_length = @distance_to_next_five.minutes + @min_break_length.minutes
    else
      @break_length = @min_break_length.minutes
    end

    @break_end = @current_time + @break_length
  
    @break_end_without_seconds = @break_end.strftime("%I:%M%P")
    
    @break_end_for_timer = @break_end.strftime("%b %-d, %Y %H:%M:%S")
  end
end
