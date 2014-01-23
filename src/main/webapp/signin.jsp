<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AddThis Social Login::DEMO</title>
</head>
<body>
	<h1>Welcome!</h1>
	<p>
		This site demonstrates <a
			href="http://www.addthis.com/labs/social-sign-in">AddThis Social
			Sign In</a>, a simple way to add social authentication and data to your
		existing user system. So you can also download the source and use
		it to add simple user registration to your site.
	</p>

	<div>Sign in with</div>
	<div class="addthis_toolbox">
		<a class="addthis_login_facebook"></a>
		<a class="addthis_login_google"></a>
	</div>
	<script>
		var addthis_config = {
			login : {
				services : {
					facebook : {
						id : '277825502366732'
					},
					google : {
						id : '886469017978-3cafhlli9qbbv29g8qf37818tj0nk2uj.apps.googleusercontent.com'
					}
				},
				callback : function(user) {
					/* Output user properties -- in your real app, you'd get rid of these*/
					console.log(user.addthis_signature);
					console.log(user.thumbnailURL);
					console.log(user.service);
				}
			}
		};
	</script>
	<script type="text/javascript"
		src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52dfccda168da3cc"></script>
</body>
</html>