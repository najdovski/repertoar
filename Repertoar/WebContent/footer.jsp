<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- footer --%>
<footer class="my-3 svetlo-sina">
<div class="container">
<h6 class="py-1"><img src="sliki/logo-footer.png" class="logo-footer"> Кино Репертоар - Copyright 2019 ©</h6>
</div>
</footer>
<%-- footer kraj --%>

<%-- SKRIPTI --%>
    <%-- Tooltips --%>
    
    <%-- JQuery --%>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

    <%-- <script type="text/javascript" src="https://mdbootstrap.com/previews/docs/latest/js/popper.min.js"></script> --%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

    <%-- Bootstrap core JavaScript --%>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
    
    <%-- MDB core JavaScript --%>
    <%-- <script type="text/javascript" src="https://mdbootstrap.com/previews/docs/latest/js/mdb.min.js"></script> --%>
    <script type="text/javascript" src="mdb/mdb.min.js"></script>
    
    <%-- MDBootstrap repertoar tabela  --%>
	<script type="text/javascript" src="mdb/datatables.min.js"></script>
    

    <%-- brisenje na wave effect od navbar ///// slidetogle najavi se--%>
<script>
	$(".nav-item, .active").removeClass("waves-effect waves-light"); 
</script>


	<%-- najava --%>
<script>
	 $('#najava').click(function(){
            $('#najava-skrij').slideToggle('slow');
        });   
</script>


<%-- title --%>
<script>
$(function() {
	
	if ($("#pocetna").hasClass("active")){
		
	}
	else{
		var $podnaslov = $('.podnaslov').text();
		$("title").prepend($podnaslov + " - ");
	};
});
</script>



<%-- MDBootstrap repertoar tabela  --%>
<script>$(document).ready(function () {
	$('#dtBasicExample').DataTable();
	$('.dataTables_length').addClass('bs-select');
	});
</script>

</body>
</html>