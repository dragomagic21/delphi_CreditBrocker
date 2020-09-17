unit uAutoDoub;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfAutoDoub = class(TForm)
    rgA: TRadioGroup;
    rgP: TRadioGroup;
    bOk: TBitBtn;
    rgT: TRadioGroup;
    rgA1: TRadioGroup;
    rgP1: TRadioGroup;
    rgT1: TRadioGroup;
    Image1: TImage;
    procedure bOkClick(Sender: TObject);
    procedure rgAClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgPClick(Sender: TObject);
    procedure rgTClick(Sender: TObject);
    procedure rgA1Click(Sender: TObject);
    procedure rgP1Click(Sender: TObject);
    procedure rgT1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    ChL, ChR: TCheckBox;
    procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
    procedure Light();
    function Add(): byte;
    function Update(): byte;
  public
    BankID: integer;
    { Public declarations }
  end;

var
  fAutoDoub: TfAutoDoub;

implementation

uses uBAuto, uData;

{$R *.dfm}

procedure TfAutoDoub.bOkClick(Sender: TObject);
var n,r: string; i,z: integer;
begin
 try
 fBAuto.FMode := 0;
 if ((rgA.ItemIndex=rgA1.ItemIndex)and(rgP.ItemIndex=rgP1.ItemIndex)and(rgT.ItemIndex=rgT1.ItemIndex)) then
 begin
  MessageBox(fAutoDoub.Handle,'Произошла ошибка! Нельзя продублировать одну и ту же запись!','Ошибка!',MB_ICONWARNING or MB_OK);
  Exit;
 end;
 n:='';
 case rgA.ItemIndex of
  0: n:=n+'L';
  1: n:=n+'M';
  2: n:=n+'H';
  3: n:=n+'E';
 end;
 case rgT.ItemIndex of
  0: n:=n+'n';
  1: n:=n+'o';
 end;
 case rgP.ItemIndex of
  0: n:=n+'F';
  1: n:=n+'J';
  2: n:=n+'A';
  3: n:=n+'S';
  4: n:=n+'U';
  5: n:=n+'E';
 end;
 case rgA1.ItemIndex of
  0: r:=r+'L';
  1: r:=r+'M';
  2: r:=r+'H';
  3: r:=r+'E';
 end;
 case rgT1.ItemIndex of
  0: r:=r+'n';
  1: r:=r+'o';
 end;
 case rgP1.ItemIndex of
  0: r:=r+'F';
  1: r:=r+'J';
  2: r:=r+'A';
  3: r:=r+'S';
  4: r:=r+'U';
  5: r:=r+'E';
 end;
 z:=2;
 i:=fData.GetCount('TB_AUTO','ID','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))');
 if (i = 0) then MessageBox(fAutoDoub.Handle,'Произошла ошибка! Нельзя продублировать пустую запись!','Ошибка!',MB_ICONWARNING or MB_OK) else
 case fData.GetCount('TB_AUTO','ID','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(r)+''''+'))') of
      0: z:=Add();
      1: z:=Update();
     end;
 {
 case i of
  0: MessageBox(fAutoDoub.Handle,'Произошла ошибка! Нельзя продублировать пустую запись!','Ошибка!',MB_ICONWARNING or MB_OK);
  1: case fData.GetCount('TB_AUTO','ID','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(r)+''''+'))') of
      0: z:=Add();
      1: z:=Update();
     end;
 end;
}
 case z of
  0: begin
      if (rgA1.ItemIndex=3) then if Length(fBAuto.EelseName.Text)=0 then fBAuto.EelseName.Text:='ПРИМЕР';
      (fBAuto.FindComponent('ch'+r[1]+r[2]) as TCheckBox).Checked := TRUE;
      (fBAuto.FindComponent('ch'+r) as TCheckBox).Checked := TRUE;
      MessageBox(fAutoDoub.Handle,'Запись успешно продублирована!','Выполнено!',MB_ICONINFORMATION or MB_OK);
     end;
  1: MessageBox(fAutoDoub.Handle,'Произошла ошибка! Попробуйте повторить попытку позднее!','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
 fBAuto.FMode := 1;
 except
  fBAuto.FMode := 1;
  MessageBox(fAutoDoub.Handle,'Произошла ошибка! Попробуйте повторить попытку позднее!','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfAutoDoub.rgAClick(Sender: TObject);
begin
 Light();
end;

procedure TfAutoDoub.Light;
var n: string;
begin
 ChL.Font.Color := clWindowText;
 ChR.Font.Color := clWindowText;
 n:='ch';
 case rgA.ItemIndex of
  0: n:=n+'L';
  1: n:=n+'M';
  2: n:=n+'H';
  3: n:=n+'E';
 end;
 case rgT.ItemIndex of
  0: n:=n+'n';
  1: n:=n+'o';
 end;
 case rgP.ItemIndex of
  0: n:=n+'F';
  1: n:=n+'J';
  2: n:=n+'A';
  3: n:=n+'S';
  4: n:=n+'U';
  5: n:=n+'E';
 end;
 ChL:=(fBAuto.FindComponent(n) as TCheckBox);
 ChL.Font.Color := clGreen;
 n:='ch';
 case rgA1.ItemIndex of
  0: n:=n+'L';
  1: n:=n+'M';
  2: n:=n+'H';
  3: n:=n+'E';
 end;
 case rgT1.ItemIndex of
  0: n:=n+'n';
  1: n:=n+'o';
 end;
 case rgP1.ItemIndex of
  0: n:=n+'F';
  1: n:=n+'J';
  2: n:=n+'A';
  3: n:=n+'S';
  4: n:=n+'U';
  5: n:=n+'E';
 end;
 ChR:=(fBAuto.FindComponent(n) as TCheckBox);
 ChR.Font.Color := clRed;
end;

procedure TfAutoDoub.FormCreate(Sender: TObject);
begin
 ChL := fBAuto.chLnF;
 ChL.Font.Color := clGreen;
 ChR := fBAuto.chLnJ;
 ChR.Font.Color := clRed;
 // clWindowText
end;

procedure TfAutoDoub.rgPClick(Sender: TObject);
begin
 Light();
end;

procedure TfAutoDoub.rgTClick(Sender: TObject);
begin
 Light();
end;

procedure TfAutoDoub.rgA1Click(Sender: TObject);
begin
 Light();
end;

procedure TfAutoDoub.rgP1Click(Sender: TObject);
begin
 Light();
end;

procedure TfAutoDoub.rgT1Click(Sender: TObject);
begin
 Light();
end;

function TfAutoDoub.Add: byte;
var n,r,rec,val: string;
begin
 try
  Result:=0;
  case rgA.ItemIndex of
  0: n:=n+'L';
  1: n:=n+'M';
  2: n:=n+'H';
  3: n:=n+'E';
 end;
 case rgT.ItemIndex of
  0: n:=n+'n';
  1: n:=n+'o';
 end;
 case rgP.ItemIndex of
  0: n:=n+'F';
  1: n:=n+'J';
  2: n:=n+'A';
  3: n:=n+'S';
  4: n:=n+'U';
  5: n:=n+'E';
 end;
 case rgA1.ItemIndex of
  0: r:=r+'L';
  1: r:=r+'M';
  2: r:=r+'H';
  3: r:=r+'E';
 end;
 case rgT1.ItemIndex of
  0: r:=r+'n';
  1: r:=r+'o';
 end;
 case rgP1.ItemIndex of
  0: r:=r+'F';
  1: r:=r+'J';
  2: r:=r+'A';
  3: r:=r+'S';
  4: r:=r+'U';
  5: r:=r+'E';
 end;
  rec:=''; rec:='BANK,AUTO_T,SY,SM,';
  rec:=rec+'GR,';
  rec:=rec+'GR_Y,GR_M,GR_S,';
  rec:=rec+'DL,';
  rec:=rec+'DL_Y,DL_M,DL_S,';
  rec:=rec+'EU,';
  rec:=rec+'EU_Y,EU_M,EU_S,';
  rec:=rec+'EL,';
  rec:=rec+'EL_E,EL_Y,EL_M,EL_S,';
  rec:=rec+'KOMT,KOM,MINFV,MAXTC,PRIM';
  val:='';
  val:=IntToStr(BankID)+','+''''+UpperCase(r)+''''+',';
  val:=val+fData.CustomSelS('TB_AUTO','SY','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+',';
  val:=val+fData.CustomSelS('TB_AUTO','SM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+',';
  val:=val+fData.CustomSelS('TB_AUTO','GR','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','GR_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','GR_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','GR_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+fData.CustomSelS('TB_AUTO','DL','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','DL_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','DL_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','DL_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+fData.CustomSelS('TB_AUTO','EU','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','EU_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','EU_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','EU_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+fData.CustomSelS('TB_AUTO','EL','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','EL_E','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','EL_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','EL_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','EL_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+fData.CustomSelS('TB_AUTO','KOMT','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','KOM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','MINFV','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','MAXTC','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+''''+',';
  val:=val+''''+fData.CustomSelS('TB_AUTO','PRIM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''';
  Result:=fData.CustomAdd('TB_AUTO',rec,val);
 except
  Result:=1;
 end;
end;

function TfAutoDoub.Update: byte;
var n,r: string; rec,val: TStringList;
begin
 try
  Result:=0;
  rec:=TStringList.Create; rec.Clear;
  val:=TStringList.Create; val.Clear;
  case rgA.ItemIndex of
  0: n:=n+'L';
  1: n:=n+'M';
  2: n:=n+'H';
  3: n:=n+'E';
 end;
 case rgT.ItemIndex of
  0: n:=n+'n';
  1: n:=n+'o';
 end;
 case rgP.ItemIndex of
  0: n:=n+'F';
  1: n:=n+'J';
  2: n:=n+'A';
  3: n:=n+'S';
  4: n:=n+'U';
  5: n:=n+'E';
 end;
 case rgA1.ItemIndex of
  0: r:=r+'L';
  1: r:=r+'M';
  2: r:=r+'H';
  3: r:=r+'E';
 end;
 case rgT1.ItemIndex of
  0: r:=r+'n';
  1: r:=r+'o';
 end;
 case rgP1.ItemIndex of
  0: r:=r+'F';
  1: r:=r+'J';
  2: r:=r+'A';
  3: r:=r+'S';
  4: r:=r+'U';
  5: r:=r+'E';
 end;
  rec.Add('BANK'); rec.Add('AUTO_T'); rec.Add('SY');    rec.Add('SM');
  rec.add('GR');   rec.add('GR_Y');   rec.Add('GR_M');  rec.Add('GR_S');
  rec.add('DL');   rec.add('DL_Y');   rec.Add('DL_M');  rec.Add('DL_S');
  rec.add('EU');   rec.add('EU_Y');   rec.Add('EU_M');  rec.Add('EU_S');
  rec.add('EL');   rec.add('EL_E');   rec.Add('EL_Y');  rec.Add('EL_M');  rec.Add('EL_S');
  rec.add('KOMT'); rec.Add('KOM');    rec.Add('MINFV'); rec.Add('MAXTC'); rec.Add('PRIM');

  val.Add(IntToStr(BankID)); val.Add(''''+UpperCase(r)+'''');
  val.add(fData.CustomSelS('TB_AUTO','SY','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))'));
  val.add(fData.CustomSelS('TB_AUTO','SM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))'));
  val.add(fData.CustomSelS('TB_AUTO','GR','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))'));
  val.add(''''+fData.CustomSelS('TB_AUTO','GR_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','GR_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','GR_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(fData.CustomSelS('TB_AUTO','DL','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))'));
  val.add(''''+fData.CustomSelS('TB_AUTO','DL_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','DL_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','DL_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(fData.CustomSelS('TB_AUTO','EU','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))'));
  val.add(''''+fData.CustomSelS('TB_AUTO','EU_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','EU_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','EU_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(fData.CustomSelS('TB_AUTO','EL','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))'));
  val.add(''''+fData.CustomSelS('TB_AUTO','EL_E','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','EL_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','EL_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','EL_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(fData.CustomSelS('TB_AUTO','KOMT','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))'));
  val.add(''''+fData.CustomSelS('TB_AUTO','KOM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','MINFV','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','MAXTC','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');
  val.add(''''+fData.CustomSelS('TB_AUTO','PRIM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(n)+''''+'))')+'''');

  Result:=fData.CustomUpd('TB_AUTO',rec,val,'((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(r)+''''+'))');
  rec.Free; val.Free;
 except
  rec.Free; val.Free;
  Result:=1;
 end;
end;

procedure TfAutoDoub.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
with params do
   ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

procedure TfAutoDoub.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ChL.Font.Color := clWindowText;
 ChR.Font.Color := clWindowText;
end;

end.
