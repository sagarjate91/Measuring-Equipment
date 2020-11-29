
$(function() {

	// for adding a loader
	$(window).load(function() {
		setTimeout(function() {
			$(".se-pre-con").fadeOut("slow");
		}, 200);
	});

	/* for fading out the alert message after 2 seconds */
	$alert = $('.alert');
	if ($alert.length) {
		setTimeout(function() {
			$alert.fadeOut('slow');
		}, 3000);
	}

	// solving the active menu problem
	switch (menu) {
	case 'Home Panel':
		$('#home').addClass('active');
		break;
	case 'Customer Panel':
		$('#customer').addClass('active');
		break;
	case 'Admin Panel':
		$('#admin').addClass('active');
		break;
	case 'Signup Panel':
		$('#signup').addClass('active');
		break;
	case 'New Customer':
		$('#newCustomer').addClass('active');
		break;
	case 'Update Equipment':
		$('#updateEquipment').addClass('active');
		break;
	case 'Issue Equipment':
		$('#issueEquipment').addClass('active');
		break;
	case 'Acceptant Criteria':
		$('#acceptantCriteria').addClass('active');
		break;
	case 'History Card':
		$('#historyCard').addClass('active');
		break;
	case 'Approved List':
		$('#approvedList').addClass('active');
		break;

	}
	// .....................................................................................

	/* validating the loginform */

	var $userForm = $('#userForm');

	if ($userForm.length) {

		$userForm.validate({
			rules : {

				firstName : {
					required : true,
				},
				lastName : {
					required : true,
				},
				userName : {
					required : true,
				},
				email : {
					required : true,
					email : true
				},
				password : {
					required : true
				},
				mobileNumber : {
					required : true
				},
				pinCode : {
					required : true
				},
				address : {
					required : true
				}
			},
			messages : {
				firstName : {
					required : 'Please enter your firstname!'
				},
				lastName : {
					required : 'Please enter your lastname!'
				},
				userName : {
					required : 'Please enter your username!'
				},
				email : {
					required : 'Please enter your email!',
					email : 'Please enter a valid email address!'
				},
				password : {
					required : 'Please enter your password!'
				},
				mobileNumber : {
					required : 'Please enter your mobile number!',
				},
				pinCode : {
					required : 'Please enter your pincode!'
				},
				address : {
					required : 'Please enter your address!'
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

	// .....................................................................................

	var $loginForm = $('#loginForm');

	if ($loginForm.length) {

		$loginForm.validate({
			rules : {
				userName : {
					required : true,
				},
				password : {
					required : true,
				}
			},
			messages : {
				userName : {
					required : 'Please enter your username!',
				},
				password : {
					required : 'Please enter your password!'
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

	/* .......................................... */

	var $equipmentlist = $('#equipmentlist');

	if ($equipmentlist.length) {

		var jsonUrl = jsonUrl = window.contextRoot + '/customer/all/equipment';

		$equipmentlist
				.DataTable({
					lengthMenu : [ [ 3, 5, 10, -1 ],
							[ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
					pageLength : 5,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
						
						{
							data : 'id',
							bSortable : false,
							mRender : function(data, type, row) {

								var str = '';
								str += '<a href="'
										+ window.contextRoot
										+ '/measuring/equipment/customer/'
										+ row.id
										+ '/update" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>';
								return str;
							}
						   },

							{
								data : 'equipmentId',
							},
							{
								data : 'equipmentDescription',
							},
							{
								data : 'equipmentLeastCount',
							},
							{
								data : 'equipmentUnit',
							},
							{
								data : 'equipmentManfacturerName',
							},
							{
								data : 'equipmentCreatedBy',
							},
							{
								data : 'equipmentCreatedDate',
							},
							{
								data : 'equipmentCreatedTime',
							},
							{
								data : 'equipmentReasonForUpdate',
							}
						]

				});
	}
	
	
	/* .......................................... */

	var $acceptantlist = $('#acceptantlist');

	if ($acceptantlist.length) {

		var jsonUrl = jsonUrl = window.contextRoot + '/customer/all/acceptant';

		$acceptantlist
				.DataTable({
					lengthMenu : [ [ 3, 5, 10, -1 ],
							[ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
					pageLength : 5,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
						
						   {
								data : 'id',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/measuring/equipment/customer/'
											+ row.id
											+ '/acceptant-register" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>';
									return str;
								}
							},

							{
								data : 'equipmentId',
							},
							{
								data : 'equipmentDescription',
							},
							{
								data : 'equipmentRange',
							},
							{
								data : 'applicationRange',
							},
							{
								data : 'equipmentLeastCount',
							},
							{
								data : 'equipmentAccurency',
							},
							{
								data : 'parameterLowestTolerance',
							},
							{
								data : 'acceptantCriteria',
							},
							{
								data : 'equipmentUnit',
							},
							{
								data : 'referenceStandard',
							},
							{
								data : 'clauseNo',
							}
						]

				});
	}


	/* .......................................... */
	
	var $laboratorylist = $('#laboratorylist');

	if ($laboratorylist.length) {

		var jsonUrl = jsonUrl = window.contextRoot + '/customer/all/laboratory';

		$laboratorylist
				.DataTable({
					lengthMenu : [ [ 3, 5, 10, -1 ],
							[ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
					pageLength : 5,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
						
						   {
								data : 'id',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/measuring/equipment/customer/'
											+ row.id
											+ '/laboratory" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>';
									return str;
								}
							},

							{
								data : 'laboratoryName',
							},
							{
								data : 'address',
							},
							{
								data : 'contactNumber',
							},
							{
								data : 'emailId',
							},
							{
								data : 'calibrationScope',
							},
							{
								data : 'scopeCopy',
							},
							{
								data : 'certificationDetails',
							},
							{
								data : 'certificationNo',
							},
							{
								data : 'certificationCopy',
							},
							{
								data : 'certificattionDate',
							},
							{
								data : 'expiryDate',
							},
							{
								data : 'note',
							},
							{
								data : 'reminderOneMonthBeforeExpiryDate',
							}
						]

				});
	}



	/*------*/
	var $tableUser = $('#userListTable');

	if ($tableUser.length) {

		var jsonurl = '';
		jsonurl = window.contextRoot + '/admin/all/Users';

		$tableUser
				.DataTable({

					ajax : {
						lengthMenu : [
								[ 5, 10, 20, -1 ],
								[ '5 Records', '10 Records', '20 Records',
										'All' ] ],
						pageLength : 5,

						url : jsonurl,
						dataSrc : ''
					},
					columns : [

							{
								data : 'id'
							},
							{
								data : 'firstName'
							},
							{
								data : 'lastName'
							},
							{
								data : 'email'
							},
							{
								data : 'mobileNumber'
							},
							{
								data : 'pinCode'
							},
							{
								data : 'address'
							},
							{
								data : 'id',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/admin/'
											+ row.id
											+ '/delete" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a> &#160;';
									return str;
								}
							},
							{
								data : 'status',
								bSortable : false,
								mRender : function(data, type, row) {
									var str = '';
									if (data == '0') {
										str += '<label class="switch"> <input type="checkbox" value="'
												+ row.id
												+ '">  <div class="slider round"> </div></label>';
									} else {
										str += '<label class="switch"> <input type="checkbox" value="'
												+ row.id
												+ '" checked="checked">  <div class="slider round"> </div></label>';
									}
									return str;
								}
							} ],

					initComplete : function() {
						var api = this.api();
						api
								.$('.switch input[type="checkbox"]')
								.on(
										'change',
										function() {
											var dText = (this.checked) ? 'You want to activate the User?'
													: 'You want to de-activate the User?';
											var checked = this.checked;
											var checkbox = $(this);
											debugger;
											bootbox
													.confirm({
														size : 'medium',
														title : 'User Activation/Deactivation',
														message : dText,
														callback : function(
																confirmed) {
															if (confirmed) {
																$
																		.ajax({
																			type : 'PUT',
																			url : window.contextRoot
																					+ '/admin/manage/'
																					+ checkbox
																							.prop('value')
																					+ '/activation',
																			timeout : 100000,
																			success : function(
																					data) {
																				bootbox
																						.alert(data);
																			},
																			error : function(
																					e) {
																				bootbox
																						.alert('ERROR: '
																								+ e);
																			}
																		});
															} else {
																checkbox
																		.prop(
																				'checked',
																				!checked);
															}
														}
													});
										});
					}
				});
	}

});