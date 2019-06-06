"use strict";

$(function() {
	$('#hw').change(function() {
        // var file = 'homeworks/'+$('#hw').val();
         var file = 'testText/'+$('#hw').val();
        
		$.ajax({
            'url': file,
            // 'url' :'https://github.com/wilvolcy/WAP/blob/master/Images/index.html',
			'type': 'GET',
			'success': ajaxSuccess,
			'error': ajaxFailure
		});
	});
});

function ajaxSuccess(data) {
	$('#output').val(data);
}

function ajaxFailure(xhr, status, exception) {
  console.log(xhr, status, exception);
}

// alert("test");

// $.get('https://www.google.com/images/branding/product/ico/googleg_lodp.ico');