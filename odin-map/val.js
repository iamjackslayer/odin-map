$(document).ready(function(){
	$.validator.addMethod('numbersOnly',function(val,el){

		return this.optional(el) || val.match(/^[0-9]*$/);
	},'Only numbers are allowed.');
	$('#form').validate({
		rules:{
			lat:{
				numbersOnly: true
			},
			lng:{
				numbersOnly: true
			}
		}
	})
});