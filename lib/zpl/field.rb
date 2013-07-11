class Zpl::Field

  include Zpl::Commands::FieldOrigin
  include Zpl::Commands::Font

  attr_accessor :data

  def initialize
    @data = []
  end

  SUFFIX = '^FS'

  def self.build &block
    builder = Zpl::FieldBuilder.new
    builder.instance_eval &block
    builder.field
  end

  def to_s
    "#{ data.join '' }#{ SUFFIX }"
  end

end
