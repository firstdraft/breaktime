class BreaksController < ApplicationController
  def new
  end

  def countdown
    @min_break_length = params[:break_length].to_i

    @break_started_at = Time.now

    if params[:round_up] == "1"
      @distance_to_next_five = (5 - (@break_started_at.min % 5))

      @distance_to_next_five = @distance_to_next_five == 5 ? 0 : @distance_to_next_five

      @break_length = @distance_to_next_five.minutes + @min_break_length.minutes
    else
      @break_length = @min_break_length.minutes
    end

    @break_ends_at = @break_started_at + @break_length

    @break_ends_at_without_seconds = @break_ends_at.strftime("%I:%M%P")

    @break_ends_at_for_timer = @break_ends_at.strftime("%b %-d, %Y %H:%M")
  end
end
