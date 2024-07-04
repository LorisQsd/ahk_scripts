#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F2::
    ; click pour select l'item 
    click
    sleep 100

    ; Appuyer sur la touche Entrée
    Send, {Enter}
    sleep 100

    ; Récupérer la position actuelle de la souris
    MouseGetPos, x, y

    ; Déplacer la souris de 30 pixels vers la gauche
    MouseMove, x-210, y, 0 ; Le dernier paramètre "0" correspond à la vitesse (instantané)

    ; click sur max
    Click

    sleep 100

    ; resend un click pour valider le max
    Click

    sleep 100

    ; reset mouse position
    MouseGetPos, x, y
    MouseMove, x+210, y, 0
return