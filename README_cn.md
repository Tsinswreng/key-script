
# Tsinswreng AutoHotkey script

## 運行

需要安裝AutoHotkey

若不效、可試用管理員模式運行

## mouseMode.ahk
用鍵盤模擬鼠標操作

開啓後默認爲普通模式

按F1 + 9 進入鼠標模式、按F1 + 0 回到進入普通模式

鍵盤模式下 按 j k l ; 可將鼠標指針 左 下 右 上 移動、默認步長爲10、橫排數字1~4可調步長。按 n m , . 亦 左 下 右 上 移動、但每次移動的步長爲原來的4倍

按 a s d f 爲 滾輪 左 下 右 上 移動。

按w爲鼠標左鍵、e爲鼠標右鍵。長按w即相當于長按鼠標左鍵不放。

## arrow.ahk

alt + j k l ; 實現 光標 左 下 右 上 移動

alt+i 爲 home、 alt+o 爲 end

ctrl+左箭頭 爲 home、 ctrl+右箭頭 爲 end

可搭配shift一起按以選中

## arror_fast.ahk

alt+ n m , . 實現 光標 左 下 右 上 移動、一次性移4次

可搭配shift一起按以選中

## TswG_keyMap.ahk

個人更改的按鍵映射

;右alt鍵 -> backspace

;正斜槓鍵與右shift鍵交換

;原`[`鍵 -> `y`

;原`]`鍵 -> `[`

;原`\`鍵 -> `]`

;原`y`鍵 -> `\`

;大寫鎖定鍵 -> Enter

;ctrl + 0 -> CapsLock

## 已知bug

啓動mouseMode.ahk並進入鼠標模式、win10中、將光標懸停在任務欄的某個圖標中再用鍵盤操作光標上移到略縮窗口時略縮窗口消失。

原因: 移動鼠標使光標懸停在任務欄的某個圖標中顯示略縮窗口時、按下按鍵亦使略縮窗口消失

## TODO

- [x] mouseMode取消長按判定時延