//* ------------Sección código-usuario -------- */
package compilador_lenguajejava;
import java_cup.runtime.*;

%%
//* - Sección de opciones y declaraciones - */
//* -OPCIONES -- */
//* Nombre de la clase generada para el analizador léxico */
%class Analizador

//* Acceso a la columna y fila actual de análisis CUP */
%line
%column

//* Habilitar la compatibilidad con el interfaz CUP para el generador sintáctico */
%cup


/*-- MACRO DECLARACIONES --*/
P=[.]
%%
[\n] { yychar=0;}
[ \t\r\n\f] { /* ignore white space. */ }
\' { /* ignore apostrofos. */ }


/*-------- Sección de reglas lexicas ------ */

<YYINITIAL>"publico"		{ return new Symbol(sym.PUBLIC, yyline, yychar,  yytext());}
<YYINITIAL>"privado"		{  return new Symbol(sym.PRIVATE, yyline, yychar,  yytext());}		
<YYINITIAL>"si"		        {  return new Symbol(sym.IF, yyline, yychar,  yytext());}
<YYINITIAL>"sino"		{  return new Symbol(sym.ELSE, yyline, yychar,  yytext());}
<YYINITIAL>"entonces"		{  return new Symbol(sym.THEN, yyline, yychar,  yytext());}
<YYINITIAL>"bandera"		{  return new Symbol(sym.BOOLEAN, yyline, yychar,  yytext());}
<YYINITIAL>"mientras"		{  return new Symbol(sym.WHILE, yyline, yychar,  yytext());}
<YYINITIAL>"verdadero"		{  return new Symbol(sym.TRUE, yyline, yychar,  yytext());}
<YYINITIAL>"falso"		{  return new Symbol(sym.FALSE, yyline, yychar,  yytext());}
<YYINITIAL>"imprimir"		{  return new Symbol(sym.PRINT, yyline, yychar,  yytext());}

<YYINITIAL>{P}		{  return new Symbol(sym.PUNTO, yyline, yychar,  yytext());}


.		        {

/*-------- Presenta los el error léxico, la fila y columna donde se encuentra-----------*/
              System.out.println("Error se está ingresando un caracter no reconocido, un caracter especial o un número...." 
              + "en la fila " +(yyline+1) +" y en la columna " + (yychar+1));
              System.out.println("error lexico en la fila "+(yyline+1) +" y en la columna " + (yychar+1));


	          	}

