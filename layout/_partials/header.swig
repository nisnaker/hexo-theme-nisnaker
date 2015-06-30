<div class="header shadow">
	<div class="headercnt clear">
		<h1><a href="{{ config.root }}">{{ config.title }}</a></h1>
		
		{% if theme.menu %}
		<ul class="menu">
			{% for name, path in theme.menu %}
				<li><a href="{{ url_for(path) }}">{{ __('menu.' + name) }}</a></li>
			{% endfor %}
		</ul>
		{% endif %}
	</div>
</div>