SET MULTILOCKS ON
SET STATUS BAR OFF
SET EXACT ON
SET DATE DMY
SET DELE ON
SET SAFETY OFF
SET SYSM AUTOMATIC
SET TALK OFF
SET CONFIRM ON
SET CURSOR ON
SET EXCLUSIVE OFF
SET SYSMENU OFF
SET SYSM TO DEFA
SET CONSOLE OFF 
_Screen.WindowState = 2
public gnConnHandle,strConnstring 
 _han=FOPEN([c:\Projetos\MicroUniverso\Txt\Config.txt]) 
DO WHILE FERROR()==0 
	strTexto=FREAD( _han,1000) 
	numPosicao1 = AT(':',strTexto)
	numPosicao2 = AT(';',strTexto)
	numPosicao3 = numPosicao2-1
	strServidor = SUBSTR(strTexto,numPosicao1+1,numPosicao3-numPosicao1)
	strTexto    = SUBSTR(strTexto,numPosicao2+1)
	numPosicao1 = AT(':',strTexto)
	numPosicao2 = AT(';',strTexto)
	numPosicao3 = numPosicao2-1
	strUsuario  = SUBSTR(strTexto,numPosicao1+1,numPosicao3-numPosicao1)
	strTexto    = SUBSTR(strTexto,numPosicao2+1)
	numPosicao1 = AT(':',strTexto)
	numPosicao2 = AT(';',strTexto)
	numPosicao3 = numPosicao2-1
	strBanco  = SUBSTR(strTexto,numPosicao1+1,numPosicao3-numPosicao1)
	strTexto    = SUBSTR(strTexto,numPosicao2+1)
	numPosicao1 = AT(':',strTexto)
	numPosicao2 = AT(';',strTexto)
	numPosicao3 = numPosicao2-1
	strSenha  = SUBSTR(strTexto,numPosicao1+1,numPosicao3-numPosicao1)
	EXIT 
ENDDO 
FCLOSE( _han ) 
strConnstring = "driver={SQL Server};server="+strServidor+";uid="+strUsuario+";pwd="+strSenha+";database="+StrBanco
DO FORM \Projetos\MicroUniverso\Forms\login
READ EVENTS
