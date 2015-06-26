<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

{% if theme.google_site_verification %}
  <meta name="google-site-verification" content="{{ theme.google_site_verification }}" />
{% endif %}


{% if page.tags and page.tags.length %}
  <meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }},{% endfor %}" />
{% elif theme.keywords %}
  <meta name="keywords" content="{{ theme.keywords }}" />
{% endif %}

{% if config.description %}
    <meta name="description" content="{{ config.description }}" />
{% endif %}

{% if theme.rss %}
  <link rel="alternate" href="{{ url_for(theme.rss) }}" title="{{ config.title }}" type="application/atom+xml" />
{% endif %}

{% if theme.fancybox %}
  <link rel="stylesheet" type="text/css" href="{{ url_for(theme.css) }}/jquery.fancybox.min.css?v=2.1.5" media="screen" />
{% endif %}

<link rel="stylesheet" type="text/css" href="{{ url_for(theme.css) }}/site.css?v={{ theme.version }}"/>
