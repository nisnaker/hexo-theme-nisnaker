{% extends '_layout.swig' %}
{% import '_macro/post-list.swig' as post_template %}

{% block title %}{{ __('menu.archives') }} // {{ config.title }}{% endblock %}

{% block main %}
<div class="archive shadowbox">
{% for post in page.posts.sort('-date') %}
	{% set year_month %}
	{% set post.year_month = date(post.date, 'YYYY-MM') %}

	{% if post.year_month !== year_month %}
		{% set year_month = post.year_month %}
		<h2 class="archive-date">
			{{ year_month }}
		</h2>
	{% endif %}

	{{ post_template.render(post) }}
{% endfor %}

</div>

{% include '_partials/pagination.swig' %}

{% endblock %}