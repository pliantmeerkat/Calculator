require './lib/Main'
require 'fox16'
include Fox

describe GUI do

    it 'GUI exists' do
        expect(subject).to be_an(FXMainWindow) # should be a fx application
    end
    it 'can create application' do
        expect(subject).to respond_to(:create) # should have a method called create
    end
    
    describe 'GUI Features' do
        describe 'buttons' do
            it 'has an add button that works' do
               expect(subject).to respond_to(:add) 
            end
        end
    end

end