{% macro render(post) %}

<div class="archive-title">
	<span>{{ date(post.date, 'MM-DD') }}</span>
	<a href="{{ url_for(post.path) }}">{{ post.title }}</a>
</div>

{% endmacro %}