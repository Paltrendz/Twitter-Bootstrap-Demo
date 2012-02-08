component {
	
	public any function init( fw ) {
		variables.fw = fw;
		return this;
	}
	
	public void function default( rc ) {
		rc.when = now(); // set when for service argument
		// queue up a specific service (formatter.longdate) with named result (today)
		rc.title = "Default View";
		variables.fw.service( 'formatter.longdate', 'today' );
	}

	public void function about( rc ){
		rc.title = "About DFW CFML";
	}

	public void function contact( rc ){
		rc.title = "Contact Us";
		if (structKeyExists(rc,'firstName')){
			rc.successMessage = {
				header = "Message Received!",
				body = "#rc.firstName#, thanks for your message, if required, we will get back to you shortly."
			};
		}
	}
	
}