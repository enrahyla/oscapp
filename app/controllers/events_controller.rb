class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def announcements
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
	@event = Event.new 
	end

	def create
		@event = Event.new(params[:event])
		@event.save
		redirect_to event_path(@event)
	end

	def destroy	
		@event = Event.find(params[:id])
		@event.destroy
		flash.notice = "Event '#{@event.title}' Destroyed"
		redirect_to events_path(@events)
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.update_attributes(params[:event])
		flash.notice = "Event '#{@event.title}' Updated!"
		redirect_to event_path(@event)
	end
end
