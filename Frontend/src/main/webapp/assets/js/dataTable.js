(document).ready(function() {
    $('#productListTable').DataTable(
        
         {     

      "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
        "iDisplayLength": 5
  
        } 
         
   
    );
   	

    $(function() {

    
    if($DataTable.length){
    	
    	var jsonUrl='';
    	if(window.categoryId==''){
    		jsonUrl= window.contextRoot+'json/data/all/products'
    	}
    	else{
    		jonUrl=window.contextRoot+'json/data/category/'+window.categoryId+'/products';
    	}
  
    	 ajax:{
    		 url:jsonUrl;
    		datasrc:''
    	 }
    	columns:[
    		
    		
    		{
    			data:'name'
    		},
    		{
    			data:'brand'
    		},
    		
    		{
    			data:'unitprice'    			
    		},
    	];
    }
    
    } );
    
} );

