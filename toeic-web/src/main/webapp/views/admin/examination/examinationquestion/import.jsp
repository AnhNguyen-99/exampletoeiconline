<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><fmt:message key="label.home" bundle="${lang}"/></title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Tạo câu hỏi từ file excel</a>
                </li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row" >
                <div class="col-xs-12">
                	<div class="widget-box table-filter">
                                    <div class="widget-header">
                                        <h4 class="widget-title">Tạo câu hỏi từ file excel</h4>
                                        <div class="widget-toolbar">
                                            <a href="#" data-action="collapse">
                                                <i class="ace-icon fa fa-chevron-up"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <div class="form-horizontal">                                           
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Chọn file excel:</label>
                                                    <div class="col-sm-8">
                                                    	<c:url var="importUrl" value="/admin-examination-question-import.html"/>
                                                    	<form action="${importUrl}" method="POST" enctype="multipart/form-data">
                                                    		<input type="file" name="file"/>
						                                    <br/>
                                                    		<button class="btn btn-sm btn-success" type="submit">
	                                                            Import câu hỏi
	                                                            <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                        	</button>
                                                            <input type="hidden" name="examinationId" value="${examinationId}"/>
                                                    	</form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                   </div>                                  
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!-- /.main-content -->
</body>
</html>