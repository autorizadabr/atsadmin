; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ATS-Admin"
#define MyAppVerName "ATS-Admin 1.1"
#define MyAppPublisher "ATS Solu��es"
#define MyAppURL "http://www.atsti.com.br"
#define MyAppExeName "PrjFinanceiro.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3C027B76-FB5A-11DC-3C85-0013D44296C8}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Home\SisAdmin
DefaultGroupName=ATS-Financeiro
OutputDir=C:\Home
OutputBaseFilename=financeiro
SetupIconFile=
Compression=lzma
SolidCompression=yes

[Languages]
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: PrjFinanceiro.exe; DestDir: {app}; Flags: ignoreversion replacesameversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon
