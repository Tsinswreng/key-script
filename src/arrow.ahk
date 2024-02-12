;
;Home
^Left::
  SendInput, {Home}
  Return

+^Left::
  SendInput, {Shift Down}{Home}{Shift Up}
  Return


;End
^Right::
  SendInput, {End}
  Return

+^Right::
  SendInput, {Shift Down}{End}{Shift Up}
  Return

;Home
!I::
  SendInput, {Home}
  Return

+!I::
  SendInput, {Shift Down}{Home}{Shift Up}
  Return

;End
!O::
  SendInput, {End}
  Return

+!O::
  SendInput, {Shift Down}{End}{Shift Up}
  Return

;左
!J::
  SendInput, {Left}
  Return

+!J::
  SendInput, {Shift Down}{Left}{Shift Up}
  Return

;下
!K::
  SendInput, {Down}
  Return

+!K::
  SendInput, {Shift Down}{Down}{Shift Up}
  Return
;右
!L::
  SendInput, {Up}
  Return

+!L::
  SendInput, {Shift Down}{Up}{Shift Up}
  Return
;上
!;::
  SendInput, {Right}
  Return

+!;::
  SendInput, {Shift Down}{Right}{Shift Up}
  Return

