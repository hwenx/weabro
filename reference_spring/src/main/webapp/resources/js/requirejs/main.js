requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: contextPath+'/resources',
    //except, if the module ID starts with 'app',
    //load it from the js/app directory. paths
    //config is relative to the baseUrl, and
    //never includes a '.js' extension since
    //the paths config could be for a directory.
    paths: {
        'jquery' 	  	: 'js/jquery/jquery-1.12.0',
        'bootstrap'   	: 'js/bootstrap/bootstrap',
        'css'	 	  	: 'js/requirejs/require-css',
        'jquery.ui'	 	: 'js/jquery/jquery-ui.min',
        'jquery.touch'	: 'js/jquery/jquery.ui.touch-punch',
        'socket.io'		: 'http://'+window.socketioAddr+'/socket.io/socket.io'    //include.jsp에서 만듬
        
    },
    
    shim : {
    	'bootstrap' : ['jquery', 'css!js/bootstrap/css/bootstrap.css']
    },

    waitSeconds: 50

});

