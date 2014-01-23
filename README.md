Social Media Login
=======================================

This site demonstrates AddThis Social Sign In, a simple way to add social authentication and data to your existing user system. So you can also download the source and use it to add simple user registration to your site.

1. Enter your API Keys<br />
1.1 Facebook<br />
    a. Login to your Facebook developer account.<br />
    b. Create a new project or select one that you've created before.<br />
    c. Copy the project's "App ID/API key" and paste it into the field above.<br />
    d. In the app settings page, fill in the field "Website with Facebook Login Site URL" to:<br />
        https://www.addthis.com/secure/ssi_callback<br />
1.2 Google<br />
    a. Log in to your Google developer account.<br />
    b. Create a new project or select one that you've created before.<br />
    c. Select API Access tab on left menu<br />
    d. If you created a new project, fill out the basic details and make sure to specify "Web application" for Application        Type and then click "more options" next to "Your site or hostname" and set "Authorized Redirect URIs" to:         https://www.addthis.com/secure/ssi_callback?isNewGen=false
        https://www.addthis.com/secure/ssi_callback?isNewGen=true<br />
    e. If you have an existing project, find the section "Client ID for web applications".<br />
    f. Click "Edit settings..." and set the "Authorized Redirect URIs" field to:   
        https://www.addthis.com/secure/ssi_callback?isNewGen=false<br />
        https://www.addthis.com/secure/ssi_callback?isNewGen=true<br />
    g. Finally, copy the "Client ID" to the field above.<br />

2. Get the code<br />

&lt;div class="addthis_toolbox"&gt<br />
&lt;a class="addthis_login_facebook"&gt;&lt;/a&gt;<br />
&lt;a class="addthis_login_google"&gt;&lt;/a&gt;<br />
&lt;/div&gt;<br />
&lt;script&gt;<br />
var addthis_config = {<br />
        login:{<br />
                services:{<br />
                        facebook:{id:'xxx'},<br />
                        google:{id:'xxx'}<br />
                },<br />
                callback:function(user){<br />
                        /* Output user properties -- in your real app, you'd get rid of these*/<br />
                        console.log(user.addthis_signature);<br />
                        console.log(user.thumbnailURL);<br />
                        console.log(user.service);<br />
                }<br />
        }<br />
};<br />
&lt;/script&gt;<br />
&lt;script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52e13a186a2ea3c3"&gt;&lt;/script&gt;<br />
