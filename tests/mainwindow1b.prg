/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow

   ? "testando criacao da janela principal (modo maximizado)"
   ?
   ? "feche a janela para encerrar a aplicacao"

   oApp := QApplication():new()

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   ACTIVATE WINDOW oMainWindow MAXIMIZED

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN