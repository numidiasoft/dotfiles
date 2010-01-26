import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig (additionalKeys)
import qualified XMonad.StackSet as W
import qualified Data.Map as M
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Layout.PerWorkspace (onWorkspace)
import XMonad.Layout.LayoutHint (layoutHint)

myBorderWidth = 2
myNormalBorderColor = "#202030"
myFocusedBorderColor = "#A0A0D0"

myWorkspaces = ["web", "work", "virt", "4", "5", "6", "7"]

myManageHook = composeAll
    [
        className =? "Gimp"         --> doFloat
        , className =? "Vncviewer"  --> doFloat
    ]

--myLayout = smartBorders
--        $ onWorkspace "web" (browseLayout ||| Full)
--        $ genericLayout
--    where
--        browseLayout = Mirror Tall (3 % 100) (3 % 5)

myBar = "xmobar"

myPP = xmobarPP {ppCurrent = xmobarColor "#429942" "" . wrap "<" ">"}

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myConfig = defaultConfig {
        modMask = mod4Mask -- Use Super instead of Alt
        , terminal = "urxvt"
        , workspaces = myWorkspaces
        , borderWidth = myBorderWidth
        , normalBorderColor = myNormalBorderColor
        , focusedBorderColor = myFocusedBorderColor
--        , layoutHook = myLayout
    }

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
