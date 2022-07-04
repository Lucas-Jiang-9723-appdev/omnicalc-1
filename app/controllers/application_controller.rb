class ApplicationController < ActionController::Base

  def square_calc
    render({:template => "calculation_temp/square.html.erb" })
  end

  def square_result
    @input = params.fetch("input_num")
    @squared_input = @input.to_f**2
    render({:template => "calculation_temp/square_result.html.erb"})
  end
end
