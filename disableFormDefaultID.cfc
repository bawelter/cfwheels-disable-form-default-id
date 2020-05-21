component {
	public function init(){
		this.version="2.1.0";
		return this;
	}

	/**
	 * @hint private func for removal of empty id attributes
	 */
	public string function $disableTagId(required string tag){
		return replace(tag, ' id=', ' _id=');
	}

	/**
	 * Overrides core function to prevent using the field name as the default id
	 */
	public string function textField(){
		local.rtv = core.textField(argumentCollection=arguments);

		if (!structKeyExists(arguments, 'id')) {
			local.rtv = $disableTagId(local.rtv,$tagId(arguments.objectName, arguments.property));
		}
		
		return local.rtv;
	}

	/**
	 * Overrides core function to prevent using the field name as the default id
	 */
	public string function passwordField(){
		local.rtv = core.passwordField(argumentCollection=arguments);
		
		if (!structKeyExists(arguments, 'id')) {
			local.rtv = $disableTagId(local.rtv);
		}
		
		return local.rtv;
	}

	/**
	 * Overrides core function to prevent using the field name as the default id
	 */
	public string function hiddenField(){
		local.rtv = core.hiddenField(argumentCollection=arguments);

		if (!structKeyExists(arguments, 'id')) {
			local.rtv = $disableTagId(local.rtv);
		}
		
		return local.rtv;
	}

	/**
	 * Overrides core function to prevent using the field name as the default id
	 */
	public string function fileField(){
		local.rtv = core.fileField(argumentCollection=arguments);
		
		if (!structKeyExists(arguments, 'id')) {
			local.rtv = $disableTagId(local.rtv);
		}
		
		return local.rtv;
	}

	/**
	 * Overrides core function to prevent using the field name as the default id
	 */
	public string function textArea(){
		local.rtv = core.textArea(argumentCollection=arguments);
		
		if (!structKeyExists(arguments, 'id')) {
			local.rtv = $disableTagId(local.rtv);
		}
		
		return local.rtv;
	}

	/**
	 * Overrides core function to prevent using the field name as the default id
	 */
	public string function radioButton(){
		local.rtv = core.radioButton(argumentCollection=arguments);

		if (!structKeyExists(arguments, 'id')) {
			local.rtv = $disableTagId(local.rtv);
		}
		
		return local.rtv;
	}

	/**
	 * Overrides core function to prevent using the field name as the default id
	 */
	public string function checkBox(){
		local.rtv = core.checkBox(argumentCollection=arguments);
		
		if (!structKeyExists(arguments, 'id')) {
			local.rtv = $disableTagId(local.rtv);
		}
		
		return local.rtv;
	}

	/**
	 * Overrides core function to prevent using the field name as the default id
	 */
	public string function select(){
		local.rtv = core.select(argumentCollection=arguments);

		if (!structKeyExists(arguments, 'id')) {
			local.rtv = $disableTagId(local.rtv);
		}
		
		return local.rtv;
	}
}
