<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="controller.js"></script>

<style type="text/css">
.regular-checkbox {
    -webkit-appearance: none;
    background-color: #fafafa;
    border: 1px solid #cacece;
    box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
    padding: 9px;
    border-radius: 3px;
    display: inline-block;
    position: relative;
}

.regular-checkbox:active, .regular-checkbox:checked:active {
    box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}
 
.regular-checkbox:checked {
    background-color: #e9ecee;
    border: 1px solid #adb8c0;
    box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
    color: #99a1a7;
}

.regular-checkbox:checked:after {
    content: '\2714';
    font-size: 14px;
    position: absolute;
    top: 0px;
    left: 3px;
    color: #99a1a7;
}

.big-checkbox {
    padding: 18px;
}
 
.big-checkbox:checked:after {
    font-size: 28px;
    left: 6px;
}


.modal {
    display:    none;
    position:   fixed;
    z-index:    1000;
    top:        0;
    left:       0;
    height:     100%;
    width:      100%;
    background: rgba( 255, 255, 255, .8 ) 
                url('http://i.stack.imgur.com/FhHRx.gif') 
                50% 50% 
                no-repeat;
}

body.loading {
    overflow: hidden;   
}

body.loading .modal {
    display: block;
}

.wrap {
		position:relative;
		margin:0 auto;
		width:1000px;
}

#header, #footer {
		background-color : #202020 ;
		color : #C8C8C8 ; 
		width:100%;
		float:left;
		margin-bottom: 50px;
	}

</style>

<title>Inteligencia Artificial</title>
</head>
<body style="background-color: #A8A8A8  ">
<div class="modal"></div>

<div id="header">
          <div class="wrap">
               	<p>Inteligencia Artificial</p>
				<p>Trabalho para obtenção de nota da segunda unidade</p>
				<p>Professor Cláudio Silva</p>
				<p>Equipe: Yelken Gonzales / Elenilson</p>
          </div>
</div>

<center>
<div>
<input type="checkbox" id="x1" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x2" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x3" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x4" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x5" value="1" class="regular-checkbox big-checkbox"><br>

<input type="checkbox" id="x6" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x7" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x8" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x9" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x10" value="1" class="regular-checkbox big-checkbox"><br>

<input type="checkbox" id="x11" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x12" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x13" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x14" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x15" value="1" class="regular-checkbox big-checkbox"><br>

<input type="checkbox" id="x16" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x17" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x18" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x19" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x20" value="1" class="regular-checkbox big-checkbox"><br>

<input type="checkbox" id="x21" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x22" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x23" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x24" value="1" class="regular-checkbox big-checkbox">
<input type="checkbox" id="x25" value="1" class="regular-checkbox big-checkbox">
</div>
<input type="button" id="reconhecer" value="Reconhecer" />
<input type="button" id="treinar" value="Treinar rede neural" />
<input type="button" id="limpar" value="Limpar" />
<br>

<input type="button" id="a" value="A" />
<input type="button" id="s" value="S" />
<input type="button" id="5" value="5" />
<input type="button" id="1" value="1" />
<input type="button" id="g" value="G" />
<input type="button" id="j" value="J" />
<input type="button" id="k" value="k" />
<input type="button" id="l" value="L" />
</center>
<br>

<center><h3>Console</h3></center>
<div id="console" style="display: none">Neuronio 1: 0
Neuronio 2: 0
Neuronio 2: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Erro = 0-1
Erro = 0-1
Erro = 0-1
Errou!
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
Neuronio 1: -8
Neuronio 2: -8
Neuronio 2: -8
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Erro = 0-0
Erro = 0-0
Erro = 1-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
Neuronio 1: -15
Neuronio 2: -15
Neuronio 2: -5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -15
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -15
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Erro = 0-0
Erro = 1-0
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
Neuronio 1: -3
Neuronio 2: 3
Neuronio 2: 2
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Erro = 0-0
Erro = 1-1
Erro = 1-1
Acertou!
Letra: 1
Neuronio 1: -15
Neuronio 2: 2
Neuronio 2: -6
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -15
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Erro = 1-0
Erro = 0-1
Erro = 0-0
Errou!
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
Neuronio 1: 3
Neuronio 2: -3
Neuronio 2: 2
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Erro = 1-1
Erro = 0-0
Erro = 1-1
Acertou!
Letra: J
Neuronio 1: 0
Neuronio 2: -8
Neuronio 2: -3
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Erro = 1-1
Erro = 1-0
Erro = 0-0
Errou!
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -2 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
Neuronio 1: 3
Neuronio 2: 0
Neuronio 2: -1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -1
Saida atual: 0
Erro = 1-1
Erro = 1-1
Erro = 1-0
Errou!
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*0)
Neuronio 1: -2
Neuronio 2: -9
Neuronio 2: -3
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -9
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Erro = 0-0
Erro = 0-0
Erro = 0-0
Acertou!
Letra: A
Neuronio 1: 1
Neuronio 2: -2
Neuronio 2: 8
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 1
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 8
Saida atual: 1
Erro = 0-1
Erro = 0-0
Erro = 1-1
Errou!
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
Neuronio 1: -8
Neuronio 2: -6
Neuronio 2: 3
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Erro = 0-0
Erro = 1-0
Erro = 0-1
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
Neuronio 1: -2
Neuronio 2: 7
Neuronio 2: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Erro = 0-0
Erro = 1-1
Erro = 1-1
Acertou!
Letra: 1
Neuronio 1: -6
Neuronio 2: 9
Neuronio 2: -14
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -14
Saida atual: 0
Erro = 1-0
Erro = 0-1
Erro = 0-0
Errou!
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 2 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: 4
Neuronio 2: 0
Neuronio 2: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 4
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Erro = 1-1
Erro = 0-1
Erro = 1-1
Errou!
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 2 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*0)
Neuronio 1: 3
Neuronio 2: 0
Neuronio 2: -4
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -4
Saida atual: 0
Erro = 1-1
Erro = 1-1
Erro = 0-0
Acertou!
Letra: K
Neuronio 1: 7
Neuronio 2: -5
Neuronio 2: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Erro = 1-1
Erro = 1-0
Erro = 1-1
Errou!
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 2 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*0)
Neuronio 1: 5
Neuronio 2: -6
Neuronio 2: -18
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 5
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -18
Saida atual: 0
Erro = 0-1
Erro = 0-0
Erro = 0-0
Errou!
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = -2 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 2 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -2 + (1*0*1)
Neuronio 1: -9
Neuronio 2: -1
Neuronio 2: -2
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -9
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -1
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Erro = 0-0
Erro = 0-0
Erro = 1-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 2 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -2 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -2 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*1)
PesoNovo = -2 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -2 + (1*1*0)
Neuronio 1: -6
Neuronio 2: -3
Neuronio 2: -5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Erro = 0-0
Erro = 1-0
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -3 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: 1
Neuronio 2: 7
Neuronio 2: 5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 1
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 5
Saida atual: 1
Erro = 0-1
Erro = 1-1
Erro = 1-1
Errou!
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -3 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = 3 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 2 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*0)
Neuronio 1: -9
Neuronio 2: 11
Neuronio 2: -5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -9
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 11
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Erro = 1-0
Erro = 0-1
Erro = 0-0
Errou!
PesoNovo = -2 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -3 + (1*1*0)
PesoNovo = -2 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 3 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: 3
Neuronio 2: -5
Neuronio 2: 5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 5
Saida atual: 1
Erro = 1-1
Erro = 0-0
Erro = 1-1
Acertou!
Letra: J
Neuronio 1: -1
Neuronio 2: 7
Neuronio 2: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -1
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 1
Saida atual: 1
Erro = 1-0
Erro = 1-1
Erro = 0-1
Errou!
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = 1 + (1*1*1)
PesoNovo = -3 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = 2 + (1*1*1)
PesoNovo = 1 + (1*1*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -2 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 2 + (1*-1*0)
PesoNovo = 2 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -2 + (1*-1*0)
Neuronio 1: 13
Neuronio 2: 3
Neuronio 2: -2
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 13
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Erro = 1-1
Erro = 1-1
Erro = 1-0
Errou!
PesoNovo = 0 + (1*0*1)
PesoNovo = 2 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 2 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 2 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 2 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -2 + (1*1*0)
Neuronio 1: 8
Neuronio 2: -6
Neuronio 2: -12
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 8
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -12
Saida atual: 0
Erro = 0-1
Erro = 0-0
Erro = 0-0
Errou!
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -2 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = -2 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 0 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 3 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*0)
PesoNovo = 3 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -2 + (1*0*1)
Neuronio 1: -8
Neuronio 2: 0
Neuronio 2: 9
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Erro = 0-0
Erro = 0-1
Erro = 1-1
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = -3 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = 3 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -2 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*1)
PesoNovo = -2 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -2 + (1*0*0)
Neuronio 1: -2
Neuronio 2: -12
Neuronio 2: -5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -12
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Erro = 0-0
Erro = 1-0
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -3 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: -1
Neuronio 2: 2
Neuronio 2: 5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -1
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 5
Saida atual: 1
Erro = 0-0
Erro = 1-1
Erro = 1-1
Acertou!
Letra: 1
Neuronio 1: 2
Neuronio 2: 1
Neuronio 2: -4
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 1
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -4
Saida atual: 0
Erro = 1-1
Erro = 0-1
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -3 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 3 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -2 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: 3
Neuronio 2: -10
Neuronio 2: 6
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -10
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 6
Saida atual: 1
Erro = 1-1
Erro = 0-0
Erro = 1-1
Acertou!
Letra: J
Neuronio 1: 2
Neuronio 2: 2
Neuronio 2: -3
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Erro = 1-1
Erro = 1-1
Erro = 0-0
Acertou!
Letra: K
Neuronio 1: 7
Neuronio 2: -3
Neuronio 2: 7
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Erro = 1-1
Erro = 1-0
Erro = 1-1
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -3 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = -2 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*1)
PesoNovo = 3 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -3 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 0 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*0)
Neuronio 1: -9
Neuronio 2: -8
Neuronio 2: -12
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -9
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -12
Saida atual: 0
Erro = 0-0
Erro = 0-0
Erro = 0-0
Acertou!
Letra: A
Neuronio 1: -8
Neuronio 2: -5
Neuronio 2: 9
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Erro = 0-0
Erro = 0-0
Erro = 1-1
Acertou!
Letra: S
Neuronio 1: -2
Neuronio 2: -3
Neuronio 2: -5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Erro = 0-0
Erro = 1-0
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -3 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 2 + (1*1*1)
PesoNovo = 3 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: -1
Neuronio 2: 6
Neuronio 2: 5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -1
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 6
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 5
Saida atual: 1
Erro = 0-0
Erro = 1-1
Erro = 1-1
Acertou!
Letra: 1
Neuronio 1: 2
Neuronio 2: 9
Neuronio 2: -4
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -4
Saida atual: 0
Erro = 1-1
Erro = 0-1
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -3 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 3 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 3 + (1*-1*1)
PesoNovo = 4 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -2 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 3 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: 3
Neuronio 2: -6
Neuronio 2: 6
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 6
Saida atual: 1
Erro = 1-1
Erro = 0-0
Erro = 1-1
Acertou!
Letra: J
Neuronio 1: 2
Neuronio 2: 9
Neuronio 2: -3
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Erro = 1-1
Erro = 1-1
Erro = 0-0
Acertou!
Letra: K
Neuronio 1: 7
Neuronio 2: 5
Neuronio 2: 7
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 5
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Erro = 1-1
Erro = 1-1
Erro = 1-1
Acertou!
Letra: L
Neuronio 1: -9
Neuronio 2: -8
Neuronio 2: -12
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -9
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -12
Saida atual: 0
Erro = 0-0
Erro = 0-0
Erro = 0-0
Acertou!
Letra: A
Neuronio 1: -8
Neuronio 2: -4
Neuronio 2: 9
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -4
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Erro = 0-0
Erro = 0-0
Erro = 1-1
Acertou!
Letra: S
Neuronio 1: -2
Neuronio 2: -2
Neuronio 2: -5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Erro = 0-0
Erro = 1-0
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -3 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 2 + (1*1*1)
PesoNovo = 4 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -3 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: -1
Neuronio 2: 6
Neuronio 2: 5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -1
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 6
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 5
Saida atual: 1
Erro = 0-0
Erro = 1-1
Erro = 1-1
Acertou!
Letra: 1
Neuronio 1: 2
Neuronio 2: 8
Neuronio 2: -4
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 8
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -4
Saida atual: 0
Erro = 1-1
Erro = 0-1
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -3 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 3 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 3 + (1*-1*1)
PesoNovo = 5 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -3 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 3 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: 3
Neuronio 2: -6
Neuronio 2: 6
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 6
Saida atual: 1
Erro = 1-1
Erro = 0-0
Erro = 1-1
Acertou!
Letra: J
Neuronio 1: 2
Neuronio 2: 9
Neuronio 2: -3
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Erro = 1-1
Erro = 1-1
Erro = 0-0
Acertou!
Letra: K
Neuronio 1: 7
Neuronio 2: 4
Neuronio 2: 7
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 4
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Erro = 1-1
Erro = 1-1
Erro = 1-1
Acertou!
Letra: L
Neuronio 1: -9
Neuronio 2: -8
Neuronio 2: -12
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -9
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -12
Saida atual: 0
Erro = 0-0
Erro = 0-0
Erro = 0-0
Acertou!
Letra: A
Neuronio 1: -8
Neuronio 2: -3
Neuronio 2: 9
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Erro = 0-0
Erro = 0-0
Erro = 1-1
Acertou!
Letra: S
Neuronio 1: -2
Neuronio 2: -1
Neuronio 2: -5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -1
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Erro = 0-0
Erro = 1-0
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -3 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 2 + (1*1*1)
PesoNovo = 5 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = -4 + (1*1*0)
PesoNovo = -1 + (1*1*0)
PesoNovo = 1 + (1*1*0)
PesoNovo = -2 + (1*1*0)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 0 + (1*1*1)
PesoNovo = 2 + (1*1*1)
PesoNovo = -1 + (1*1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: -1
Neuronio 2: 6
Neuronio 2: 5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -1
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 6
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 5
Saida atual: 1
Erro = 0-0
Erro = 1-1
Erro = 1-1
Acertou!
Letra: 1
Neuronio 1: 2
Neuronio 2: 7
Neuronio 2: -4
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -4
Saida atual: 0
Erro = 1-1
Erro = 0-1
Erro = 0-0
Errou!
PesoNovo = -1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -3 + (1*0*0)
PesoNovo = 1 + (1*0*1)
PesoNovo = -3 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 3 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 0 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 3 + (1*-1*1)
PesoNovo = 6 + (1*-1*0)
PesoNovo = -1 + (1*-1*1)
PesoNovo = -1 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = -4 + (1*-1*1)
PesoNovo = -1 + (1*-1*0)
PesoNovo = 1 + (1*-1*0)
PesoNovo = -2 + (1*-1*0)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 2 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 1 + (1*-1*1)
PesoNovo = 3 + (1*-1*1)
PesoNovo = 0 + (1*-1*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -1 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = -1 + (1*0*1)
PesoNovo = -1 + (1*0*0)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = -2 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = 0 + (1*0*0)
PesoNovo = -1 + (1*0*0)
PesoNovo = 2 + (1*0*0)
PesoNovo = -2 + (1*0*1)
PesoNovo = 1 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 3 + (1*0*1)
PesoNovo = 0 + (1*0*1)
PesoNovo = -2 + (1*0*1)
Neuronio 1: 3
Neuronio 2: -6
Neuronio 2: 6
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 6
Saida atual: 1
Erro = 1-1
Erro = 0-0
Erro = 1-1
Acertou!
Letra: J
Neuronio 1: 2
Neuronio 2: 9
Neuronio 2: -3
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Erro = 1-1
Erro = 1-1
Erro = 0-0
Acertou!
Letra: K
Neuronio 1: 7
Neuronio 2: 3
Neuronio 2: 7
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Erro = 1-1
Erro = 1-1
Erro = 1-1
Acertou!
Letra: L
Neuronio 1: -9
Neuronio 2: -8
Neuronio 2: -12
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -9
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -12
Saida atual: 0
Erro = 0-0
Erro = 0-0
Erro = 0-0
Acertou!
Letra: A
Neuronio 1: -8
Neuronio 2: -2
Neuronio 2: 9
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -8
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Erro = 0-0
Erro = 0-0
Erro = 1-1
Acertou!
Letra: S
Neuronio 1: -2
Neuronio 2: 0
Neuronio 2: -5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -2
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -5
Saida atual: 0
Erro = 0-0
Erro = 1-1
Erro = 0-0
Acertou!
Letra: 5
Neuronio 1: -1
Neuronio 2: 0
Neuronio 2: 5
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -1
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 0
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 5
Saida atual: 1
Erro = 0-0
Erro = 1-1
Erro = 1-1
Acertou!
Letra: 1
Neuronio 1: 2
Neuronio 2: -11
Neuronio 2: -4
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -11
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -4
Saida atual: 0
Erro = 1-1
Erro = 0-0
Erro = 0-0
Acertou!
Letra: G
Neuronio 1: 3
Neuronio 2: -6
Neuronio 2: 6
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -6
Saida atual: 0
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 6
Saida atual: 1
Erro = 1-1
Erro = 0-0
Erro = 1-1
Acertou!
Letra: J
Neuronio 1: 2
Neuronio 2: 9
Neuronio 2: -3
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 2
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 9
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: -3
Saida atual: 0
Erro = 1-1
Erro = 1-1
Erro = 0-0
Acertou!
Letra: K
Neuronio 1: 7
Neuronio 2: 3
Neuronio 2: 7
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 3
Saida atual: 1
Se saida maior que 0 assume 0; Se saida  maior ou igual 0 assume 1
Saida da formula: 7
Saida atual: 1
Erro = 1-1
Erro = 1-1
Erro = 1-1
Acertou!
Letra: L
</div>

</body>
</html>