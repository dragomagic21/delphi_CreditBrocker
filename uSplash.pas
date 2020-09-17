unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, IniFiles;

type
  TfSplash = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSplash: TfSplash;

implementation

{$R *.dfm}

procedure TfSplash.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled := false;
end;

procedure TfSplash.FormCreate(Sender: TObject);
var f: TIniFile;
begin
 f := TIniFile.Create(ExtractFileDir(Application.ExeName)+'\config.ini');
 Timer1.Interval:=f.ReadInteger('DataBase','logo',2000);
 f.Free;
 Timer1.Enabled := TRUE;
end;

end.
