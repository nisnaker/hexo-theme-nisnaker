{% extends '_layout.swig' %}

{% block title %}{{ config.title }}{% endblock %}

{% block main %}
{% for post in page.posts %}
<div class="shadowbox post">
	<h2 class="title"><a href="{{ url_for(post.path) }}">{{ post.title }}</a></h2>
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
			{{ list_categories(post.categories, {
				show_count: false,
				separator: ' / ',
				style: 'span'
			}) }}
		</span> ||
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