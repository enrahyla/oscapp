class EventsController < ApplicationController

	def events
		@events = Event.all
	end
end
