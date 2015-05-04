retrieveChallenge = () ->
	$.ajax
		url: '/challenges/all'
		error: (jqXHR, textStatus, errorThrown) ->
			console.log('AJAX error: ' + textStatus)
		success: (data) ->
			index = Math.floor(Math.random() * data.length)
			$('#challenge_body').html data[index].text
			$('#challenge_author').html('submitted by: ' + data[index].author)


$ ->
	retrieveChallenge()

	$('#reroll').click ->
		retrieveChallenge()