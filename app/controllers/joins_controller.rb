class JoinsController < ApplicationController
    def new
        @join = Join.new
        @artists = Artist.all
        @instruments = Instrument.all
    end

    def create
        @join = Join.new(join_params)
        if @join.valid?
            @join.save
            redirect_to artist_path(@join.artist)
        else
            flash[:errors] = @join.errors.full_messages
            redirect_to new_join_path
        end
    end
    
    
    private

    def join_params
        params.require(:join).permit(:artist_id, :instrument_id)
    end
end
