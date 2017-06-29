<!-- Closing tags for main content box -->
</div>

</section>
</section>



<footer id="footer">
    	<ul class="horizontal menu">
		  <li><a href="/about">About</a></li>
		  <li><a href="/contact">Contact</a></li>
		  <li><a href="/request">Request a Book</a></li>
		</ul>
</footer>


<script src="js/elsevier.js"></script>
<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/what-input.js"></script>
<script src="js/vendor/foundation.js"></script>
<script src="js/app.js"></script>
<script>
	$(document).foundation();
	
	var body = document.body,
    html = document.documentElement;

	var height = Math.max(body.scrollHeight, body.offsetHeight, 
                       html.clientHeight, html.scrollHeight, html.offsetHeight );
	
	$('footer').css({'position': 'absolute', 'top': height});
</script> 
</body>