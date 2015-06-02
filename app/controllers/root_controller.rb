class RootController < ApplicationController
  def mymethod
    logger.info request.inspect
    #byebug
    if request.xhr?
      logger.info 'ajax request'
      my_layout = 'application_ajax'
    elsif request.format.symbol == :html
      my_layout = 'application'
    else
      my_layout = 'application_ajax'
    end
    render :mymethod, layout: my_layout
  end
end
