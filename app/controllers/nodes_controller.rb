class NodesController < ApplicationController
  
  def index
    @addresses = Ipv4Address.order(:int).all
  end
  
end
