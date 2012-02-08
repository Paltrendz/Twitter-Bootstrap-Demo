component extends="org.corfield.framework" {
	
	
	variables.framework = {
		// whether to force generation of SES URLs:
		generateSES = true
	};
	
	function setupRequest() {
		// use setupRequest to do initialization per request
		request.context.startTime = getTickCount();
	}
	
}