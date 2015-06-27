{% extends '_layout.swig' %}

{% block title %}{{ config.title }}{% endblock %}

{% block main %}
{% for post in page.posts %}
<div class="shadowbox post">
	<h2><a href="{{ url_for(post.path) }}">{{ post.title }}</a></h2>
	<div class="text">
		{% if post.description %}
			{{ post.description }}
			<br>
			<a href="{{ url_for(post.path) }}" class="more">More</a>
		{% elif post.excerpt %}
			{{ post.excerpt }}
			<br>
			<a href="{{ url_for(post.path) }}" class="more">More</a>
		{% else %}
			{{ post.content }}
		{% endif %}
	</div>
	<div class="postfoot">
		<span>{{ date(post.date, 'YYYY-MM-DD') }}</span> / 
		<span>
			{{ __('post.cate') }} : 
			{% if post.categories and post.categories.length %}
			{% for cat in post.categories %}
				<a href="{{ url_for(cat.path) }}">{{ cat.name }}</a>
			{% endfor %}
			{% endif %}
		</span> / 
		<span>
			{{ __('post.tag') }} : 
			{% if post.tags and post.tags.length %}
			{% for tag in post.tags %}
				<a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
			{% endfor %}
			{% endif %}
		</span>

	</div>
</div>
{% endfor %}

{% include '_partials/pagination.swig' %}

{% endblock %}