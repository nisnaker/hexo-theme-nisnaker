{% extends '_layout.swig' %}
{% import '_macro/post-list.swig' as post_template %}

{% block title %}{{ __('menu.archives') }} // {{ config.title }}{% endblock %}

{% block main %}
<div class="archive">
{% for post in site.posts %}
	{% set year_month %}
	{% set post.year_month = date(post.date, 'YYYY-MM') %}

	{% if post.yead_month !== year_month %}
		{% set year_month = post.year_month %}
		<div class="archive-date">
			{{ year_month }}
		</div>

		{{ post_template.render(post) }}
	{% endif %}
{% endfor %}

{% include '_partials/pagination.swig' %}
</div>
{% endblock %}