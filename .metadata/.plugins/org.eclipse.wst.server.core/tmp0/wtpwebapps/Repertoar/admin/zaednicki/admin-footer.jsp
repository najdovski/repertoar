<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<%-- footer --%>
<footer class="my-3 svetlo-sina">
<div class="container">
<h6 class="py-1"><img src="../sliki/logo-footer.png" class="logo-footer"> Кино Репертоар - Copyright 2019 ©</h6>
</div>
</footer>
<%-- footer kraj --%>

<%-- title --%>
<script>
$(function() {
		var $podnaslov = $('.podnaslov').text();
		$("title").prepend($podnaslov + " - ");
});
</script>

<%-- JQuery --%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<%-- Tooltips --%>
<%-- <script type="text/javascript" src="https://mdbootstrap.com/previews/docs/latest/js/popper.min.js"></script> --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

<%-- Bootstrap core JavaScript --%>
<%-- MDB core JavaScript --%>
<%-- <script type="text/javascript" src="https://mdbootstrap.com/previews/docs/latest/js/mdb.min.js"></script> --%>
<script type="text/javascript" src="../mdb/mdb.min.js"></script>
</body>
</html>
<%
}else{
	response.sendRedirect("/Repertoar/admin/najava.jsp");
}
%>