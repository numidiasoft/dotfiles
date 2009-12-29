import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog

myKeys = [
        ("M-<Right>",       windows W.focusDown)
        , ("M-S-<Right>",   windows W.swapDown)
        , ("M-<Left>",      windows W.focusUp)
        , ("M-S-<Left>",     windows W.swapUp)
    ]

myLogHook = dynamicLogWithPP xmobarPP

myManageHook = composeAll [
        className =? "Firefox-bin" --> moveTo "web"    
    ]
        where moveTo = doF . W.shift

main = xmonad defaultConfig {
        modMask = mod4Mask -- Use Super instead of Alt
        , terminal = "urxvt"
        , keys = myKeys
        , logHook = myLogHook
        , manageHook = myManageHook
    }
