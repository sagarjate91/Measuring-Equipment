$(function() {
	
	// for adding a loader
	$(window).load(function(){
		setTimeout(function() {
			$(".se-pre-con").fadeOut("slow");
		},200);
	});	
	
	/* for fading out the alert message after 2 seconds */
	$alert = $('.alert');
	if($alert.length) {
		setTimeout(function() {
	    	$alert.fadeOut('slow');
		   }, 3000
		);		
	}

	// solving the active menu problem
    	switch (menu) {
    	case 'Home':
    		$('#home').addClass('active');
    		break;
    	case 'User':
    		$('#user').addClass('active');
    		break;
    	case 'Admin':
    		$('#admin').addClass('active');
    		break;
    	case 'Signup':
    		$('#signup').addClass('active');
    		break;
        default:
    		if (menu == "Home")
    			break;
    		$('#a_'+ menu).addClass('active');
    		break;
    	}

   
//.....................................................................................


    /*validating the loginform*/

	var $userForm = $('#userForm');
	
	if($userForm.length) {
		
		$userForm.validate({			
				rules: {
					
					firstName: {
						required: true,
					},
					lastName: {
						required: true,	
					},
					email: {
						required: true,
						email: true
					},
					password: {
						required: true
					},
					mobileNumber: {
						required: true
					},
					pinCode: {
						required: true
					},
					address: {
						required: true
					}
				},
				messages: {					
					firstName: {
						required: 'Please enter your firstname!'
					},
					lastName: {
						required: 'Please enter your lastname!'
					},
					email: {
						required: 'Please enter your email!',
						email: 'Please enter a valid email address!'
					},
					password: {
						required: 'Please enter your password!'
					},
					mobileNumber: {
						required: 'Please enter your mobile number!',
					},
					pinCode: {
						required: 'Please enter your pincode!'
					},
					address: {
						required: 'Please enter your address!'
					}
				},
				errorElement : "em",
				errorPlacement : function(error, element) {
					// Add the 'help-block' class to the error element
					error.addClass("help-block");
					
					// add the error label after the input element
					error.insertAfter(element);
				}				
			}
		
		);
		
	}	
	
//.....................................................................................	



    var $loginForm = $('#loginForm');

    if($loginForm.length) {

        $loginForm.validate({
                rules: {

                    email: {
                        required: true,
                        email:true
                    },
                    password: {
                        required: true,
                    }
                },
                messages: {
                    email: {
                        required: 'Please enter your email id!',
                        email:'Please enter valid email id!'
                    },
                    password: {
                        required: 'Please enter your password!'
                    }
                },
                errorElement : "em",
                errorPlacement : function(error, element) {
                    // Add the 'help-block' class to the error element
                    error.addClass("help-block");

                    // add the error label after the input element
                    error.insertAfter(element);
                }
            }

        );

    }

    /*------*/


});