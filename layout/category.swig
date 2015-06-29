{% extends '_layout.swig' %}
{% import '_macro/post-list.swig' as post_template %}

{% block title %}{{ __('post.cate') }} : {{ page.category }} // {{ config.title }}{% endblock %}

{% block main %}
<div class="shadowbox cate-title">
	<h2 class="title">{{ __('post.cate') }} : {{ page.category }}</h2>
</div>

<div class="archive shadowbox">
{% for post in page.posts.sort('-date') %}
	{{ post_template.render(post) }}
{% endfor %}

</div>

{% include '_partials/pagination.swig' %}

{% endblock %}