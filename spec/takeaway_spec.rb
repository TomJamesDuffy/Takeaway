require 'takeaway.rb'

describe Takeaway do
  subject(:takeaway) {Takeaway.new}
  let(:textsender) {double :textsender}

  describe '#show_menu' do
    it 'shows the menu' do
      expect(subject.show_menu).to be_instance_of(Array)
    end
  end

  describe '#place_order' do
    before do
      allow(subject).to receive(:gets).and_return("1", "2", "Y")
    end
    it 'prompts the user to enter items' do
      expect{subject.place_order}.to change{subject.order.length}.by(1)
      subject.place_order
    end
  end

  describe '#guess_amount' do
    before do
      allow(subject).to receive(:gets).and_return("10")
    end
    it 'prompts the user to guess the amount' do
      expect(subject.guess_amount).to eq("10")
    end
  end

  describe '#receipt' do
    it 'puts the total to the screen' do
      expect(subject.receipt).to eq(puts "The final amount is 0")
    end
  end

  describe '#sms_confirmation' do
    it 'creates a new text sender object' do
      allow(TextSender).to receive(:new).and_return(textsender) 
      expect(subject.sms_confirmation).to eq(textsender)
    end
  end
end
