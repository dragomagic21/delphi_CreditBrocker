unit uUserCreate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TfUserCreate = class(TForm)
    bOk: TBitBtn;
    bCancel: TBitBtn;
    Lfam: TLabel;
    Lname: TLabel;
    Lsname: TLabel;
    Lbdate: TLabel;
    Bevel2: TBevel;
    rgSex: TRadioGroup;
    Ebdate: TDateTimePicker;
    Efam: TEdit;
    Ename: TEdit;
    Esname: TEdit;
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
  fUserCreate: TfUserCreate;

implementation

uses uData, uMain, uUAuto, uUBuild, uUEarth, uUNon, uUZalog;

{$R *.dfm}

procedure TfUserCreate.bOkClick(Sender: TObject);
var rec, val, path, bank: string; UserID: integer;
begin
 rec:=''; val:=''; path:='';
 path:=ExtractFilePath(Application.ExeName)+'Base\';
 { USER }
 Memo1.Clear;
 Memo1.Lines.LoadFromFile(path+'rucr.txt'); rec:=Memo1.Text; Memo1.Clear;
 Memo1.Lines.LoadFromFile(path+'vucr.txt'); val:=Memo1.Text; Memo1.Clear;
 val:=IntToStr(rgSex.ItemIndex)+','+''''+Trim(Efam.Text)+''''+','+''''+Trim(Ename.Text)+''''+','+''''+Trim(Esname.Text)+''''+','+''''+DateTimeToStr(Ebdate.DateTime)+''''+','+IntToStr(TypeOpen)+','+val+','+''''+DateTimeToStr(now())+'''';
 if (fData.CustomAdd('TB_USER',rec,val)=1) then MessageBox(fUserCreate.Handle,'Произошла ошибка! Возможно такой клиент уже существует.','Ошибка!',MB_ICONWARNING or MB_OK) else
 { USER }
 begin
 rec:=''; val:='';
 case TypeOpen of
  0: bank := 'uauto';
  1: bank := 'ubuild';
  2: bank := 'uearth';
  3: bank := 'uzalog';
  4: bank := 'unon';
 end;
 UserID := fData.GetMaxID('TB_USER');
 Memo1.Clear;
 Memo1.Lines.LoadFromFile(path+'r'+bank+'.txt'); rec:=Memo1.Text; Memo1.Clear;
 Memo1.Lines.LoadFromFile(path+'v'+bank+'.txt'); val:=IntToStr(UserID)+Memo1.Text;
 if (fData.CustomAdd('TB_'+UpperCase(bank),rec,val)=1) then MessageBox(fUserCreate.Handle,'Произошла ошибка! Возможно такой клиент уже существует.','Ошибка!',MB_ICONWARNING or MB_OK) else
 case TypeOpen of
  0: begin
      fMain.uAuto.OnShow(self);
      Application.CreateForm(TfUAuto, fUAuto);
      fUAuto.OpenMode := 1;
      fUAuto.UserID   := UserID;
      fUAuto.UserType := TypeOpen;
      fUAuto.Show();
     end;
  1: begin
      fMain.uAuto.OnShow(self);
      Application.CreateForm(TfUBuild, fUBuild);
      fUBuild.OpenMode := 1;
      fUBuild.UserID   := UserID;
      fUBuild.UserType := TypeOpen;
      fUBuild.Show();
     end;
  2: begin
      fMain.uAuto.OnShow(self);
      Application.CreateForm(TfUEarth, fUEarth);
      fUEarth.OpenMode := 1;
      fUEarth.UserID   := UserID;
      fUEarth.UserType := TypeOpen;
      fUEarth.Show();
     end;
  3: begin
      fMain.uAuto.OnShow(self);
      Application.CreateForm(TfUZalog, fUZalog);
      fUZalog.OpenMode := 1;
      fUZalog.UserID   := UserID;
      fUZalog.UserType := TypeOpen;
      fUZalog.Show();
     end;
  4: begin
      fMain.uAuto.OnShow(self);
      Application.CreateForm(TfUNon, fUNon);
      fUNon.OpenMode := 1;
      fUNon.UserID   := UserID;
      fUNon.UserType := TypeOpen;
      fUNon.Show();
     end;
 end;
 end;
 fUserCreate.Close;
end;

procedure TfUserCreate.bCancelClick(Sender: TObject);
begin
 fUserCreate.Close;
end;

end.
