

#NoEnv  ; 阻止其他程序的键盘操作
#SingleInstance, Force
#MaxHotkeysPerInterval 100

;fast mode
;N左
!N:: ; Alt + N 左移四次
  SendInput, {Left 4}
  Return

+!N::
  SendInput, {Shift Down}{Left 4}{Shift Up}
  Return
;M 下
!M::
  SendInput, {Down 4}
  Return

+!M::
  SendInput, {Shift Down}{Down 4}{Shift Up}
  Return
;, 右
!,::
  SendInput, {Up 4}
  Return

+!,::
  SendInput, {Shift Down}{Up 4}{Shift Up}
  Return
;. 上
!.::
  SendInput, {Right 4}
  Return

+!.::
  SendInput, {Shift Down}{Right 4}{Shift Up}
  Return


