<div class="footer shadow">
	<div class="footwrap">
		<span class="author">
		&copy; {{ config.author }}
		{% if config.email %}
		( {{ config.email }} )
		</span>
		<br />
		<span class="power">
			Powered by <a target="_blank" href="http://hexo.io">Hexo</a> | Theme by <a href="https://github.com/nisnaker/hexo-theme-nisnaker" target="_blank">Nisnaker</a>
		</span>
	</div>
</div>

{% set ga = config.google_analytics %}

{% if theme.google_analytics %}
{% set ga = theme.google_analytics %}
{% endif %}

{% if ga %}
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', '{{ ga }}', 'auto');
  ga('send', 'pageview');
</script>
{% endif %}

<script type="text/javascript" src="{{ url_for(theme.js) }}/jquery-1.11.3.min.js"></script>
{% if theme.fancybox %}
<script type="text/javascript" src="{{ url_for(theme.js) }}/jquery.fancybox.pack.js"></script>
{% endif %}

{% if theme.qrcode %}
<script type="text/javascript" src="{{ url_for('js') }}/jquery.qrcode.js"></script>
<script type="text/javascript" src="{{ url_for('js') }}/qrcode.js"></script>
{% endif %}

<script type="text/javascript" src="{{ url_for(theme.js) }}/app.js?v={{ theme.version }}"></script>	
