
<div class="page-header">
	<h1>Contact Us</h1>
	<p>Please use the form below to contact us.</p>
</div>

<cfif structKeyExists(rc,'successMessage') && isStruct(rc.successMessage)>
	<div class="alert alert-success alert-block">
		<a class="close" data-dismiss="alert">x</a>
		<cfoutput><h4 class="alert-heading">#rc.successMessage.header#</h4></cfoutput>
		<p><cfoutput>#rc.successMessage.body#</cfoutput></p>
	</div>
</cfif>

<div class="row">
	<div class="span9">
		<form class="form form-horizontal well" action="" method="POST">
			<div class="control-group">
				<label for="firstName" class="control-label">First Name</label>
				<div class="controls">
					<input name="firstName" id="firstName" type="text" required="true" placeholder="First Name (required)" class="input-xlarge" />
				</div>
			</div>

			<div class="control-group">
				<label for="lastName" class="control-label">Last Name</label>
				<div class="controls">
					<input name="lastName" id="lastName" type="text" required="true" placeholder="Last Name (required)" class="input-xlarge" />
				</div>
			</div>

			<div class="control-group">
				<label for="email" class="control-label">Email Address</label>
				<div class="controls">
					<input name="email" id="email" type="email" required="true" placeholder="Email Address (required)" class="input-xlarge" />
				</div>
			</div>

			<div class="control-group">
				<label for="comment" class="control-label">Comment</label>
				<div class="controls">
					<textarea name="comment" id="comment" required="true" placeholder="Your message to us (required)" class="input-xlarge"></textarea>
				</div>
			</div>

			<div class="form-actions">
				<button class="btn btn-primary" type="submit">Submit</button>
				<button class="btn btn-danger" type="reset">Cancel</button>
			</div>

		</form>
	</div>

	<div class="span3">
		<div class="well">
			<h3>Additional Contact Info</h3>
			<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla.</p>
		</div>
	</div>
</div>