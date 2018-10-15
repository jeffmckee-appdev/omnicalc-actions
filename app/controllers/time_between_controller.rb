class TimeBetweenController < ApplicationController
  def time_between
    @starting = Chronic.parse(params.fetch("starting_time"))
    @ending = Chronic.parse(params.fetch("ending_time"))

    # ================================================================================
    # Your code goes below.
    # The start time is in the Time @starting.
    # The end time is in the Time @ending.
    # Note: Ruby stores Times in terms of seconds since Jan 1, 1970.
    #   So if you subtract one time from another, you will get an integer
    #   number of seconds as a result.
    # ================================================================================

    @seconds = (@staring.to_f - @ending.to_f).to_s
    @minutes = ((@staring.to_f - @ending.to_f)/60).to_s
    @hours = ((@staring.to_f - @ending.to_f)/60/60).to_s
    @days = ((@staring.to_f - @ending.to_f)/60/60/24).to_s
    @weeks = ((@staring.to_f - @ending.to_f)/60/60/24/7).to_s
    @years = ((@staring.to_f - @ending.to_f)/60/60/24/365).to_s

    # ================================================================================
    # Your code goes above.
    # ================================================================================

    render("time_between_templates/time_between.html.erb")
  end

  def time_between_form
    render("time_between_templates/time_between_form.html.erb")
  end
end
