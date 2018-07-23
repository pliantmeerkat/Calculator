require './lib/Main'

describe GUI do
  app = FXApp.new
  let(:application_class) { double :application_class, new: :app }
  let(:calculator_class)  { double :calculator_class, new: :calc }
  let(:main_window_class) { double :main_window_class, new: :mw }
  let(:mw)                { doube :mw }
  let(:calc)              { double :calc }
  let(:subject)           { described_class.new(app, calculator_class) }
  context 'Feature 1 - Screen' do
    describe '#main_screen' do
      it { expect(subject).to respond_to(:main_screen) }
    end
  end
  context 'Feature 2 - Numeric buttons' do
    describe '#num_button' do
      it { expect(subject).to respond_to(:num_button) }
    end
  end
  context 'Feature 3 - Operator buttons' do
    describe '#oper_button' do
      it { expect(subject).to respond_to(:oper_button) }
    end
  end
  context 'Feature 4 - Run' do
    describe '#run' do
      it { expect(subject).to respond_to(:run) }
    end
  end
end
