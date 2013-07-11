class Zpl::Label

  include Zpl::Commands::DefaultWidth
  include Zpl::Commands::Home
  include Zpl::Commands::Orientation
  include Zpl::Commands::PrintRate
  include Zpl::Commands::Quantity

  attr_accessor :data

  def initialize
    @data = []
  end

  PREFIX = '^XA'
  SUFFIX = '^XZ'

  def self.build &block
    builder = Zpl::LabelBuilder.new
    builder.instance_eval &block
    builder.label
  end

  def to_s
    "#{ PREFIX }#{ data.join '' }#{ SUFFIX }"
  end

end
