Social Media Login
=======================================

This site demonstrates AddThis Social Sign In, a simple way to add social authentication and data to your existing user system. So you can also download the source and use it to add simple user registration to your site.

1. Enter your API Keys
1.1 Facebook
    a. Login to your Facebook developer account.
    b. Create a new project or select one that you've created before.
    c. Copy the project's "App ID/API key" and paste it into the field above.
    d. In the app settings page, fill in the field "Website with Facebook Login Site URL" to:
      https://www.addthis.com/secure/ssi_callback
1.2 Google
    a. Log in to your Google developer account.
    b. Create a new project or select one that you've created before.
    c. Select API Access tab on left menu
    d. If you created a new project, fill out the basic details and make sure to specify "Web application" for Application        Type and then click "more options" next to "Your site or hostname" and set "Authorized Redirect URIs" to:         https://www.addthis.com/secure/ssi_callback?isNewGen=false
https://www.addthis.com/secure/ssi_callback?isNewGen=true
    e. If you have an existing project, find the section "Client ID for web applications".
    f. Click "Edit settings..." and set the "Authorized Redirect URIs" field to:   https://www.addthis.com/secure/ssi_callback?isNewGen=false
https://www.addthis.com/secure/ssi_callback?isNewGen=true
    g. Finally, copy the "Client ID" to the field above.

2. Get the code

&lt;div class="addthis_toolbox"&gt;\n
&lt;a class="addthis_login_facebook"&gt;&lt;/a&gt;\n
&lt;a class="addthis_login_google"&gt;&lt;/a&gt;\n
&lt;/div&gt;\n
&lt;script&gt;\n
var addthis_config = {\n
        login:{\n
                services:{\n
                        facebook:{\n
                                id:'xxx'\n
                        },\n
                        google:{\n
                                id:'xxx'\n
                        }\n
                },\n
                callback:function(user){\n
                        /* Output user properties -- in your real app, you'd get rid of these*/\n
                        console.log(user.addthis_signature);\n
                        console.log(user.thumbnailURL);\n
                        console.log(user.service);\n
                }\n
        }\n
};\n
&lt;/script&gt;\n
&lt;script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52e13a186a2ea3c3"&gt;&lt;/script&gt;\n
