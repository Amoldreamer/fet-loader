#Include Lib\Logging.ahk

IfNotExist, C:\AYE
{	
	Logging(1, "Creating folder...")
	FileCreateDir, C:\AYE
}
IfNotExist, C:\AYE\custom
{	
	FileCreateDir, C:\AYE\custom
}
IfNotExist, C:\AYE\config.ini
{	
	Logging(1, "Creating config file...")
	IniWrite, false, C:\AYE\config.ini, settings, custominject
	IniWrite, true, C:\AYE\config.ini, settings, checkupdates
    IniWrite, false, C:\AYE\config.ini, settings, oldgui
	Logging(1, "done.")
}


checkConfigValue("C:\AYE\config.ini","settings","oldgui","false")
checkConfigValue("C:\AYE\config.ini","settings","oldgui","false")
checkConfigValue("C:\AYE\config.ini","settings","checkupdates","true")
checkConfigValue("C:\AYE\custom\custom.ini","dlls","customlist","Slot1|Slot2|Slot3|Slot4|Slot5")

checkConfigValue(file,section,key,value)
{   
    IniRead, output_key, %file%, %section%, %key%
    if (output_key = "ERROR")
    {   
        Logging(2,"Not found " key " in config. Updating config file")
        IniWrite, %value%, %file%, %section%, %key%
    }
}

IniRead, language, C:\AYE\config.ini, settings, language

setLang()
{
    if (A_Language = "0809" or A_Language = "0409") ; en_UK and en_US
        IniWrite, en, C:\AYE\config.ini, settings, language
    if (A_Language = "0419") ; ru_RU
	    IniWrite, ru, C:\AYE\config.ini, settings, language
    if (A_Language = "0422") ; ukr
        IniWrite, ukr, C:\AYE\config.ini, settings, language
}

if (language = "ERROR")
{
    setLang()
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
    global string_dll_not_found1 := "No dll file named "
    global string_dll_not_found2 := ".dll found`nin folder C:\AYE\custom"
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
    global string_dll_not_found1 := "�� ������ dll ���� � ��������� "
    global string_dll_not_found2 := ".dll`n� ����� C:\AYE\custom"
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
    global string_dll_not_found1 := "�� ������� ��������� ����� � ��������, � ��������� "
    global string_dll_not_found2 := ".dll`n� ����� C:\AYE\custom"
    
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
    global string_dll_not_found1 := "�� ������� ��������� ����� � ��������, � ��������� "
    global string_dll_not_found1 := ".dll`n� ����� C:\AYE\custom"
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
    global string_dll_not_found1 := "�� �������� DLL ���� � ������ "
    global string_dll_not_found1 := ".dll`n� ����� C:\AYE\custom"
}