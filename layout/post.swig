{% extends '_layout.swig' %}

{% block title %}{{ page.title }} // {{ config.title }}{% endblock %}

{% block main %}
<div class="post shadowbox">
	<h2><a href="{{ url_for(page.path) }}">{{ page.title }}</a></h2>
	<div class="text">
		{{ page.content }}
	</div>
	<div class="postfoot">
		<span>{{ date(page.date, 'YYYY-MM-DD') }}</span> /
		<span>
			{{ __('post.cate') }} : 
			{% if page.categories and page.categories.length %}
			{% for cat in page.categories %}
				<a href="{{ url_for(cat.path) }}">{{ cat.name }}</a>
			{% endfor %}
			{% endif %}
		</span> /
		<span>
			{{ __('post.tag') }} : 
			{% if page.tags and page.tags.length %}
			{% for tag in page.tags %}
				<a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
			{% endfor %}
			{% endif %}
		</span>
	</div>
</div>


{% if page.comments and config.duoshuo_shortname %}
<div class="comments shadowbox">
	<div class="ds-thread" data-thread-key="{{ page.path }}" date-title="{{ page.title }}" data-url="{{ page.permalink }}"></div>
</div>
<script type="text/javascript">
var duoshuoQuery = {short_name:"{{ config.duoshuo_shortname }}"};
(function() {
  var ds = document.createElement('script');
  ds.type = 'text/javascript';ds.async = true;
  ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
  ds.charset = 'UTF-8';
  (document.getElementsByTagName('head')[0]
  || document.getElementsByTagName('body')[0]).appendChild(ds);
})();
</script>
{% endif %}

{% endblock %}


{% import '_macro/sidebar.swig' as side %}

{% block sidebar %}
{{ side.render(true) }}
{% endblock %}