$(function () {
	var toc = $('.toc');
	if(!toc.length) return;

	var progress = $('.progress');
	var latest = $('.side .latest');

	$(document).scroll(function () {
		var scrollTop = $(document).scrollTop();

		// progress bar
		var percent = scrollTop / ($(document).height() - $(window).height());
		progress.css('width', percent * 100 + '%');

		// top fixed
		var top = latest.offset().top + latest.height()
		if(scrollTop > top) {
			toc.addClass('toc-fixed');
		} else {
			toc.removeClass('toc-fixed');
		}
	});
});

// fancybox
$(function () {
	if(! $.fancybox) return;

	$('.text').each(function(i){
		$(this).find('img').each(function () {
			var alt = this.alt;

			if(alt){
				// $(this).after('<span class="imgalt">'+alt+'</span>')
			}

			$(this).wrap('<a href="'+this.src+'" title="'+alt+'" class="fancybox" rel="gallery'+i+'" />')
		});
	});

	$(".fancybox").fancybox({
		openEffect	: 'none',
		closeEffect	: 'none',
		helpers : {
			title : {
				type : 'over'
			}
		}
	});
});

// qrcode
$(function () {
	var qrcode = $('.qrcode');
	if(! qrcode.length) return;
	if(! qrcode.qrcode) return;
	
	qrcode.qrcode({
		text: window.location.href,
		render: 'canvas',
		width: 200,
		height: 200,
		typeNumber: -1,
		correctLevel: QRErrorCorrectLevel.H,//纠错等级
		background: '#fff',
		foreground: '#E8A9C7'
	});
	
});