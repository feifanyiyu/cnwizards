{******************************************************************************}
{                                                                              }
{                       Pascal Script Source File                              }
{                                                                              }
{             Run by RemObjects Pascal Script in CnPack IDE Wizards            }
{                                                                              }
{                                   Generated by CnPack IDE Wizards            }
{                                                                              }
{******************************************************************************}

program VersionInfoKeys;

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Buttons, ClipBrd, ComCtrls, ExtCtrls, ComObj, ExtDlgs, IniFiles,
  Menus, Printers, Registry, StdCtrls, TypInfo, ToolsAPI, CnDebug,
  RegExpr, ScriptEvent, CnCommon, CnWizClasses, CnWizUtils, CnWizIdeUtils,
  CnWizShortCut, CnWizOptions;

  // If need to access IDE Components, please uses IdeInstComp
var
  Keys: TStrings;
begin
  if (Compiler = cnDelphi5) or (Compiler = cnBCB5) then
  begin
    ShowMessage('Delphi 5/C++Builder 5 NOT Support.');
    Exit;
  end;

  Keys := CnOtaGetVersionInfoKeys(nil);
  if Keys <> nil then
  begin
    ShowMessage(Keys.Text);
  end
  else
    ShowMessage('No Project or No Version Info Keys.');
end.
 