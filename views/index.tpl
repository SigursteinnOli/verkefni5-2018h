% rebase("base.tpl", title = "Skráningarform")

<form method="post" action="data" accept-charset="IOS-8859-1">
	<label>Nafn:
		<input type="text" name="nafn" required>	
	</label>
	<label>Heimilisfang:
		<input type="text" name="heimilisfang" required>	
	</label>
	<label>Email:
		<input type="email" name="email" required placeholder="blabla@email.com">	
	</label>
	<label>Símanúmer:
		<input type="text" name="símanúmer" required pattern="^(\+354 )?\d{3}[ -]?\d{4}$" placeholder="1234567">	
	</label>
	<h3>Fyrir Hádegi</h3>
	<h4>
		<label><input type="checkbox" name="namsk" value="Python-1">Python-1</label> |
		<label><input type="checkbox" name="namsk" value="Javascript-1">Javascript-1</label> |
		<label><input type="checkbox" name="namsk" value="Gagnasöfn-1">Gagnasöfn-1</label>
	</h4>
	<h3>Eftir Hádegi</h3>
	<h4>
		<label><input type="checkbox" name="namsk" value="Python-2">Python-2</label> |
		<label><input type="checkbox" name="namsk" value="Javascript-2">Javascript-2</label> |
		<label><input type="checkbox" name="namsk" value="Gagnasöfn-2">Gagnasöfn-2</label>
	</h4>
	<h3>Hádegisverður</h3>
	<label><input type="radio" name="matur" value="Já">Já Takk</label> |
	<label><input type="radio" name="matur" value="Nei">Nei Takk</label>
	<input type="submit" value="Skráning">
	<input type="reset" value="Hreinsa">

</form>