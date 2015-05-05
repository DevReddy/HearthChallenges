retrieveChallenge = () ->
	$.ajax
		url: '/challenges/all'
		error: (jqXHR, textStatus, errorThrown) ->
			console.log('AJAX error: ' + textStatus)
		success: (data) ->
			index = Math.floor(Math.random() * data.length)
			if data[index]
				text = data[index].text
				author = 'submitted by: ' + data[index].author
			else
				text = "There doesn't appear to be any challenges yet!"
				author = "Sign in with Reddit to be the first to submit a challenge."
			$('#challenge_body').html text
			$('#challenge_author').html author

$(window).load ->
	retrieveChallenge()

	$('#reroll').click ->
		retrieveChallenge()