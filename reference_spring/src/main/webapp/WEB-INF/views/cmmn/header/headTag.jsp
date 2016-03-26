<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<META http-equiv="Cache-Control" content="No-Cache"> 
<link href="/resources/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link rel="stylesheet" href="/resources/js/jqwidgets.3.8.0/styles/jqx.base.css" type="text/css" /> <!--  jsx css -->
<link rel="stylesheet" href="/resources/css/content.css" type="text/css" > <!--  common css -->

<script src="/resources/js/underscore.js" type="text/javascript"></script><!-- Collection, Array 제어용 유틸(Linq와 비슷) -->
<script src="/resources/js/json2.js"></script><!-- json 유틸 -->
<script src="/resources/js/request.js"></script><!-- request 유틸 -->
<script src="/resources/js/ie-shims.js"></script><!-- IE shims for array indexOf, string startsWith and string trim -->

<!-- angularjs -->
<script src="/resources/js/angularjs/angular-1.4.0-rc.2/angular.js"></script><!-- angularjs core -->
<script src="/resources/js/angularjs/angular-1.4.0-rc.2/angular-resource.min.js"></script><!-- angularjs resource -->
<script src="/resources/js/angularjs/angular-1.4.0-rc.2/angular-sanitize.js"></script><!-- safe html module -->
<script src="/resources/js/angularjs/angular-1.4.0-rc.2/angular-mocks.js"></script><!-- safe html module -->
<!-- // angularjs -->

<script src="/resources/js/jquery/jquery-1.11.1.min.js"></script><!-- jquery 라이브러리 -->
<script src="/resources/js/jquery/jquery.session.js" type="text/javascript"></script><!-- session cookie 유틸 -->
<script src="/resources/js/jquery/jquery.fileDownload.js" type="text/javascript"></script>

<!-- jqwidgets Script -->
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxcore.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxdata.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxvalidator.custom.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxbuttons.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxradiobutton.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxcheckbox.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxbuttongroup.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxcombobox.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxscrollbar.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxlistbox.custom.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxdropdownlist.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxinput.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxdatetimeinput.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxcalendar.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxtooltip.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxtabs.custom.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxwindow.custom.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxmaskedinput.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/globalization/globalize.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxmenu.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxgrid.custom.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxgrid.filter.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxgrid.sort.custom.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxgrid.selection.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxpanel.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxcheckbox.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxgrid.pager.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxgrid.export.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxdata.export.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxtree.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxgrid.edit.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxgrid.columnsreorder.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxchart.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/jqxangular.js"></script>
<!-- // jqwidgets Script -->

<!-- custom jqwidgets Script -->
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxgrid.extend.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxgrid.selection.extend.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxbuttons.extend.js"></script>
<script type="text/javascript" src="/resources/js/jqwidgets.3.8.0/custom/jqxradiobuttons.extend.js"></script>
<!-- //custom jqwidgets Script -->

<!-- 날짜 포멧 지원 라이브러리 -->
<script src="/resources/js/moment.js"></script>

<script src="/resources/js/common.js"></script>
<script src="/resources/js/spinnerForLoading.js"></script>

<!-- angularjs modules -->
<script src="/resources/app/common/modules/angular-underscore.min.js"></script><!-- angular-underscore -->
<script src="/resources/app/common/modules/angular-local-storage.min.js"></script><!-- angular-local-storage -->
<script src="/resources/app/common/modules/pagenations/angular-pagenation.js"></script><!-- angular-pagination -->
<script src="/resources/app/common/modules/modal-core.js"></script><!-- modal-core -->
<!-- // angularjs modules -->

<!-- angularjs app -->
<script src="/resources/app/app.js"></script>
<script src="/resources/app/app.config.js"></script>
<script src="/resources/app/app.run.js"></script>
<script src="/resources/app/common/services/common-services.js"></script>
<script src="/resources/app/common/services/popup/popup-services.js"></script>
<script src="/resources/app/common/services/common-resource-services.js"></script>
<script src="/resources/app/common/services/http-intercepter-service.js"></script>
<script src="/resources/app/common/services/resource-service.js"></script>
<script src="/resources/app/common/filters/common-filters.js"></script>
<script src="/resources/app/common/directives/common-directives.js"></script>
<script src="/resources/app/common/directives/topmenu-directive.js"></script>
<script src="/resources/app/common/services/authcheck-service.js"></script>
<script src="/resources/app/common/directives/tab/multilang-tab-directive.js"></script>
<script src="/resources/app/common/controllers/popup/popup-controller.js"></script>
<script src="/resources/app/common/controllers/main-controller.js"></script>
<!-- // angularjs app -->
                  
<!-- mock services -->
<script src="/resources/app/common/services/mocks/mock-service.js"></script>
<script src="/resources/app/common/services/mocks/mock-appsinfo-service.js"></script>
<script src="/resources/app/common/services/mocks/mock-category-service.js"></script>
<script src="/resources/app/common/services/mocks/mock-watermarkinfo-service.js"></script>
<script src="/resources/app/common/services/mocks/mock-resourcedomain-service.js"></script>
<script src="/resources/app/common/services/mocks/mock-users-service.js"></script>
<!-- // mock services -->                  