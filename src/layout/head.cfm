<cfoutput>
	<!doctype html>
	<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Title</title>
		<meta name="description" content="Description">
		<meta name="author" content="Author">
		<meta name="twitter:widgets:theme" content="light">
		<meta name="twitter:widgets:border-color" content="##55acee">
		<!--- <base href="#event.getHTMLBaseURL()#" /> --->
		<!--- <cfloop array="#prc.headers#" index="header">
			<cfif header.keyExists("property")>
				<meta property="#header.property#" content="#header.content#" />
			<cfelse>
				<meta name="#header.name#" content="#header.content#" />
			</cfif>
		</cfloop> --->
		<link rel="stylesheet" href="https://unpkg.com/bootstrap@4.6.0/dist/css/bootstrap.min.css" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/themes/prism-okaidia.min.css" integrity="sha512-mIs9kKbaw6JZFfSuo+MovjU+Ntggfoj8RwAmJbVXQ5mkAX5LlgETQEweFPI18humSPHymTb5iikEOKWF7I8ncQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<link rel="stylesheet" href="/assets/css/site.css?v=#dateFormat(now(), "yyyy-mm-dd")#T#timeFormat(now(), "HH:mm:ss")#">
	</head>
	<body style="padding-top: 70px;">
		<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
			<div class="container">
				<a class="navbar-brand" href="/">Jasper</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active">
							<a class="nav-link" href="/tag/code">Code</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="/tag/misc">Misc</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="/page/readme">Readme</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="/search">Search</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<!---Container And Views --->
		<div class="container-fluid">
</cfoutput>