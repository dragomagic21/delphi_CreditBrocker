unit uBAutoEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfBAutoEdit = class(TForm)
    Lstavka: TLabel;
    Lyear: TLabel;
    Lmonth: TLabel;
    Lsr: TLabel;
    Lgrn: TLabel;
    Ldlr: TLabel;
    Leur: TLabel;
    Lelse: TLabel;
    cbyear: TComboBox;
    cbmonth: TComboBox;
    Lygr: TLabel;
    Lydl: TLabel;
    Lyeu: TLabel;
    Lyel: TLabel;
    Lmgr: TLabel;
    Lmdl: TLabel;
    Lmeu: TLabel;
    Lmel: TLabel;
    Lsgr: TLabel;
    Lsdl: TLabel;
    Lseu: TLabel;
    Lsel: TLabel;
    Eygr: TEdit;
    Eydl: TEdit;
    Eyeu: TEdit;
    Eyel: TEdit;
    Emgr: TEdit;
    Emdl: TEdit;
    Emeu: TEdit;
    Emel: TEdit;
    Esgr: TEdit;
    Esdl: TEdit;
    Eseu: TEdit;
    Esel: TEdit;
    chgr: TCheckBox;
    chdl: TCheckBox;
    cheu: TCheckBox;
    chel: TCheckBox;
    Estavel: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    LEdKom: TLabel;
    Lminfv: TLabel;
    Lmaxtc: TLabel;
    EEdKomP: TEdit;
    EEdKomN: TEdit;
    Eminfv: TEdit;
    Emaxtc: TEdit;
    chEdKomP: TCheckBox;
    chEdKomN: TCheckBox;
    LEdKomP1: TLabel;
    LEdKomP2: TLabel;
    Lminfv1: TLabel;
    Lmaxtc1: TLabel;
    Bevel9: TBevel;
    bOk: TBitBtn;
    bCancel: TBitBtn;
    LPrim: TLabel;
    EPrim: TMemo;
    procedure bOkClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure chEdKomPClick(Sender: TObject);
    procedure chEdKomNClick(Sender: TObject);
    procedure chgrClick(Sender: TObject);
    procedure chdlClick(Sender: TObject);
    procedure cheuClick(Sender: TObject);
    procedure chelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
    function Add(): byte;
    function Update(): byte;
  public
    BankID  : integer;
    AutoType: string[3];
    ChBox   : TCheckBox;
    OpenMode: integer;
    { Public declarations }
  end;

var
  fBAutoEdit: TfBAutoEdit;

implementation

uses uData, uBAuto;

{$R *.dfm}

{ TfBAutoEdit }

procedure TfBAutoEdit.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
with params do
   ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

procedure TfBAutoEdit.bOkClick(Sender: TObject);
begin
 case OpenMode of
  0: if Add()=0    then MessageBox(fBAutoEdit.Handle,'Данные успешно сохранены!','Сохранение успешно.',MB_ICONINFORMATION or MB_OK);
  1: if Update()=0 then MessageBox(fBAutoEdit.Handle,'Данные успешно сохранены!','Сохранение успешно.',MB_ICONINFORMATION or MB_OK);
 end;
end;

procedure TfBAutoEdit.bCancelClick(Sender: TObject);
begin
 fBAutoEdit.Close;
end;

procedure TfBAutoEdit.chEdKomPClick(Sender: TObject);
begin
 if chEdKomP.Checked then
 begin
  chEdKomN.Checked := FALSE;
  EEdKomP.Enabled  := TRUE;
  EEdKomN.Enabled  := FALSE;
  EEdKomN.Text     := '0';
 end else
 begin
  chEdKomN.Checked := TRUE;
  EEdKomP.Enabled  := FALSE;
  EEdKomP.Text     := '0';
  EEdKomN.Enabled  := TRUE;
 end;
end;

procedure TfBAutoEdit.chEdKomNClick(Sender: TObject);
begin
 if chEdKomN.Checked then
 begin
  chEdKomP.Checked := FALSE;
  EEdKomN.Enabled  := TRUE;
  EEdKomP.Enabled  := FALSE;
  EEdKomP.Text     := '0';
 end else
 begin
  chEdKomP.Checked := TRUE;
  EEdKomN.Enabled  := FALSE;
  EEdKomN.Text     := '0';
  EEdKomP.Enabled  := TRUE;
 end;
end;

procedure TfBAutoEdit.chgrClick(Sender: TObject);
begin
 if not chgr.Checked then
 begin
  Eygr.Text := '0'; Emgr.Text := '0'; Esgr.Text := '0';
  Eygr.Enabled := FALSE; Emgr.Enabled := FALSE; Esgr.Enabled := FALSE;
 end else begin Eygr.Enabled := TRUE; Emgr.Enabled := TRUE; Esgr.Enabled := TRUE; end;
end;

procedure TfBAutoEdit.chdlClick(Sender: TObject);
begin
 if not chdl.Checked then
 begin
  Eydl.Text := '0'; Emdl.Text := '0'; Esdl.Text := '0';
  Eydl.Enabled := FALSE; Emdl.Enabled := FALSE; Esdl.Enabled := FALSE;
 end else begin Eydl.Enabled := TRUE; Emdl.Enabled := TRUE; Esdl.Enabled := TRUE; end;
end;

procedure TfBAutoEdit.cheuClick(Sender: TObject);
begin
 if not cheu.Checked then
 begin
  Eyeu.Text := '0'; Emeu.Text := '0'; Eseu.Text := '0';
  Eyeu.Enabled := FALSE; Emeu.Enabled := FALSE; Eseu.Enabled := FALSE;
 end else begin Eyeu.Enabled := TRUE; Emeu.Enabled := TRUE; Eseu.Enabled := TRUE; end;
end;

procedure TfBAutoEdit.chelClick(Sender: TObject);
begin
 if not chel.Checked then
 begin
  Eyel.Text := '0'; Emel.Text := '0'; Esel.Text := '0'; Estavel.Text := '';
  Eyel.Enabled := FALSE; Emel.Enabled := FALSE; Esel.Enabled := FALSE; Estavel.Enabled := FALSE;
 end else begin Eyel.Enabled := TRUE; Emel.Enabled := TRUE; Esel.Enabled := TRUE; Estavel.Enabled := TRUE; end;
end;

function TfBAutoEdit.Add: byte;
var rec, val: string;
begin
 try
  Result := 0;
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
  val:=''; val:=IntToStr(BankID)+','''+UpperCase(AutoType)+''','+IntToStr(cbyear.ItemIndex)+','+IntToStr(cbmonth.ItemIndex)+',';
  if not (chgr.Checked) then val:=val+'0,' else val:=val+'1,'; val:=val+''''+Trim(Eygr.Text)+''''+','+''''+Trim(Emgr.Text)+''''+','+''''+Trim(Esgr.Text)+''''+',';
  if not (chdl.Checked) then val:=val+'0,' else val:=val+'1,'; val:=val+''''+Trim(Eydl.Text)+''''+','+''''+Trim(Emdl.Text)+''''+','+''''+Trim(Esdl.Text)+''''+',';
  if not (cheu.Checked) then val:=val+'0,' else val:=val+'1,'; val:=val+''''+Trim(Eyeu.Text)+''''+','+''''+Trim(Emeu.Text)+''''+','+''''+Trim(Eseu.Text)+''''+',';
  if not (chel.Checked) then val:=val+'0,' else val:=val+'1,'; val:=val+''''+Trim(Estavel.Text)+''','+''''+Trim(Eyel.Text)+''''+','+''''+Trim(Emel.Text)+''''+','+''''+Trim(Esel.Text)+''''+',';
  if (chEdKomP.Checked) then val:=val+'0,'+''''+Trim(EEdKomP.Text)+''''+',' else val:=val+'1,'+''''+Trim(EEdKomN.Text)+''''+',';
  val:=val+''''+Trim(Eminfv.Text)+''''+','+''''+Trim(Emaxtc.Text)+'''';
  if Length(EPrim.Text)>0 then val:=val+(','+''''+Trim(EPrim.Text)+'''') else val:=val+','+'''''';
  if (fData.CustomAdd('TB_AUTO',rec,val)=1) then
  begin
   Result := 1;
   MessageBox(fBAutoEdit.Handle,'Произошла ошибка! Возможно неправильно указаны данные.','Ошибка!',MB_ICONWARNING or MB_OK);
  end;
 except
  Result := 1;
  MessageBox(fBAutoEdit.Handle,'Произошла ошибка! Возможно неправильно указаны данные.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

function TfBAutoEdit.Update: byte;
var rec,val: TStringList;
begin
 try
  Result:=0;
  rec:=TStringList.Create; rec.Clear;
  val:=TStringList.Create; val.Clear;
  rec.Add('BANK'); rec.Add('AUTO_T'); rec.Add('SY'); rec.Add('SM');
  rec.Add('GR'); rec.Add('GR_Y'); rec.Add('GR_M'); rec.Add('GR_S');
  rec.Add('DL'); rec.Add('DL_Y'); rec.Add('DL_M'); rec.Add('DL_S');
  rec.Add('EU'); rec.Add('EU_Y'); rec.Add('EU_M'); rec.Add('EU_S');
  rec.Add('EL'); rec.Add('EL_Y'); rec.Add('EL_M'); rec.Add('EL_S'); rec.Add('EL_E');
  rec.Add('KOMT'); rec.Add('KOM'); rec.Add('MINFV'); rec.Add('MAXTC'); rec.Add('PRIM');
  val.Add(IntToStr(BankID)); val.Add(''''+AutoType+''''); val.Add(IntToStr(cbyear.ItemIndex)); val.Add(IntToStr(cbmonth.ItemIndex));
  if (chgr.Checked) then val.Add('1') else val.Add('0'); val.Add(''''+Trim(Eygr.Text)+''''); val.Add(''''+Trim(Emgr.Text)+''''); val.Add(''''+Trim(Esgr.Text)+'''');
  if (chdl.Checked) then val.Add('1') else val.Add('0'); val.Add(''''+Trim(Eydl.Text)+''''); val.Add(''''+Trim(Emdl.Text)+''''); val.Add(''''+Trim(Esdl.Text)+'''');
  if (cheu.Checked) then val.Add('1') else val.Add('0'); val.Add(''''+Trim(Eyeu.Text)+''''); val.Add(''''+Trim(Emeu.Text)+''''); val.Add(''''+Trim(Eseu.Text)+'''');
  if (chel.Checked) then val.Add('1') else val.Add('0'); val.Add(''''+Trim(Eyel.Text)+''''); val.Add(''''+Trim(Emel.Text)+''''); val.Add(''''+Trim(Esel.Text)+''''); val.Add(''''+Trim(Estavel.Text)+'''');
  if (chEdKomP.Checked) then begin val.Add('0'); val.Add(''''+Trim(EEdKomP.Text)+''''); end;
  if (chEdKomN.Checked) then begin val.Add('1'); val.Add(''''+Trim(EEdKomN.Text)+''''); end;
  val.Add(''''+Trim(Eminfv.Text)+''''); val.Add(''''+Trim(Emaxtc.Text)+''''); val.Add(''''+Trim(EPrim.Text)+'''');
  if (fData.CustomUpd('TB_AUTO',rec,val,' (BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+')')=1) then
  begin
   Result:=1;
   MessageBox(fBAutoEdit.Handle,'Произошла ошибка! Возможно неправильно указаны данные.','Ошибка!',MB_ICONWARNING or MB_OK);
  end;
  rec.Free; val.Free;
 except
  Result:=1;
  MessageBox(fBAutoEdit.Handle,'Произошла ошибка! Возможно неправильно указаны данные.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfBAutoEdit.FormShow(Sender: TObject);
begin
 if (OpenMode=1) then
 try
  cbyear.ItemIndex := fData.CustomSelI('TB_AUTO','SY','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  cbmonth.ItemIndex := fData.CustomSelI('TB_AUTO','SM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  if fData.CustomSelI('TB_AUTO','GR','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))')=0 then chgr.Checked := FALSE else chgr.Checked := TRUE;
  Eygr.Text := fData.CustomSelS('TB_AUTO','GR_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  Emgr.Text := fData.CustomSelS('TB_AUTO','GR_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  Esgr.Text := fData.CustomSelS('TB_AUTO','GR_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  if fData.CustomSelI('TB_AUTO','DL','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))')=0 then chdl.Checked := FALSE else chdl.Checked := TRUE;
  Eydl.Text := fData.CustomSelS('TB_AUTO','DL_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  Emdl.Text := fData.CustomSelS('TB_AUTO','DL_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  Esdl.Text := fData.CustomSelS('TB_AUTO','DL_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  if fData.CustomSelI('TB_AUTO','EU','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))')=0 then cheu.Checked := FALSE else cheu.Checked := TRUE;
  Eyeu.Text := fData.CustomSelS('TB_AUTO','EU_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  Emeu.Text := fData.CustomSelS('TB_AUTO','EU_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  Eseu.Text := fData.CustomSelS('TB_AUTO','EU_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  if fData.CustomSelI('TB_AUTO','EL','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))')=0 then chel.Checked := FALSE else chel.Checked := TRUE;
  Eyel.Text := fData.CustomSelS('TB_AUTO','EL_Y','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  Emel.Text := fData.CustomSelS('TB_AUTO','EL_M','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  Esel.Text := fData.CustomSelS('TB_AUTO','EL_S','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  Estavel.Text := fData.CustomSelS('TB_AUTO','EL_E','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
  case fData.CustomSelI('TB_AUTO','KOMT','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))') of
   0: begin
       chEdKomP.Checked := TRUE; chEdKomN.Checked := FALSE;
       EEdKomP.Text := fData.CustomSelS('TB_AUTO','KOM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
      end;
   1: begin
       chEdKomP.Checked := FALSE; chEdKomN.Checked := TRUE;
       EEdKomN.Text := fData.CustomSelS('TB_AUTO','KOM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
      end;
  end;
 Eminfv.Text := fData.CustomSelS('TB_AUTO','MINFV','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
 Emaxtc.Text := fData.CustomSelS('TB_AUTO','MAXTC','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
 EPrim.Text := fData.CustomSelS('TB_AUTO','PRIM','where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='+''''+UpperCase(AutoType)+''''+'))');
 except
  MessageBox(fBAutoEdit.Handle,'Произошла ошибка во время работы программы. Попробуйте закрыть и вновь открыть текущее окно.','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

end.
