requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: contextPath+'/resources',
    //except, if the module ID starts with 'app',
    //load it from the js/app directory. paths
    //config is relative to the baseUrl, and
    //never includes a '.js' extension since
    //the paths config could be for a directory.
    paths: {
        'jquery' 	  : 'js/jquery/jquery-1.12.0',
        'jquery.mobile' 	  : 'js/jquery/jquery.mobile-1.4.5',
        'bootstrap'   : 'js/bootstrap/bootstrap',
        'css'	 	  : 'js/requirejs/require-css',
        'jquery.ui'	  : 'js/jquery/jquery-ui.min',
        'socket.io'	  : 'http://127.0.0.1:1337/socket.io/socket.io'
        
    },
    
    shim : {
    	'bootstrap' : ['jquery', 'css!js/bootstrap/css/bootstrap.css']
    },

    waitSeconds: 50

});

