class Ipv4Address < ActiveRecord::Base
  belongs_to :node
  
  def to_s
    ip
  end
  
  def ip=(ip)
    write_attribute(:int, Ipv4Address::ip2int(ip))
  end
  
  def ip
    Ipv4Address::int2ip(int)
  end
  
  # int to octet conversion
  class << self
    def int2ip(int)
    	tmp = int.to_i
  		parts = []

  		3.times do |i|
  			tmp = tmp / 256.0
  			parts << (256 * (tmp - tmp.to_i)).to_i
  		end

  		parts << tmp.to_i
  		parts.reverse.join('.')
    end
    
    def ip2int(ip)
      return 0 unless ip =~ /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/

  		v = ip.split('.').collect { |i| i.to_i }
  		return (v[0] << 24) | (v[1] << 16) | (v[2] << 8 ) | (v[3]);
    end
  end
  
end
