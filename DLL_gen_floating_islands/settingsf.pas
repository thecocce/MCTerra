unit settingsf;

interface

uses
  Forms, Classes, Controls, StdCtrls, Windows;

type
  Tsettings = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  settings: Tsettings;

procedure init_form_settings(hndl:LongWord);

implementation

uses generation, previewf, SysUtils;

{$R *.dfm}

procedure init_form_settings(hndl:LongWord);
begin
  Application.Handle:=hndl;
  settings:=TSettings.Create(Application);
end;

procedure Tsettings.Button1Click(Sender: TObject);
begin
  modalresult:=mrOK;
end;

procedure Tsettings.Button2Click(Sender: TObject);
begin
  modalresult:=mrCancel;
end;

procedure Tsettings.Button9Click(Sender: TObject);
begin
  if prev_ready=true then
    preview.ShowModal
  else
    messagebox(app_hndl,'Preview is not ready for viewing','Notice',MB_OK);
end;

end.
