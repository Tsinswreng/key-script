; #SingleInstance, Force
; SendMode Input
; SetWorkingDir, %A_ScriptDir%

;右alt鍵 -> backspace
;正斜槓鍵與右shift鍵交換
;原[鍵 -> y
;原]鍵 -> [
;原\鍵 -> ]
;原y鍵 -> \
;大寫鎖定鍵 -> Enter
;ctrl + 0 -> CapsLock

; 右Alt键 -> Backspace
RAlt::Backspace

; 正斜杠键与右Shift键交换
;SC029::Send {RShift}
; ; 当按下/键时按下右Shift键
; /::Send {RShift down}

; ; 当抬起/键时抬起右Shift键
; / Up::Send {RShift up}
	
; RShift::Send {/ down}
; RShift up::Send {/ up}

/::RShift
RShift::/


; 原[键 -> y
[::y

; 原]键 -> [
]::[

; 原\键 -> ]
\::]

; 原y键 -> \
y::\

; 大写锁定键 -> Enter
CapsLock::Enter

; Ctrl + 0 -> CapsLock
^0::CapsLock