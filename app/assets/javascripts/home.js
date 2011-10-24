/*
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
*/

$(function() {
		$("#show_external_signup_form").bind('click', function() {
			$("#signup_form").slideDown('slow', function() {
				// animation finished
			});
			return false;
		});
		$("#signup_close").bind('click', function() {
			$("#signup_form").slideUp('slow', function() {
				// animation finished
			});
			return false;
		});
});