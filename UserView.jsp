<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>NewBeginning</title>
	  <link rel="stylesheet" href="normalize.css" type="text/css"> <!-- Reset CSS -->
    <!-- Libraries -->
    <link rel="stylesheet" href="libraries/microtip/microtip.css" type="text/css"> <!-- Tooltip -->
    <link rel="stylesheet" href="libraries/selectize/selectize.apple.css" type="text/css"> <!-- Selectize CSS -->
    
    <!-- Main files -->
    <link rel="stylesheet" href="main.css" type="text/css"> <!-- Main CSS -->


<script src="libraries/jquery/jquery.min.js"></script>
<script src="libraries/selectize/selectize.min.js"></script>  <!-- Selectize JS -->
<script src="main.js"></script>
</head>
<body>
	<header>
		<nav>
            <div class="info-top">
                <span class="logo">
					<svg id="logo-svg" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 37.39 30.28" style="height: 2.5em; width: 2.5em; display: block; fill: currentColor;"><path d="M35.93,1.83a5,5,0,0,0-7.07,0L19.67,11l1.41,1.41,9.19-9.19a3,3,0,0,1,4.24,4.24L23.12,18.88l-1.41-1.41,2.2-2.2L22.5,13.85l-2.2,2.2-5.44-5.44V6.36L8.49,0,7.07,1.41l5.78,5.78v4.24l6,6,1.41,1.41,1.41,1.41,1.41,1.41L28,26.58A1,1,0,0,1,26.58,28l-4.87-4.87-1.41-1.41-1.41-1.41-1.41-1.41-6-6H7.19L1.41,7.07,0,8.49l6.36,6.36h4.24l5.44,5.44-4.87,4.87a3,3,0,0,0,4.24,4.24l4.87-4.87,4.87,4.87a3,3,0,0,0,4.24-4.24l-4.87-4.87L35.93,8.9A5,5,0,0,0,35.93,1.83ZM14,28a1,1,0,0,1-1.41-1.41l4.87-4.87,1.41,1.41Z" transform="translate(0 0)"/><rect x="6.27" y="2.99" width="2" height="8.59" transform="translate(-3.02 7.29) rotate(-45.09)"/></svg>
				</span>
                <div class="search-options-container">
                    <div class="search-options">
                        <ul>
                            <li class="place">
                                <span class="search-icons">
    							<svg id="places-svg" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" style="height: 15px; width: 15px; display: block; fill: currentColor;"><path d="M16,32A16,16,0,1,1,32,16,16,16,0,0,1,16,32ZM16,2A14,14,0,1,0,30,16,14,14,0,0,0,16,2Z" transform="translate(0 0)"/><polygon points="17.54 28.56 18.95 19.58 12.43 16.31 16.32 11.5 14.96 11.02 9.66 12.23 6.43 9.77 7.65 8.18 10.13 10.07 15.08 8.94 19.66 10.57 15.55 15.64 21.15 18.45 20.37 23.44 23.96 20.31 25.99 12.76 27.92 13.28 25.73 21.41 17.54 28.56"/><polygon points="10.48 25.18 8.51 24.79 9.18 21.4 5.13 21 5.33 19 11.56 19.63 10.48 25.18"/></svg></span>
                                <div class="control-group">
                                    <select id="select-tools" multiple placeholder="Anywhere"></select>
                                </div>
                            </li>
                            <li class="time">
                                <span class="search-icons">
    							<svg id="time-svg" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32.1 31.68" style="height: 15px; width: 15px; display: block; fill: currentColor;"><polygon points="23.82 21.82 17.05 15.26 17.05 5.68 15.05 5.68 15.05 16.1 22.43 23.26 23.82 21.82"/><path d="M6.15,25.74l0,0a14,14,0,0,1,7-23.66l-.4-2a16,16,0,0,0,3.2,31.68v0h.13a15.91,15.91,0,0,0,8.8-2.64l-1.11-1.67A14,14,0,0,1,6.15,25.74Z" transform="translate(0.05 -0.16)"/><path d="M32.05,15.85c0-.08,0-.17,0-.25s0-.07,0-.11c0-.42,0-.84-.07-1.25v0c0-.43-.1-.85-.18-1.26,0-.19-.09-.38-.13-.58s-.09-.45-.15-.67a15.93,15.93,0,0,0-4.12-7.16l0,0A16.11,16.11,0,0,0,19.15.16l-.4,2a14.15,14.15,0,0,1,10.82,10.1c0,.1,0,.2.07.29.07.26.13.53.18.8s.1.66.14,1c0,.05,0,.1,0,.15,0,.34.05.68.06,1,0,.05,0,.11,0,.16a13.91,13.91,0,0,1-2.31,7.92l1.67,1.1A15.89,15.89,0,0,0,32,15.85Z" transform="translate(0.05 -0.16)"/></svg></span> Anytime
                            </li>
                            <li class="people">
                                <span class="search-icons">
                                <svg id="people-svg" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32.28 32" style="height: 15px; width: 15px; display: block; fill: currentColor;"><path d="M12.13,18a9,9,0,1,1,9-9A9,9,0,0,1,12.13,18Zm0-16a7,7,0,1,0,7,7A7,7,0,0,0,12.13,2Z"/><path d="M23.13,18V16a5,5,0,1,0,0-10V4a7,7,0,1,1,0,14Z"/><polygon points="32.28 30 26.13 30 26.13 28 29.97 28 29.23 22.8 25.88 21.94 26.37 20.01 31.02 21.2 32.28 30"/><polygon points="24.25 32 0 32 1.24 21.58 5.95 20.05 6.57 21.95 3.07 23.09 2.25 30 22 30 21.18 23.09 17.68 21.95 18.3 20.05 23.02 21.58 24.25 32"/></svg></span>
                            1</li>
                        </ul>
                    </div>
                </div>
                <div class="search-field-container">
                <div class="">
                <select>
                <option>
                	Food	
                </option>
                <option>Restaurant</option>
                </select>
                </div>
                    <div class="search-field">
                    	<div class="control-group">
                    	    <select id="search-tools" multiple placeholder="Search for yor favourite restaurants, food and more"></select>
                    	</div>
                    </div>
                </div>                
                <div class="user-pannel">
                    <div class="user-pannel-container">
                        <span class="user-arrow">
							<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><path fill-rule="evenodd" d="M16.291 4.295a1 1 0 1 1 1.414 1.415l-8 7.995a1 1 0 0 1-1.414 0l-8-7.995a1 1 0 1 1 1.414-1.415l7.293 7.29 7.293-7.29z"></path></svg></span>
                        <div class="user-profile"></div>
                    </div>
                </div>
            </div>
        </nav>
	</header>

	<main>
		<div class="wrapper">
			<div class="rst-container">
				<div class="rst rst-1">
					<div class="rst-hero"></div>
					<div class="rst-info">
						<h3>Restaurant Title</h3>
						<span class="rst-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel, perspiciatis.</span>
					</div>
				</div>
				<div class="rst rst-2">
					<div class="rst-hero"></div>
					<div class="rst-info">
						<h3>Restaurant Title</h3>
						<span class="rst-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, vel!</span>
					</div>
				</div>
				<div class="rst rst-3">
					<div class="rst-hero"></div>
					<div class="rst-info">
						<h3>Restaurant Title</h3>
						<span class="rst-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, vero.</span>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>