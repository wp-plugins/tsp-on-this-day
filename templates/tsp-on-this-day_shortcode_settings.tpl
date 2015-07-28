 <div class="tsp_container">
	<div class="icon32" id="tsp_icon"></div>
	<h2>On This Day Default Settings (The Software People)</h2>
	<div class="mycomment">
		<p><h3>Using On This Day Shortcode <a href="#" class="toggle">(hide/show details)</a>:</h3></p>
		<div class="note-details">
			<ul style="list-style-type:square;">
				<li>Changing the default post options below allows you to place <strong>[tsp-on-this-day]</strong> shortcode tag into any post or page with these options.</li>
				<li>However, if you wish to add different options to the <strong>[tsp-on-this-day]</strong> shortcode please use the following settings:
					<ul style="padding-left: 30px;">
						<li>Title: <strong>title="Title of Posts"</strong></li>
						<li>Max Words in Title: <strong>max_words=10</strong></li>
						<li>Show Event Data: <strong>show_event_data="Y"</strong>(Options: Y, N - Requires The Event Calendar plugin &amp; fpost_type="tribe_events")</li>
						<li>Show Author: <strong>show_author="Y"</strong>(Options: Y, N)</li>
						<li>Show Publish Date: <strong>show_date="Y"</strong>(Options: Y, N)</li>
						<li>Show Quotes: <strong>show_quotes="Y"</strong>(Options: Y, N)</li>
						<li>Show Private Posts: <strong>show_private="N"</strong>(Options: Y, N)</li>
						<li>Show Posts with No Media Content: <strong>show_text_posts="N"</strong>(Options: Y, N)</li>
						<li>Keep Formatting: <strong>keep_formatting="N"</strong>(Options: Y, N)</li>
						<li>CSS Style tags: <strong>style="color: red;"</strong> (CSS tags seperated by semicolon)</li>
						<li>Number Posts: <strong>number_posts="5"</strong></li>
						<li>Read More Text: <strong>read_more_text="Continue Reading <span class="meta-nav">&rarr;</span>"</strong></li>
						<li>No Posts Text: <strong>no_posts_msg="<em>No Posts Found On This Day</em>"</strong></li>
						<li>Excerpt Length (Layouts #0 & #3): <strong>excerpt_min="60"</strong></li>
						<li>Excerpt Length (Layouts #1, #2, #4[Slider], #5): <strong>excerpt_max="100"</strong></li>
						<li>Post Class: <strong>post_class=""</strong>(Example: columns1_3, columns1_2)</li>
						<li>Post Type: <strong>fpost_type="post"</strong>(Options: post, varies)</li>
						<li>Slider Width: <strong>slider_width="865"</strong></li>
						<li>Slider Height: <strong>slider_height="365"</strong></li>
						<li>Layout: <strong>layout="0"</strong>(Options: 0, 1, 2, 3, 4, 5)
							<ul style="padding-left: 30px;">
								<li>0: Left: Image - Right: Title, Text (Thumbnail)</li>
								<li>1: Top: Title - Left: Image - Right: Text (Featured-Medium)</li>
								<li>2: Left: Title, Image - Right: Text (Featured-Large)</li>
								<li>3: Left: Image - Right: Text (Thumbnail/No title)</li>
								<li>4: Slider: Title, Image - Right: Text (Featured-Large)</li>
								<li>5: Top: Image, Bottom: Title, B ottom-Last: Text</li>
							</ul>
						</li>
						<li>Order By: <strong>order_by="DESC"</strong>(Options: rand,title,date,author,modified,ID)</li>
						<li>Show Thumbnails: <strong>show_thumb="Y"</strong>(Options: Y, N)</li>
						<li>Thumbnail Width: <strong>thumb_width="80"</strong></li>
						<li>Thumbnail Height: <strong>thumb_height="80"</strong></li>
						<li>HTML Tag Before Title: <strong>before_title="&lt;h3&gt;"</strong></li>
						<li>HTML Tag After Title: <strong>after_title="&lt;/h3&gt;"</strong></li>
					</ul>
				</li>
				<li>Insert your desired shortcode into any page or post.</li>
			</ul>
			<hr>
			A shortcode with all the options will look like the following:<br><br>
			<strong>[tsp-on-this-day title="Title of Posts" keep_formatting="N" style="color: red;" max_words=10 show_quotes="N" show_thumb="Y" show_event_data="N" show_author="Y" show_date"N" show_private="N" show_text_posts="N" number_posts="5" excerpt_max=100 excerpt_min=60 post_class="" fpost_type="post" slider_width="865" slider_height="365 layout="0" order_by="DESC" thumb_width="80" thumb_height="80" read_more_text="more..." before_title="" after_title=""]</strong>
		</div>
	
	</div>
	<script>
		{literal}
		jQuery("div.tsp_container a.toggle").click(function () {
			jQuery(".note-details").toggle();
		});
		{/literal}
	</script>
	<div class="updated fade" {if !$form || $error != ""}style="display:none;"{/if}><p><strong>{$message}</strong></p></div>
	<div class="error" {if !$error}style="display:none;"{/if}><p><strong>{$error}</strong></p></div>
	<form method="post" action="admin.php?page={$plugin_name}.php">
		<fieldset>
		{foreach $form_fields as $field}
			{include file="$EASY_DEV_FORM_FIELDS" field=$field}
		{/foreach}
		</fieldset>
		<input type="hidden" name="{$plugin_name}_form_submit" value="submit" />
		<p class="submit">
			<input type="submit" class="button-primary" value="Save Changes" />
		</p>
		{$nonce_name}
	</form>
</div><!-- tsp_container -->
