require 'spec_helper'

describe Zpl::Field do

  describe 'constants' do

    it 'SUFFIX' do
      Zpl::Field::SUFFIX.should == '^FS'
    end

  end

  describe 'commands' do

    let(:field) { Zpl::Field.new }

    describe '#origin=' do

      it 'adds an Field Origin to the field' do
        field.origin = [46, 2]
        field.data.should include('^FO46,2')
      end

    end

  end

  its(:to_s) { should =~ /\^FS$/ }

end
