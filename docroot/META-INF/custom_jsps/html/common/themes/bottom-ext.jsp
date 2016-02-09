<%--
/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<style>
@media (min-width: 979px) {
	.compliance-eu-cookie-banner {
		position: fixed;
		width: 100%;
		left: 0px;
		bottom: 0px;
		background: none repeat scroll 0% 0% #7D7D7D;
		font-size: 13px;
		font-weight: 700;
		text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.35);
		z-index: 99999;
		text-align: center;
		color: #FFF;	
		height: 25px;
		padding: 0px 0px 0px 0px;
	}
}
@media (max-width: 979px) {
	.compliance-eu-cookie-banner {
		position: fixed;
		width: 100%;
		left: 0px;
		bottom: 0px;
		background: none repeat scroll 0% 0% #7D7D7D;
		font-size: 13px;
		font-weight: 700;
		text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.35);
		z-index: 99999;
		text-align: center;
		color: #FFF;	
		height: 60px;
		padding: 0px 0px 0px 0px;
	}
}


.accept-eu-cookie-banner {

	display: inline-block;
	color: #FFF !important;
	text-decoration: none;
	background: none repeat scroll 0% 0% #7DAF3B;
	padding: 2px 10px 2px 10px;	
	border-radius: 3px;
	box-shadow: 0px 0px 2px rgba(0, 0, 0, 0.25);
	text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.35);
}

.message-eu-cookie-banner {
	padding: 5px;
	font-family: 'Helvetica Neue,Helvetica,Arial,sans-serif' !important;
	font-size: 14px !important;
	line-height: 20px !important;
}

.message-eu-cookie-banner a {	
	font-family: 'Helvetica Neue,Helvetica,Arial,sans-serif' !important;
	font-size: 14px !important;
	line-height: 20px !important;
	text-decoration: underline !important;
	color: #FFF !important;
}
.message-eu-cookie-banner a:hover {	
	font-family: 'Helvetica Neue,Helvetica,Arial,sans-serif' !important;
	font-size: 14px !important;
	line-height: 20px !important;
	text-decoration: underline !important;
	color: #FFF !important;
}

.info-eu-cookie-banner {
	color: #FFF !important;
	text-decoration: underline !important;
	padding: 5px;
}

.aui .modal.fade.in {
    top: 30% !important;
    z-index: 1050 !important;
}
.aui .modal.fade {
	top: 30% !important;
	z-index: -1050 !important;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script src="http://getbootstrap.com/2.3.2/assets/js/bootstrap-modal.js"></script>
<script>
$(document).ready( function() {    
	<!-- customize this -->
    var divEUCookie = '<div id="complianceEUCookieId" class="compliance-eu-cookie-banner"><span class="message-eu-cookie-banner"><liferay-ui:message key="info-1"/> <liferay-ui:message key="link-1"/>. <liferay-ui:message key="info-2"/>. <liferay-ui:message key="link-2"/></div>';
    $(document.body).append(divEUCookie);
	$("#wrapper").css("margin-top",$(".compliance-eu-cookie-banner").css("height"));
    checkComplianceEUCookie();
})
function checkComplianceEUCookie(){
  if ($.cookie('complianceEUCookie')=='y') {
  	$("#wrapper").css("margin-top","0px");
    $("#complianceEUCookieId").css("display","none");
  } 
}
function setComplianceEUCookie(){      
  $.cookie('complianceEUCookie', 'y', { expires: 365, path: '/' });
  checkComplianceEUCookie();
}    
function showCookieInfo(){
	$('#cookieInfo').modal('show');
}
</script>
<div id="cookieInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
    <h3 id="myModalLabel"><liferay-ui:message key="cookie-title"/></h3>
  </div>
  <div class="modal-body">
  	<!-- customize this -->
    <p><liferay-ui:message key="cookie-1"/></p>
    <p><liferay-ui:message key="cookie-2"/></p>
    <p><liferay-ui:message key="cookie-3"/></p>
    <p><liferay-ui:message key="cookie-4"/></p>
  </div>  
</div>