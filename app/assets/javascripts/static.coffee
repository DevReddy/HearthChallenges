filterChecks = ->
	$('.rel_class').click ->
		$('#all_classes').removeClass 'active'
	$('#all_classes').click ->
		$('.rel_class').removeClass 'active'

retrieveChallenge = ->
	$.ajax
		url: '/challenges/all'
		error: (jqXHR, textStatus, errorThrown) ->
			console.log('AJAX error: ' + textStatus)
		success: (data) ->
			index = Math.floor(Math.random() * data.length)
			if data[index]
				text = data[index].text
				rel_class = data[index].rel_class
				author = 'submitted by: /u/' + data[index].author
			else
				text = "There doesn't appear to be any challenges yet!"
				rel_class = ""
				author = "Sign in with Reddit to be the first to submit a challenge."
			$('#challenge_body').html text
			$('#challenge_class').html rel_class
			$('#challenge_author').html author

setListener = ->
	filterChecks()
	retrieveChallenge()
	$('#reroll').click ->
		retrieveChallenge()



$ ->
	setListener()
	$(document).on('page:load', setListener)