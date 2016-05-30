<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
		<% base_tag %>
		$MetaTags(true)
		<% include OG %>
		<meta name="viewport" content="width=device-width">

		$getCSS
		
		<script src="$ThemeDir/js/lib/modernizr.min.js"></script>
		
		<% include GA %>
	</head>
	<body class="page-$URLSegment<% if $isMobile %> mobile<% end_if %> page-type-$BodyClass.LowerCase" style="background-color: #fff;">
		<% include Header %>
		
		<main class="container">
			$Layout
		</main>
		
		<% include Footer %>
	</body>
</html>


<div class="all-blocks">
				<h1 style="color: orange">All blocks this page has</h1>
				<% loop $AllBlocks %>
					$Me
				<% end_loop %>
			</div>
			<div class="my-blocks">
				<h1 style="color: orange">Blocks pulled via ManyMany</h1>
				<% loop $MyBlocks %>
					$Me
				<% end_loop %>
			</div>
			<div class="my-blocks">
				<h1 style="color: orange">Blocks assigned based on Class</h1>
				<% loop $DockedBlocks %>
					$Me
				<% end_loop %>
			</div>