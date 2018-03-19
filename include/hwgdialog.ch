/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand INIT DIALOG <oObj> ;
          [ OF <oParent> ] ;
          [ TITLE <cTitle> ] ;
          [ AT <nX>,<nY> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ STYLE <nStyle> ] ;
          [ ON INIT <bInit> ] ;
          [ ON SIZE <bSize> ] ;
          [ ON PAINT <bPaint> ] ;
          [ ON GETFOCUS <bGFocus> ] ;
          [ ON LOSTFOCUS <bLFocus> ] ;
          [ ON EXIT <bExit> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGDialog)():new( <oParent>, ;
                                     <nX>, ;
                                     <nY>, ;
                                     <nWidth>, ;
                                     <nHeight>, ;
                                     <cToolTip>, ;
                                     <cStyleSheet>, ;
                                     <oFont>, ;
                                     <cTitle>, ;
                                     <bInit>, ;
                                     <bSize>, ;
                                     <bPaint>, ;
                                     <bGFocus>, ;
                                     <bLFocus>, ;
                                     <bExit> )

#xcommand ACTIVATE DIALOG <oObj> => HWGFILO():remove() ;; <oObj>:activate()