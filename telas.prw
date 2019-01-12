#Include "Totvs.ch"

User Function MSDialog()
 
// define a quantidade de caracteres do campo
Local cGet := Space(10)
 
// Cria diálogo
Local oDlg := MSDialog():New(180,180,550,700,'Dados Usuário',,,,,,,,,.T.)
 
  // componentes visuais
  // os 2 primeiros parâmetros indicam a distancia entre o obj e a tela
  // primeiro distancia superior e depois lateral esquerda
  @ 030,015 SAY "Idade: "        SIZE 052,007 OF oDlg PIXEL
  @ 027,040 MSGET oGet VAR cGet  SIZE 050,010 OF oDlg PIXEL
 
  oTButton := TButton():New( 045, 015, "Confirmar",oDlg,{||alert("enviado")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
 
// Ativa diálogo
oDlg:Activate()
Return
