require './lib/Main'

describe GUI do

    it 'GUI exists' do
        expect(subject).to be_an(FXApp) # should be a fx application
    end
    it 'can create application' do
        expect(subject).to respond_to(:create) # should have a method called create
    end
    
    describe 'GUI Features' do
        # expect(subject)
    end

end