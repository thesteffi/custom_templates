# A collection of helpful Google Tag Manager Templates

To use the templates, just import them into your Google Tag Manager Container.

To do so, navigate to the template-section and click on "New".
After that you will find a Menu (three dots) on the right hand side. Simply open that menu and choose "import" and done!

## [Facebook Pixel](facebook_pixel.tpl)
A Simple Template to include a Facebook Pixel to a website. You can give the User an option to opt-out from Pixel-Tracking by using a cookie. The template is inspired by the great tutorials of Simo Ahava (check out <a href="https://simoahava.com">his blog simoahava.com</a> for great learning resources!).
You can either create a script yourself (as a custom html tag) or use the upcoming Facebook Opt-Out Template.

For now, the cookie has to be named 'fb-disable' and hold the value 'true'. But with a bit of knowledge you can change the cookie name and required content to anything you like. Just be warned not to forget to modify the cookie name ("allowed cookie names") in the permissions tab. Otherwise the sandboxed Javascript will not be able to read from your cookie.

## [Facebook Pixel Opt-Out](facebook_pixel_opt-out.html)

Set up a custom variable prior to copy and pasing the html into a custom html tag. The Variable should be named fb_cookie_name and have the type "constant". If this is set up, you can proceed to create a custom HTML-Tag (create new tag and select type "custom html"). Copy & Paste the file and select "all pages" as trigger. You can as well create a custom trigger and only trigger the tag when a visitor is visiting your opt-out page.

On your opt-out page you have to create a clickable element (e.g. button or a-href) and add the Attribute class="facebook-opt-out-link".

The Element should look like this &lt;button class="facebook-opt-out-link"&gt;Perform Facebook Pixel Opt-Out&lt;/button&gt;. Clicks onto this element will then be recorded by the Click Event Listener.
