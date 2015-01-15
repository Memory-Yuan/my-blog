# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('#edit-tags-modal').on('show.bs.modal', (e)->
		$('#edit-tags-modal .loading-icon').show()
	)
