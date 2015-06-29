$(function () {
	var toc = $('.toc');
	if(!toc.length) return;

	var progress = $('.progress');
	var cate = $('.side .cate');

	$(document).scroll(function () {
		var scrollTop = $(document).scrollTop();

		// progress bar
		var percent = scrollTop / ($(document).height() - $(window).height());
		progress.css('width', percent * 100 + '%');

		// top fixed
		var top = cate.offset().top + cate.height()
		if(scrollTop > top) {
			toc.addClass('toc-fixed');
		} else {
			toc.removeClass('toc-fixed');
		}
	});
});

$(function () {
	if(! $.fancybox) return;

	$('.text').each(function(i){
		console.log(i)
		$(this).find('img').each(function () {
			var alt = this.alt;

			if(alt){
				$(this).after('<span class="imgalt">'+alt+'</span>')
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