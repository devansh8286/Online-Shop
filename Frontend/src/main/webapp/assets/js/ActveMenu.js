$(function() {

	switch (menu) {
	case 'About Us':
		$('#about').addClass('active');
		break;

	case 'Contact':
		$('#contact').addClass('active');
		break;

	case 'All Product':
		$('#product').addClass('active');
		break;
	case 'Manage Products':
		$('#manageProducts').addClass('active');
		break;

	defaultf: {
		if (menu == "Home")
			break;

		$('#Product').addClass('active');
		$('#a_' + menu).addClass('active');
		break;
	}

}

var $table = $('#productListTable');

// executing code for table

if ($table.length) {

	// getting json url to give to category

	var jsonUrl = "";
	if (window.categoryId == "") {
		jsonUrl = window.contextRoot + '/json/data/all/products';
	} else {
		jsonUrl = window.contextRoot + '/json/data/category/'
				+ window.categoryId + '/products';
	}

	// table structures and all
	$table
			.DataTable({

				lengthMenu : [ [ 3, 5, 10, -1 ],
						[ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
				pageLength : 5,
				// modify the jquery DATATABLE
				ajax : {

					url : jsonUrl,
					dataSrc : ""
				},

				columns : [

						{

							data : 'code',
							mRender : function(data, type, row) {

								return '<img src="' + window.contextRoot
										+ '/Resources/image/' + data
										+ '.jpg" class="dataTableImg"/>';
							}
						},

						{

							data : 'name'
						},
						{

							data : 'brand'
						},
						{

							data : 'unitprice',
							// for rupee sign
							mRender : function(data, type, row) {
								return '&#8377;' + data
							}
						},

						{
							data : 'quantity',

							mRender : function(data, type, row) {
								if (data < 1) {

									return '<span style="color:red">out of Stock</span>';
								}
								return data
							}
						},

						{

							data : 'id',
							mRender : function(data, type, row) {

								var str = '';
								// for view
								str += '<a href="'
										+ window.contextRoot
										+ '/show/'
										+ data
										+ '/product" class="btn btn-primary"><span class="gryphicon-eye-open"></span></a>&#0160';
								// for Cart
								if (row.quantity < 1) {
									str += '<a href=javascript:void(0)"'
											+ window.contextRoot
											+ '/cart/add/'
											+ data
											+ '/product" class="btn btn-success disable"><span class="gryphicon-shopping-cart"></span></a>';

								} else {

									str += '<a href="'
											+ window.contextRoot
											+ '/cart/add/'
											+ data
											+ '/product" class="btn btn-success"><span class="gryphicon-shopping-cart"></span></a>';

								}

								return str;
							}
						},

				]
			});
}

// dismissing the alert
var $alert = $('.alert');
if ($alert.length) {

	setTimeout(function() {
		$alert.fadeOut('slow');
	}, 3000)

}

});

/*
 * var str = ''; //for view str += '<a href="' + window.contextRoot + '/show/' +
 * data + '/product" class="btn btn-primary"><span class="glyphicon-eye-open"></span></a>&#160'; //
 * for Cart str += '<a href="' + window.contextRoot + '/cart/add/' + data +
 * '/product" class="btn btn-success"><span class="glyphicon-shopping-cart"></span></a>';
 * 
 * return str;
 */