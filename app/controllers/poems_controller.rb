class PoemsController < ApplicationController

	def index

		@aux = Poem.all		 
		@poems = []

		@aux.each do |poem|
			@poems.push(poem) if poem.published
		end
		@poems
	end

	def show
		 @poems = Poem.find(params[:id])
	end
end
