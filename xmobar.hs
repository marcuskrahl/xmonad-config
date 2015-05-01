-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    --font = "xft:Fixed-8",
    font = "xft:DejaVu Sans Mono:pixelsize=10:antialias=true:hinting=true",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 0, ypos = 0, width = 1700, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Weather "EDDC" ["-t","<tempC>C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 9000,
        Run MultiCpu ["-t","Cpu: <total0>% <total1>% <total2>% <total3>%","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","1"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run DynNetwork ["-t","Net: <rx>, <tx>","-S","True","-d","1","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Wireless "wlp4s0" ["-t","Wifi: <essid> <qualityvbar>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 100,
        Run Date "%d.%m.%y %T" "date" 10,
        Run Battery ["-t","<left>% / <timeleft>"] 100,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{<fc=#FFFFCC>%date%</fc> %multicpu% %memory% %dynnetwork% %EDDC% %battery%" -- %wlp4s0wi%"
}