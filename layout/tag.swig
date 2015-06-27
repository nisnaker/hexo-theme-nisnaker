{% extends '_layout.swig' %}
{% import '_macro/post-list.swig' as post_template %}

{% block title %}{{ __('post.tag') }} : {{ page.tag }} // {{ config.title }}{% endblock %}

{% block main %}
<div class="shadowbox tag-title">
	<h2>{{ __('post.tag') }} : {{ page.tag }}</h2>
</div>

<div class="archive shadowbox">
{% for post in page.posts.sort('-date') %}
	{{ post_template.render(post) }}
{% endfor %}

</div>

{% include '_partials/pagination.swig' %}

{% endblock %}