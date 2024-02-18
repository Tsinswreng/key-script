#NoEnv  ; 阻止其他程序的键盘操作
#SingleInstance, Force
#MaxHotkeysPerInterval 100
;#HotkeyInterval 1

Mode := {}

Mode["normal"] := 0
Mode["mouse"] := 1

status := Mode.normal

mouseStepLength = 10
multipleForFast = 4
sleepDelay = 1
sleepDelay_wheel = 50
$F1::
{
	Send, {F1}
}

F1 & 0::
{
	status := Mode.normal
	return
}

F1 & 9::
{
	status := Mode.mouse
	return
}

$![:: ; 若用ahk改y則不能寫alt + Y、當以原ᵗ鍵潙準
{
	if (status = Mode.normal){
		status := Mode.mouse
	}else{
		status := Mode.normal
	}
	return
}

; 要寫$、否則Send , j後仍入此即致死循環
; cursor move left
$J::
{
	if (status = Mode.mouse){
		While GetKeyState("j", "P")
		{
			MouseMove, (-1)*mouseStepLength, 0, 0, R
			Sleep, sleepDelay
		}
	}else{
		Send , j
	}
	return
}

$N::
{
	if (status = Mode.mouse){
		While GetKeyState("n", "P")
		{
			MouseMove, (-1)*mouseStepLength*multipleForFast, 0, 0, R
			Sleep, sleepDelay
		}
		
	}else{
		Send , n
	}
	return
}

;cursor move down
$K::
{
	if (status = Mode.mouse){
		While GetKeyState("k", "P")
		{
			MouseMove, 0, (1)*mouseStepLength, 0, R
			Sleep, sleepDelay
		}
		
	}else{
		Send , k
	}
	return
}

$M::
{
	if (status = Mode.mouse){
		While GetKeyState("m", "P")
		{
			MouseMove, 0, (1)*mouseStepLength*multipleForFast, 0, R
			Sleep, sleepDelay
		}
		
	}else{
		Send , m
	}
	return
}

;cursor move up
$L::
{
	if (status = Mode.mouse){
		While GetKeyState("l", "P")
		{
			MouseMove, 0, (-1)*mouseStepLength, 0, R
			Sleep, sleepDelay
		}
		
	}else{
		Send , l
	}
	return
}

$,::
{
	if (status = Mode.mouse){
		While GetKeyState(",", "P")
		{
			MouseMove, 0, (-1)*mouseStepLength*multipleForFast, 0, R
			Sleep, sleepDelay
		}
	}else{
		Send , ,
	}
	return
}

;cursor move right
$;::
{
	if (status = Mode.mouse){
		While GetKeyState(";", "P")
		{
			MouseMove, (1)*mouseStepLength, 0, 0, R
			Sleep, sleepDelay
		}
		
	}else{
		Send , {;}
	}
	return
}

$.::
{
	if (status = Mode.mouse){
		While GetKeyState(".", "P")
		{
			MouseMove, (1)*mouseStepLength*multipleForFast, 0, 0, R
			Sleep, sleepDelay
		}
	}else{
		Send , .
	}
	return
}

;click
$w::
{
	if (status = Mode.mouse){
		;Send {LButton}
		Click down
		KeyWait, w  ; 等待A键松开
		Click up
	}else{
		Send, w
	}
	return
}

$^w::
{
	if (status = Mode.mouse){
		;Send {LButton}
		Send, {Ctrl down}{Click down}{KeyWait, w}{Click up}{Ctrl up}
	}else{
		Send, ^w
	}
	return
}

$+w::
{
	if (status = Mode.mouse){
		;Send {LButton}
		Send, {Shift down}{Click down}{KeyWait, w}{Click up}{Shift up}
	}else{
		Send, W
	}
	return
}

$e::
{
	if (status = Mode.mouse){
		Click right down
		KeyWait, e
		Click right up
	}else{
		Send, e
	}
	return
}

;wheel
$a::
{
	
	if (status = Mode.mouse){
		While GetKeyState("a", "P")
		{
			MouseClick, WheelLeft,,,1,0,D,R
			Sleep, sleepDelay_wheel
		}
	}else{
		Send, a
	}
	return
}

$s::
{
	
	if (status = Mode.mouse){
		While GetKeyState("s", "P")
		{
			MouseClick, WheelDown,,,1,0,D,R
			Sleep, sleepDelay_wheel
		}
		
	}else{
		Send, s
	}
	return
}


$d::
{
	if (status = Mode.mouse){
		While GetKeyState("d", "P")
		{
			MouseClick, WheelUp,,,1,0,D,R
			Sleep, sleepDelay_wheel
		}
		
	}else{
		Send, d
	}
	return
}

$f::
{
	if (status = Mode.mouse){
		While GetKeyState("f", "P")
		{
			MouseClick, WheelRight,,,1,0,D,R
			Sleep, sleepDelay_wheel
		}
		
	}else{
		Send, f
	}
	return
}

; modify move step length
$1::
{
	if (status = Mode.mouse){
		mouseStepLength := 1
	}else{
		Send, 1
	}
	return
}

$2::
{
	if (status = Mode.mouse){
		mouseStepLength := 5
	}else{
		Send, 2
	}
	return
}

$3::
{
	if (status = Mode.mouse){
		mouseStepLength := 20
	}else{
		Send, 3
	}
	return
}

$4::
{
	if (status = Mode.mouse){
		mouseStepLength := 50
	}else{
		Send, 4
	}
	return
}

