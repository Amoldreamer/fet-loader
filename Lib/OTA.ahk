#include Lib\JSON.ahk
#include Lib\Logging.ahk
#include Lib\lang_strings.ahk

class OTA
{
    checkupd()
    {
        jsonStr := JSON.GetFromUrl("https://api.github.com/repos/clangremlini/fet-loader/releases/latest")
        if IsObject(jsonStr) 
        {
            MsgBox, % jsonStr[1]
            Return
        }
        if (jsonStr = "")
        Return
        obj := JSON.Parse(jsonStr)
        latest_release := obj.tag_name
        change_log := obj.body
        if (version != latest_release)
        {
            Logging(1,"A new version is available. Latest version: " latest_release)
            MsgBox, 68, %script% | %string_new_version%, %latest_release% | %string_changelog%`n`n%change_log%`n`n`n%string_want_download%
            IfMsgBox, Yes
                OTA.download(latest_release)
        }
    }
    download(govnokod_po_drugomy_ne_rabotaet)
    {
        download_url := "https://github.com/clangremlini/fet-loader/releases/download/" govnokod_po_drugomy_ne_rabotaet "/loader.exe"
        UrlDownloadToFile, %download_url%, %A_ScriptDir%\loader-%govnokod_po_drugomy_ne_rabotaet%.exe
        Run, %A_ScriptDir%\loader-%govnokod_po_drugomy_ne_rabotaet%.exe
        ExitApp
    }
}