require 'spec_helper'

describe Zpl::FieldBuilder do

  it 'returns a field' do
    Zpl::Field.build {}.should be_a(Zpl::Field)
  end

  describe '#default_width' do

    it 'adds an Field Origin to the field' do
      Zpl::Field.build { origin [46, 2] }.to_s.should =~ /\^FO46,2/
    end

    it 'adds a Scalable/Bitmapped Font to the field' do
      Zpl::Field.build { font :a }.to_s.should                                            =~ /\^AA/
      Zpl::Field.build { font :b, :orientation => :n }.to_s.should                        =~ /\^ABN/
      Zpl::Field.build { font :c, height: 30 }.to_s.should                                =~ /\^AC,30/
      Zpl::Field.build { font :d, height: 15, width: 20 }.to_s.should                     =~ /\^AD,15,20/
      Zpl::Field.build { font :e, :orientation => :r, height: 15, width: 20 }.to_s.should =~ /\^AER,15,20/
    end

  end

end
