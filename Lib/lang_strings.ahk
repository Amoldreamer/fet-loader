#Include Lib\Logging.ahk

IfNotExist, C:\AYE
{	
	Logging(1, "Creating folder...")
	FileCreateDir, C:\AYE
}
IfNotExist, C:\AYE\config.ini
{	
	Logging(1, "Creating config file...")
	IniWrite, false, C:\AYE\config.ini, settings, custominject
	IniWrite, true, C:\AYE\config.ini, settings, checkupdates
    IniWrite, false, C:\AYE\config.ini, settings, oldgui
	Logging(1, "done.")
}


checkConfigValue("settings","oldgui","false")
checkConfigValue("settings","checkupdates","true")

checkConfigValue(section,key,value)
{   
    IniRead, output_key, C:\AYE\config.ini, %section%, %key%
    if (output_key = "ERROR")
    {   
        Logging(2,"Not found " key " in config. Updating config file")
        IniWrite, %value%, C:\AYE\config.ini, %section%, %key%
    }
}

IniRead, language, C:\AYE\config.ini, settings, language

if (language = "ERROR")
{
    Logging(2,"Not found language line in config. Updating variables...")
	MsgBox, 68, AYE Loader, ���� �� ������ ������������ ������� ����, ������� ��.`nIf you want to use English, click No.`n`n������ ��������� ���������� ������ ��� ������ �������.`nThis message appears only on the first launch.`n`n�� ������ �������� ���� � ���������������� �����.`nYou can change the language in the configuration file. (C:\AYE\config.ini)
	IfMsgBox, Yes
		IniWrite, ru, C:\AYE\config.ini, settings, language
	IfMsgBox, No
		IniWrite, en, C:\AYE\config.ini, settings, language
}

IniRead, language, C:\AYE\config.ini, settings, language
if (language = "en") 
{
    global string_load := "Load"
    global string_bypass := "Enable VAC bypass"
    global string_config := "Config"
    global string_about := "About"
    global string_pid0 := "No csgo.exe process found. Run it?"
    global string_nosteam := "Install steam, retard."
    global string_success := "Successful injection!"
    global string_warning_custom_dll := "We're not gonna help you if your fucking system is gonna blow the fucking wine off it's not our fault. `nGot it?"
    global string_no_dll := "You didn't choose the DLL."
    global string_desc := "AYE loader with open-source for AYE boys."
    global string_devs := "Developers:"
    global string_dev1 := "m4x3r1337"
    global string_dev2 := "rf0x1d"
    global string_count := "Current cheats count:"
    global string_new_version := "A new version is available."
    global string_want_download := "Want to download the update?"
    global string_changelog := "Changelog:"
}
if (language = "ru") 
{
    global string_load := "�����������"
    global string_bypass := "�������� VAC bypass"
    global string_config := "���������"
    global string_about := "����"
    global string_pid0 := "������� csgo.exe �� ������. ���������?"
    global string_nosteam := "�������� Steam, �����."
    global string_success := "������ ������ �������"
    global string_warning_custom_dll := "�� �� ����� ���� �������� ���� � ���� ����� ������� ������� ����� ����� ������ ��� �� ���� ����.`n�����?"
    global string_no_dll := "�� �� ������ DLL."
    global string_desc := "��� ������ ��� ��� ������� � �������� �������� �����."
    global string_devs := "������������:"
    global string_dev1 := "m4x3r1337"
    global string_dev2 := "rf0x1d"
    global string_count := "������� ���-�� �����:"
    global string_new_version := "�������� ����� ������."
    global string_want_download := "������ ������� ����������?"
    global string_changelog := "������ ���������:"
}
if (language = "eblo") 
{
    global string_load := "������� ���"
    global string_bypass := "������� VAC bypass"
    global string_config := "�������"
    global string_about := "����"
    global string_pid0 := "��������� ���� ���� ������� ����"
    global string_nosteam := "�������� Steam, �����."
    global string_success := "���� ���� ������� �������"
    global string_warning_custom_dll := "�� �� ����� ���� �������� ���� � ���� ����� ������� ������� ����� ����� ������ ��� �� ���� ����.`n�����?"
    global string_no_dll := "��� ����� ��� ������"
    global string_desc := "��� ������ ��� ��� ������� � �������� �������� �����."
    global string_devs := "������):"
    global string_dev1 := "m4x3r1337"
    global string_dev2 := "rf0x1d"
    global string_count := "������� ���-�� ���� � ����� ����:"
    global string_new_version := "�������� ����� ������."
    global string_want_download := "������ ������ ����������?"
    global string_changelog := "������ ������ in ur ass:"
}
if (language = "hvh") 
{
    global string_load := "���������� ��� �����"
    global string_bypass := "�������� ���"
    global string_config := "������"
    global string_about := "���� �������"
    global string_pid0 := "��� ����� ���� ������� �� ������"
    global string_nosteam := "������������� ������ 0 ��� �����"
    global string_success := "������� ������ � ������ ���"
    global string_warning_custom_dll := "���� � ���� ����� ����� ��� ��������� ����� ������ ��� �� ��� ������� ����� ���"
    global string_no_dll := "���, ������ ���."
    global string_desc := "��� ������ ��� ��� ������ � �������� �������� �����."
    global string_devs := "������:"
    global string_dev1 := "m4x3r1337"
    global string_dev2 := "rf0x1d"
    global string_count := "���������� ��� ������:"
    global string_new_version := "����� ������ ����� ��������."
    global string_want_download := "������� ��� ������?"
    global string_changelog := "������ ���������:"
}
if (language = "ukr") 
{
    global string_load := "�'���� ����"
    global string_bypass := "�������� VAC bypass"
    global string_config := "���������"
    global string_about := "����������"
    global string_pid0 := "������ csgo.exe �� ��������. ���������?"
    global string_nosteam := "�������� Steam, �������."
    global string_success := "������ ������� ������"
    global string_warning_custom_dll := "�� �� ������ ��� ���������� ���� � ���� ����� ������� �������� ���� ����� ������� �� �� ���� ����.'n�������?"
    global string_no_dll := "�� �� ������ DLL."
    global string_desc := "��� ������ ��� ��� ������ � �������� �������� �����."
    global string_devs := "���������:"
    global string_dev1 := "m4x3r1337"
    global string_dev2 := "rf0x1d"
    global string_count := "������� ������� ����:"
    global string_new_version := "�������� ���� �����."
    global string_want_download := "������ ����������� ���������?"
    global string_changelog := "������ ���:"
}