function treinarRedeNeural() {
	$.ajax({
		url : "/InteligenciaArtificial/ServletTreinamento",
		cache : false,
		type : "get",
		beforeSend : function() {

		},
		error : function(retorno) {
			alert(retorno);
		},
		success : function(retorno) {
			alert('Rede neural treinada com sucesso');
			$("#console").html(retorno);
		}
	});
}

function reconhecerCaracter() {
	var x1 = 0;
	var x2 = 0;
	var x3 = 0;
	var x4 = 0;
	var x5 = 0;
	var x6 = 0;
	var x7 = 0;
	var x8 = 0;
	var x9 = 0;
	var x10 = 0;
	var x11 = 0;
	var x12 = 0;
	var x13 = 0;
	var x14 = 0;
	var x15 = 0;
	var x16 = 0;
	var x17 = 0;
	var x18 = 0;
	var x19 = 0;
	var x20 = 0;
	var x21 = 0;
	var x22 = 0;
	var x23 = 0;
	var x24 = 0;
	var x25 = 0;

	if ($('#x1').is(':checked')) {
		x1 = 1;
	} else {
		x1 = 0;
	}
	if ($('#x2').is(':checked')) {
		x2 = 1;
	} else {
		x2 = 0;
	}
	if ($('#x3').is(':checked')) {
		x3 = 1;
	} else {
		x3 = 0;
	}
	if ($('#x4').is(':checked')) {
		x4 = 1;
	} else {
		x4 = 0;
	}
	if ($('#x5').is(':checked')) {
		x5 = 1;
	} else {
		x5 = 0;
	}
	if ($('#x6').is(':checked')) {
		x6 = 1;
	} else {
		x6 = 0;
	}
	if ($('#x7').is(':checked')) {
		x7 = 1;
	} else {
		x7 = 0;
	}
	if ($('#x8').is(':checked')) {
		x8 = 1;
	} else {
		x8 = 0;
	}
	if ($('#x9').is(':checked')) {
		x9 = 1;
	} else {
		x9 = 0;
	}
	if ($('#x10').is(':checked')) {
		x10 = 1;
	} else {
		x10 = 0;
	}
	if ($('#x11').is(':checked')) {
		x11 = 1;
	} else {
		x11 = 0;
	}
	if ($('#x12').is(':checked')) {
		x12 = 1;
	} else {
		x12 = 0;
	}
	if ($('#x13').is(':checked')) {
		x13 = 1;
	} else {
		x13 = 0;
	}
	if ($('#x14').is(':checked')) {
		x14 = 1;
	} else {
		x14 = 0;
	}
	if ($('#x15').is(':checked')) {
		x15 = 1;
	} else {
		x15 = 0;
	}
	if ($('#x16').is(':checked')) {
		x16 = 1;
	} else {
		x16 = 0;
	}
	if ($('#x17').is(':checked')) {
		x17 = 1;
	} else {
		x17 = 0;
	}
	if ($('#x18').is(':checked')) {
		x18 = 1;
	} else {
		x18 = 0;
	}
	if ($('#x19').is(':checked')) {
		x19 = 1;
	} else {
		x19 = 0;
	}
	if ($('#x20').is(':checked')) {
		x20 = 1;
	} else {
		x20 = 0;
	}
	if ($('#x21').is(':checked')) {
		x21 = 1;
	} else {
		x21 = 0;
	}
	if ($('#x22').is(':checked')) {
		x22 = 1;
	} else {
		x22 = 0;
	}
	if ($('#x23').is(':checked')) {
		x23 = 1;
	} else {
		x23 = 0;
	}
	if ($('#x24').is(':checked')) {
		x24 = 1;
	} else {
		x24 = 0;
	}
	if ($('#x25').is(':checked')) {
		x25 = 1;
	} else {
		x25 = 0;
	}

	var variavel = "x1=" + x1 + "&" + "x2=" + x2 + "&" + "x3=" + x3 + "&"
			+ "x4=" + x4 + "&" + "x5=" + x5 + "&" + "x6=" + x6 + "&" + "x7="
			+ x7 + "&" + "x8=" + x8 + "&" + "x9=" + x9 + "&" + "x10=" + x10
			+ "&" + "x11=" + x11 + "&" + "x12=" + x12 + "&" + "x13=" + x13
			+ "&" + "x14=" + x14 + "&" + "x15=" + x15 + "&" + "x16=" + x16
			+ "&" + "x17=" + x17 + "&" + "x18=" + x18 + "&" + "x19=" + x19
			+ "&" + "x20=" + x20 + "&" + "x21=" + x21 + "&" + "x22=" + x22
			+ "&" + "x23=" + x23 + "&" + "x24=" + x24 + "&" + "x25=" + x25;
	
	$.ajax({
		url : "/InteligenciaArtificial/ServletReconhecimento?" + variavel,
		cache : false,
		type : "get",
		beforeSend : function() {

		},
		error : function(retorno) {
			alert(retorno);
		},
		success : function(retorno) {
			alert(retorno);
		}
	});
}

$(function() {
	$("#treinar").click(function() {
		treinarRedeNeural();
	});
	
	$("#reconhecer").click(function() {
		reconhecerCaracter();
	});

});