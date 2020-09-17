unit uWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  TfWait = class(TForm)
    pb: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fWait: TfWait;

implementation

{$R *.dfm}

end.
