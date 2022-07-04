class ApplicationController < ActionController::Base

  def square_calc
    render({:template => "calculation_temp/square.html.erb" })
  end

  def square_result
    @input = params.fetch("input_num")
    @squared_input = @input.to_f**2
    render({:template => "calculation_temp/square_result.html.erb"})
  end

  def square_root_calc
    render({:template => "calculation_temp/square_root.html.erb"})
  end

  def square_root_result
    @input = params.fetch("input_num")
    @square_rooted_input = @input.to_f**0.5
    render({:template => "calculation_temp/square_root_result.html.erb"})
  end

  def random_gen
    render({:template => "calculation_temp/random_generate.html.erb"})
  end
  
  def random_result
    @min = params.fetch("min_input")
    @max = params.fetch("max_input")
    @pick = rand(@min.to_f..@max.to_f)
    render({:template => "calculation_temp/random_result.html.erb"})
  end
  
  def payment_calc
    render({:template => "calculation_temp/payment_input.html.erb"})
  end

  def payment_result
    @apr = params.fetch("apr").to_f
    @yrs = params.fetch("yrs").to_f
    @principal = params.fetch("principal").to_f
    @payment = @principal*(@apr/1200)*(@apr/1200+1)**(@yrs*12)/((@apr/1200+1)**(@yrs*12)-1)
    render({:template => "calculation_temp/payment_result.html.erb"})
  end
end
