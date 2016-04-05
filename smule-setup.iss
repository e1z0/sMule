; -- Languages.iss --
; Demonstrates a multilingual installation.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName={cm:MyAppName}
AppId=sMule
AppVerName={cm:MyAppVerName,0.5}
DefaultDirName={pf}\sMule
DefaultGroupName={cm:MyAppName}
UninstallDisplayIcon={app}\smule.exe
VersionInfoDescription=šMule Setup
VersionInfoProductName=šMule
OutputDir=E:\projects\sMule\
; Uncomment the following line to disable the "Select Setup Language"
; dialog and have it rely solely on auto-detection.
ShowLanguageDialog=yes
; If you want all languages to be listed in the "Select Setup Language"
; dialog, even those that can't be displayed in the active code page,
; uncomment the following line. Note: Unicode Inno Setup always displays
; all languages.
;ShowUndisplayableLanguages=yes

[Languages]
Name: en; MessagesFile: "compiler:Default.isl"
Name: lt; MessagesFile: "compiler:Languages\Lithuanian.isl"


[Messages]
en.BeveledLabel=English
lt.BeveledLabel=Lithuanian

[CustomMessages]
en.MyDescription=šMule Setup
en.MyAppName=šMule
en.MyAppVerName=šMule %1
lt.MyDescription=šMule įdiegimas
lt.MyAppName=šMule
lt.MyAppVerName=šMule %1

[Files]
Source: "setup\smule.exe"; DestDir: "{app}"; Flags: restartreplace
Source: "setup\Readme.txt"; DestDir: "{app}"; Flags: isreadme; Languages: en;
Source: "setup\license.txt"; DestDir: "{app}"; Languages: en;
Source: "setup\license-LT.txt"; DestDir: "{app}"; Languages: lt;
Source: "setup\*.*"; DestDir: "{app}"
Source: "setup\lang\*.*"; DestDir: "{app}\lang\"
Source: "setup\config\*.*"; DestDir: "{app}\config\"
Source: "setup\Incoming\*.*"; DestDir: "{app}\Incoming\"
Source: "setup\Temp\*.*"; DestDir: "{app}\Temp\"
Source: "setup\Skins\*.*"; DestDir: "{app}\Skins\"


[Icons]
Name: "{group}\{cm:MyAppName}"; Filename: "{app}\smule.exe"
Name: "{group}\{cm:UninstallProgram,{cm:MyAppName}}"; Filename: "{uninstallexe}"

[Tasks]
; The following task doesn't do anything and is only meant to show [CustomMessages] usage
;Name: mytask; Description: "{cm:MyDescription}"
[Registry]
Root: HKCU; Subkey: "Software\sMule\"; ValueType: dword; ValueName: "UsePublicUserDirectories"; ValueData: "2" 
[INI]
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "Nick"; String: "{computername}"
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "IRCNick"; String: "{computername}_{username}"
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "Incoming"; String: "{app}\Incoming"
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "TempDir"; String: "{app}\Temp"
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "NotifierConfiguration"; String: "{app}\config\Notifier.ini"
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "SkinProfileDir"; String: "{app}\skins"
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "ToolbarBitmapFolder"; String: "{app}\skins"
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "DefaultIRCServerNew"; String: "irc.sonic.lt"
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "WebTemplateFile"; String: "{app}\config\sMule.tmpl"
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "Language"; String: "1063"; Languages: lt; 
Filename: "{app}\config\preferences.ini"; Section: "sMule"; Key: "Language"; String: "1033"; Languages: en;
Filename: "{app}\config\Category.ini"; Section: "General"; Key: "Incoming"; String: "{app}\Incoming"

[Run]
Filename: "{app}\smule.exe"; Description: "Launch application"; Flags: postinstall nowait skipifsilent; Languages: en; 
Filename: "{app}\smule.exe"; Description: "Paleisti programą"; Flags: postinstall nowait skipifsilent; Languages: lt; 