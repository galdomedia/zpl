module Zpl
end

require 'Zpl/commands'

%w[ field label ].each do |lib|
  require "Zpl/#{ lib }"
  require "Zpl/#{ lib }_builder"
end
