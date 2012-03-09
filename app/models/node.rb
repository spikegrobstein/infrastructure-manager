class Node < ActiveRecord::Base
  has_many :addresses, :class_name => 'Ipv4Address'

end
