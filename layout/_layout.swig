<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>{% block title %}{% endblock %}</title>
	{% include '_partials/head.swig' %}

</head>
<body>
	{% include '_partials/header.swig' %}
	<div class="container clear">
		<div class="main">
			{% block main %}{% endblock %}
		</div>
		<div class="side">
			{% block sidebar %}
			{% include '_partials/sidebar.swig' %}
			{% endblock %}
		</div>
	</div>
	{% include '_partials/footer.swig' %}
</body>
</html>