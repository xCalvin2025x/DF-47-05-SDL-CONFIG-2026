/*
匹配进程
*/
#HotIf WinActive("ahk_exe Dwarf Fortress.exe")

/*
窗口移动
左边修正+5px,上边修正+45px
由于任务栏在上所以修改上边修正+45px
*/
^m:: {
    WinMove(5, 45, , , "A")
}

/*
Z轴快速5
*/
!Insert:: {
    loop 5 {
        Send("{Insert}")
    }
}
!Delete:: {
    loop 5 {
        Send("{Delete}")
    }
}
/*
Z轴快速10
*/
+Insert:: {
    loop 10 {
        Send("{Insert}")
    }
}
+Delete:: {
    loop 10 {
        Send("{Delete}")
    }
}

/*
快速5
*/
!Home:: {
    loop 5 {
        Send("{Home}")
    }
}
!End:: {
    loop 5 {
        Send("{End}")
    }
}
/*
快速10
*/
+Home:: {
    loop 10 {
        Send("{Home}")
    }
}
+End:: {
    loop 10 {
        Send("{End}")
    }
}

/*
快速5
*/
!Up:: {
    loop 5 {
        Send("{Up}")
    }
}
!Down:: {
    loop 5 {
        Send("{Down}")
    }
}
!Left:: {
    loop 5 {
        Send("{Left}")
    }
}
!Right:: {
    loop 5 {
        Send("{Right}")
    }
}
/*
快速10
*/
+Up:: {
    loop 10 {
        Send("{Up}")
    }
}
+Down:: {
    loop 10 {
        Send("{Down}")
    }
}
+Left:: {
    loop 10 {
        Send("{Left}")
    }
}
+Right:: {
    loop 10 {
        Send("{Right}")
    }
}
