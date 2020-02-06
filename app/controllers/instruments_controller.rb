class InstrumentsController < ApplicationController
    def show
        @instrument = Instrument.find(params[:id])
    end

    def index
        @instruments = Instrument.all
    end
    
    
end
