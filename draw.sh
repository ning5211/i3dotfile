#!/usr/bin/env bash
read -r X Y W H < <(slop -f "%x %y %w %h" -b 1 -t 0 -q)
#长和宽两个值需要转换成行和列
#转换方法:打开终端,全屏.分别输入tput cols和tput lines得到两个值;然后用屏幕分辨率分别除以这两个值。比如我的分辨率是1366×768,1366/{tput cols}得到9,768/{tput lines}得到20
(( W /= 9 ))
(( H /= 20 ))
g=${W}x${H}+${X}+${Y}

urxvt -depth 32 -g $g -name drawing
