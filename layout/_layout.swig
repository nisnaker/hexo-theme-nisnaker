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
			{% include '_partials/sidebar.swig' %}
		</div>
	</div>
	{% include '_partials/footer.swig' %}
</body>
</html>