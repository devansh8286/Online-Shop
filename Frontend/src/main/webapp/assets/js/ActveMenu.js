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

	defaultf: {
		if (menu == "Home")
			break;

		$('#Product').addClass('active');
		$('#a_' + menu).addClass('active');
		break;
	}

	}
	
});