export namespace mouseMode{

/**
 * @param speed 非負數
 * @returns 
 */
function mouseLeft(speed:string){
	return `(-1)*${speed}, 0, 0, R`
}


function mouseDown(speed:string){
	return `0, ${speed}, 0, R`
}

function mouseUp(speed:string){
	return `0, (-1)*${speed}, 0, R`
}

function mouseRight(speed:string){
	return `${speed}, 0, 0, R`
}

const mouseStepLength = 'mouseStepLength'

function key(key:string, move:string){

let ans = 
`
$${key}::
{
	sp := ${mouseStepLength}
	if (status = Mode.mouse)
	{
		if (A_PriorHotkey <> "$${key}" or A_TimeSincePriorHotkey > 200)
		{
		}
		else
		{
			sp := sp*4
		}
		While GetKeyState("${key}", "P")
		{
			MouseMove, ${move}
			Sleep, sleepDelay
		}
	}else
	{
		Send , {${key}}
	}
	return
}
`
	return ans
}

function unmodify(){
	let ans = 
`
#NoEnv  ; 阻止其他程序的键盘操作
#SingleInstance, Force
#MaxHotkeysPerInterval 100
;#HotkeyInterval 1

Mode := {}

Mode["normal"] := 0
Mode["mouse"] := 1

status := Mode.normal

mouseStepLength := 10
multipleForFast := 4
sleepDelay := 1
sleepDelay_wheel := 50
doublePressInterval := 400
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

`
return ans
}

export function main(){
	let ans = ''
	let sp = 'sp'
	let nmMoveSpeed = 'sp*multipleForFast'
	ans = unmodify()
	ans += key('j', mouseLeft(sp))
	ans += key('k', mouseDown(sp))
	ans += key('l', mouseUp(sp))
	ans += key(';', mouseRight(sp))

	ans += key('n', mouseLeft(nmMoveSpeed))
	ans += key('m', mouseDown(nmMoveSpeed))
	ans += key(',', mouseUp(nmMoveSpeed))
	ans += key('.', mouseRight(nmMoveSpeed))
	console.log(ans)
	return ans
}



}//namespace mouseMode

mouseMode.main()

//ts-node src/mouseMode.ts > build/mouseMode.ahk