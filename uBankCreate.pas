unit uBankCreate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfBankCreate = class(TForm)
    GroupBox1: TGroupBox;
    EName: TEdit;
    bOk: TBitBtn;
    bCancel: TBitBtn;
    Memo1: TMemo;
    procedure bOkClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    TypeOpen: byte;
    { Public declarations }
  end;

var
  fBankCreate: TfBankCreate;

implementation

uses uData, uMain, uBAuto, uBBuild, uBEarth, uBNon, uBZalog;

{$R *.dfm}

procedure TfBankCreate.bOkClick(Sender: TObject);
var rec, val, path, bank: string;
begin
 rec:=''; val:=''; path:='';
 path:=ExtractFilePath(Application.ExeName)+'Base\';
 case TypeOpen of
  0: bank := 'bankauto';
  1: bank := 'bankbuild';
  2: bank := 'bankearth';
  3: bank := 'bankzalog';
  4: bank := 'banknon';
 end;
 Memo1.Lines.LoadFromFile(path+'r'+bank+'.txt'); rec:=Memo1.Text; Memo1.Clear;
 Memo1.Lines.LoadFromFile(path+'v'+bank+'.txt'); val:=''''+Trim(EName.Text)+''''+Memo1.Text;
 if (fData.CustomAdd('TB_'+UpperCase(bank),rec,val)=1) then MessageBox(0,'Произошла ошибка! Возможно такой банк уже существует.','Ошибка!',MB_ICONWARNING or MB_OK) else
 case TypeOpen of
  0: begin
      fMain.BAuto.OnShow(self);
      Application.CreateForm(TfBAuto, fBAuto);
      rec:=''; rec:=fData.CustomSelS('TB_BANKAUTO','ID','where NAME='''+Trim(EName.Text)+'''');
      fBAuto.BankID   := StrToInt(rec);
      fBAuto.Caption  := 'Банк "'+Trim(EName.Text)+'". Авто.';
      fBAuto.Show;
     end;
  1: begin
      fMain.BBuild.OnShow(self);
      Application.CreateForm(TfBBuild, fBBuild);
      rec:=''; rec:=fData.CustomSelS('TB_BANKBUILD','ID','where NAME='''+Trim(EName.Text)+'''');
      fBBuild.BankID   := StrToInt(rec);
      fBBuild.Caption  := 'Банк "'+Trim(EName.Text)+'". Недвижимость.';
      fBBuild.Show;
     end;
  2: begin
      fMain.BEarth.OnShow(self);
      Application.CreateForm(TfBEarth, fBEarth);
      rec:=''; rec:=fData.CustomSelS('TB_BANKEARTH','ID','where NAME='''+Trim(EName.Text)+'''');
      fBEarth.BankID   := StrToInt(rec);
      fBEarth.Caption  := 'Банк "'+Trim(EName.Text)+'". Земля.';
      fBEarth.Show;
     end;
  3: begin
      fMain.BZalog.OnShow(self);
      Application.CreateForm(TfBZalog, fBZalog);
      rec:=''; rec:=fData.CustomSelS('TB_BANKZALOG','ID','where NAME='''+Trim(EName.Text)+'''');
      fBZalog.BankID   := StrToInt(rec);
      fBZalog.Caption  := 'Банк "'+Trim(EName.Text)+'". Деньги под залог.';
      fBZalog.Show;
     end;
  4: begin
      fMain.BNon.OnShow(self);
      Application.CreateForm(TfBNon, fBNon);
      rec:=''; rec:=fData.CustomSelS('TB_BANKNON','ID','where NAME='''+Trim(EName.Text)+'''');
      fBNon.BankID   := StrToInt(rec);
      fBNon.Caption  := 'Банк "'+Trim(EName.Text)+'". Деньги без залога.';
      fBNon.Show;
     end;
 end;
 fBankCreate.Close;
end;

procedure TfBankCreate.bCancelClick(Sender: TObject);
begin
 fBankCreate.Close;
end;

end.
