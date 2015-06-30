{% macro render(is_post) %}

{% if is_post %}
<dl class="shadowbox qrcodebox">
	<dt>{{ __('side.qrcode') }}</dt>
	<dd class="qrcode"></dd>
</dl>
{% else %}
<dl class="shadowbox">
	<img src="{{ url_for(theme.img) }}/flypig.jpg" style="width:220px;height:220px;">
</dl>
{% endif %}

<dl class="shadowbox">
	<dt>{{ __('side.search') }}</dt>
	<dd>
		<form action="//google.com/search" accept-charset="utf-8" target="_blank">
			<input type="search" name="q" results="0" placeholder="{{ __('side.search_holder') }}">
			<input type="hidden" name="sitesearch" value="{{ config.url.split('://')[1] }}">
		</form>
	</dd>
</dl>

<dl class="shadowbox">
	<dt>{{ __('side.recent') }}</dt>
	{% set posts = site.posts.sort('-date') %}
	{% for post in posts.slice('0', '10') %}
	<dd><a href="{{ url_for(post.path) }}">{{ post.title }}</a></dd>
	{% endfor %}
</dl>

<dl class="shadowbox cate">
	<dt>{{ __('side.cates') }}</dt>
		{% for cate in site.categories.sort('name') %}
		<dd><a href="{{ url_for(cate.path) }}">{{ cate.name }} ({{ cate.posts.length }})</a></dd>
		{% endfor %}
</dl>

{% if is_post %}
{% set toc = toc(page.content, {"class": "nav", list_number: true}) %}
<dl class="shadowbox toc">
	<dt>{{ __('side.toc') }}</dt>
	<div class="progress"></div>
	{% if toc.length === 0 %}
	<dd>{{ __('side.notoc') }}</dd>
	{% else %}
	{{ toc }}
	{% endif %}
</dl>

{% endif %}

{% endmacro %}