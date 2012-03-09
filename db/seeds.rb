# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

addresses = [
  Ipv4Address.create(:ip => '172.16.0.1'),
  Ipv4Address.create(:ip => '172.16.0.2'),
  Ipv4Address.create(:ip => '172.16.0.3'),
  Ipv4Address.create(:ip => '172.16.0.4'),
  Ipv4Address.create(:ip => '245.255.255.255'),
  Ipv4Address.create(:ip => '172.16.0.100'),
  Ipv4Address.create(:ip => '172.16.0.101')
]

nodes = [
  Node.create(:hostname => 'app001'),
  Node.create(:hostname => 'app002'),
  Node.create(:hostname => 'app003'),
  Node.create(:hostname => 'app004'),
  Node.create(:hostname => 'router001'),
  Node.create(:hostname => 'db01'),
]

nodes[0].ipv4_addresses << addresses[0]
nodes[1].ipv4_addresses << addresses[1]
nodes[2].ipv4_addresses << addresses[2]
nodes[3].ipv4_addresses << addresses[3]
nodes[4].ipv4_addresses << addresses[4]
nodes[5].ipv4_addresses << addresses[5]
nodes[5].ipv4_addresses << addresses[6]