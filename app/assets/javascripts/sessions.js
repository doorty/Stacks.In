/*
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
*/

$(function() {
		$("#show_forgot_password_form").bind('click', function() {
			$("#forgot_password").slideToggle('slow', function() {
				// animation finished
			});
			return false;
		});
});