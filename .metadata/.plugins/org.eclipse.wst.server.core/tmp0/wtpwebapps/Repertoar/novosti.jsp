<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>
<%@include file="meni.jsp"%>
<%@include file="/admin/zaednicki/konekcija-baza.jsp"%>

<div class="my-3 py-1 svetlo-sina najnovi-filmovi">
<div class="container">
<h3 class="my-1 podnaslov">Филмски <span class="b">Новости</span></h3>
</div>
</div>

<div id="novosti" class="container">
</div>

<%-- JQuery --%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>


<%-- rss2json--%>
<script>
$.ajax({
        url: 'https://api.rss2json.com/v1/api.json',
        method: 'GET',
        dataType: 'json',
        data: {
            rss_url: 'https://feed.rssunify.com/5ff38a7a542fd/rss.xml',
            api_key: 'und8bh5w8kvqyrrycsm8prcj6eoqacw2wavtskdw',
            count: 15
        }
}).done(function (response) {
    if(response.status != 'ok'){ throw response.message; }

    //console.log('====== ' + response.feed.title + ' ======');

    for(var i in response.items){
       	
        var item = response.items[i];
        //console.log(item);
        let karticka = '<div id="novosti-karticka" class="row my-5">';
        karticka += '<div class="col-md-4">';
        karticka += '<div class="view overlay"> <img src="' + response.items[i].thumbnail + '" class="w-100" onError="this.onerror=null; this.src=\'sliki/nemaSlika.jpg\';">';
        karticka += '<a href="'+response.items[i].link+'" target="_blank"> <div class="mask waves-effect waves-light" style="border-radius:15px"></div></a> </div>';
        karticka += '</div>';
        karticka += '<div class="col-md-8 px-3">';
        karticka += '<div class="card-block px-3">';
        karticka += '<a id="novosti-link" href="' + response.items[i].link + '" class="belo b" target="_blank"> <h4 class="card-title">' + response.items[i].title + '<br /> </a>';
        karticka += '<br /> <small id="opis" class="my-2 card-text">' + response.items[i].description + ' </small> <br />';
        
        
        //vadenje na izvorite
        var url = response.items[i].link;
        var domain = url.replace('http://','').replace('https://','').split(/[/?#]/)[0];
        //console.log(domain);
		
        var izvor = "";
        switch (domain) { 
        	case 'www.crnobelo.com': 
        		izvor = "Црно Бело";
        		break;
        	case 'filmfund.gov.mk': 
        		izvor = "Агенција за Филм"
        		break;
        	case 'www.kafepauza.mk': 
        		izvor = 'Кафе Пауза';
        		break;		
        	case 'srekja.mk': 
        		izvor = 'Среќа.мк';
        		break;
        }
        
        
        karticka += '<small class="card-text">Извор: <span class="b"> ' + izvor + '</span> </small> <br />';
        karticka += '<small class="card-text" style="color:#878787">Објавено: ' + response.items[i].pubDate + ' </small><br />';
        karticka += '<a class="btn btn-unique btn-md" href="' + response.items[i].link + '" target="_blank">Повеќе</a>';
        karticka += '</div> </div> </div>';
       
        
        
        //rss izvori
        //https://crnobelo.com/novosti/film?format=feed&type=rss
		//http://filmfund.gov.mk/category/новости-mk/feed
		//http://filmfund.gov.mk/?feed=rss2 <<-- NOV LINK
		//https://srekja.mk/category/slobodno-vreme-i-zabava/filmovi-i-serii/feed
		//https://www.kafepauza.mk/category/film-i-tv/feed
        
        
        
        
        
        $("#novosti").append(karticka);
    	$("#opis img").hide();
    	$("#opis p:nth-child(3)").hide();
    	$("small").addClass("belo");
    }
});
</script>

<%--  aktivna klasa vo menito --%>  
<script>
$(function() {
		$("#pocetna").removeClass("active");
        $("#filmski-novosti").addClass("active");
    });
</script>





<%@include file="footer.jsp"%>
