require 'spec_helper'

describe Zpl::Label do

  describe 'constants' do

    it 'PREFIX' do
      Zpl::Label::PREFIX.should == '^XA'
    end

    it 'SUFFIX' do
      Zpl::Label::SUFFIX.should == '^XZ'
    end

  end

  describe 'commands' do

    let(:label) { Zpl::Label.new }

    describe '#default_width=' do

      it 'adds an Bar Code Field Default to the label' do
        label.default_width = 3
        label.data.should include('^BY3')
      end

    end

    describe '#home=' do

      it 'adds a Label Home command to the label' do
        label.home = [5, 10]
        label.data.should include('^LH5,10')
      end

    end

    describe '#orientation=' do

      it 'adds a Field Orientation command to the label' do
        label.orientation = :n
        label.data.should include('^FWN')
      end

    end

    describe '#print_rate=' do

      it 'adds an Bar Code Field Default to the label' do
        label.print_rate = :a
        label.data.should include('^PRA,,')
      end

    end

    describe '#quantity=' do

      it 'adds an Bar Code Field Default to the label' do
        label.quantity = 4
        label.data.should include('^PQ4')
      end

    end

  end

  its(:to_s) { should =~ /^\^XA/ }
  its(:to_s) { should =~ /\^XZ$/ }

end
