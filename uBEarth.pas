unit uBEarth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleServer, Word2000, StdCtrls, Spin, ExtCtrls, Buttons;

type
  TfBEarth = class(TForm)
    LName: TLabel;
    LTC: TLabel;
    Liwork: TLabel;
    Liwbook: TLabel;
    Limoney: TLabel;
    Lage: TLabel;
    Lagemb: TLabel;
    Lagefb: TLabel;
    Lageme: TLabel;
    Lagefe: TLabel;
    Lagem: TLabel;
    Lagef: TLabel;
    Lihome: TLabel;
    Lshum: TLabel;
    Lzalog: TLabel;
    Lsummin: TLabel;
    Lsummax: TLabel;
    Lsumc1: TLabel;
    Lsumc2: TLabel;
    Lstrax: TLabel;
    Lprim: TLabel;
    LSADDCR: TLabel;
    Lelsem: TLabel;
    Lneeddoc: TLabel;
    Lakcia: TLabel;
    Lcontact: TLabel;
    Lelseprim: TLabel;
    BPrint: TSpeedButton;
    BSave: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Lstavka: TLabel;
    Lyear: TLabel;
    Lmonth: TLabel;
    Lsr: TLabel;
    Lgrn: TLabel;
    Ldlr: TLabel;
    Leur: TLabel;
    Lelse: TLabel;
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
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel19: TBevel;
    LEdKom: TLabel;
    LEdKomP1: TLabel;
    LEdKomP2: TLabel;
    Lminfv: TLabel;
    Lmaxtc: TLabel;
    Lminfv1: TLabel;
    Lmaxtc1: TLabel;
    Bevel10: TBevel;
    Label1: TLabel;
    EName: TEdit;
    chTC_ST: TCheckBox;
    chTC_AM: TCheckBox;
    chTC_EL: TCheckBox;
    ETC_EL: TEdit;
    cbiwork: TComboBox;
    cbiwbook: TComboBox;
    cbimoney: TComboBox;
    Eagem: TEdit;
    Eagef: TEdit;
    Eagemb: TSpinEdit;
    Eageme: TSpinEdit;
    Eagefb: TSpinEdit;
    Eagefe: TSpinEdit;
    chihome1: TCheckBox;
    chihome2: TCheckBox;
    chihome3: TCheckBox;
    Eihome: TEdit;
    cbshum: TComboBox;
    chshumf: TCheckBox;
    chshumi: TCheckBox;
    chshume: TCheckBox;
    eshume: TEdit;
    chzalogn: TCheckBox;
    chzalogtc: TCheckBox;
    chzalogel: TCheckBox;
    ezalogel: TEdit;
    Esummin: TEdit;
    Esummax: TEdit;
    Eprim: TMemo;
    chSADDCR: TCheckBox;
    ESADDCR: TMemo;
    Eelsem: TMemo;
    Eneeddoc: TMemo;
    Eakcia: TMemo;
    Econtact: TMemo;
    Eelseprim: TMemo;
    cbyear: TComboBox;
    cbmonth: TComboBox;
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
    EEdKomP: TEdit;
    EEdKomN: TEdit;
    chEdKomP: TCheckBox;
    chEdKomN: TCheckBox;
    Eminfv: TEdit;
    Emaxtc: TEdit;
    cbStrax: TComboBox;
    EBprim: TMemo;
    WordA: TWordApplication;
    LCrType: TLabel;
    chFarm: TCheckBox;
    chBuild: TCheckBox;
    chElse: TCheckBox;
    EElseCr: TEdit;
    Bevel18: TBevel;
    Bevel20: TBevel;
    Lslife: TLabel;
    cbSLife: TComboBox;
    procedure chihome1Click(Sender: TObject);
    procedure chihome2Click(Sender: TObject);
    procedure chihome3Click(Sender: TObject);
    procedure chTC_ELClick(Sender: TObject);
    procedure chshumeClick(Sender: TObject);
    procedure chzalognClick(Sender: TObject);
    procedure chzalogtcClick(Sender: TObject);
    procedure chzalogelClick(Sender: TObject);
    procedure chgrClick(Sender: TObject);
    procedure chdlClick(Sender: TObject);
    procedure cheuClick(Sender: TObject);
    procedure chelClick(Sender: TObject);
    procedure chEdKomPClick(Sender: TObject);
    procedure chEdKomNClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure chElseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
   FMode: integer;
    { Private declarations }
   procedure CreateParams(var Params: TCreateParams); override;
   function Update(): byte;
  public
   BankID  : integer; { ID банка из БД. Используется при редактировании данных }
    { Public declarations }
  end;

var
  fBEarth: TfBEarth;

implementation

uses uData, uWait, uMain;

{$R *.dfm}

{ TfBEarth }

procedure TfBEarth.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
with params do
   ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

procedure TfBEarth.chihome1Click(Sender: TObject);
begin
 if chihome1.Checked then
 begin
  chihome2.Checked := FALSE;
  chihome3.Checked := FALSE;
  Eihome.Enabled   := FALSE;
  Eihome.Text      := '';
 end;
end;

procedure TfBEarth.chihome2Click(Sender: TObject);
begin
 if chihome2.Checked then
 begin
  chihome1.Checked := FALSE;
  chihome3.Checked := FALSE;
  Eihome.Enabled   := FALSE;
  Eihome.Text      := '';
 end;
end;

procedure TfBEarth.chihome3Click(Sender: TObject);
begin
 if chihome3.Checked then
 begin
  chihome1.Checked := FALSE;
  chihome2.Checked := FALSE;
  Eihome.Enabled   := TRUE;
 end;
end;

procedure TfBEarth.chTC_ELClick(Sender: TObject);
begin
 if chTC_EL.Checked then ETC_EL.Enabled := TRUE else
 begin
  ETC_EL.Enabled := FALSE;
  ETC_EL.Text := '';
 end;
end;

procedure TfBEarth.chshumeClick(Sender: TObject);
begin
 if chshume.Checked then eshume.Enabled := TRUE else
 begin
  eshume.Enabled := FALSE;
  eshume.Text    := '';
 end;
end;

procedure TfBEarth.chzalognClick(Sender: TObject);
begin
 if chzalogn.Checked then
 begin
  chzalogtc.Checked := FALSE;
  chzalogel.Checked := FALSE;
  ezalogel.Text := '';
 end;
end;

procedure TfBEarth.chzalogtcClick(Sender: TObject);
begin
 if chzalogtc.Checked then chzalogn.Checked := FALSE;
end;

procedure TfBEarth.chzalogelClick(Sender: TObject);
begin
 if chzalogel.Checked then chzalogn.Checked := FALSE;
 if chzalogel.Checked then ezalogel.Enabled := TRUE else
 begin
  ezalogel.Enabled := FALSE;
  ezalogel.Text    := '';
 end;
end;

procedure TfBEarth.chgrClick(Sender: TObject);
begin
 if not chgr.Checked then
 begin
  Eygr.Text := '0'; Emgr.Text := '0'; Esgr.Text := '0';
  Eygr.Enabled := FALSE; Emgr.Enabled := FALSE; Esgr.Enabled := FALSE;
 end else begin Eygr.Enabled := TRUE; Emgr.Enabled := TRUE; Esgr.Enabled := TRUE; end;
end;

procedure TfBEarth.chdlClick(Sender: TObject);
begin
 if not chdl.Checked then
 begin
  Eydl.Text := '0'; Emdl.Text := '0'; Esdl.Text := '0';
  Eydl.Enabled := FALSE; Emdl.Enabled := FALSE; Esdl.Enabled := FALSE;
 end else begin Eydl.Enabled := TRUE; Emdl.Enabled := TRUE; Esdl.Enabled := TRUE; end;
end;

procedure TfBEarth.cheuClick(Sender: TObject);
begin
 if not cheu.Checked then
 begin
  Eyeu.Text := '0'; Emeu.Text := '0'; Eseu.Text := '0';
  Eyeu.Enabled := FALSE; Emeu.Enabled := FALSE; Eseu.Enabled := FALSE;
 end else begin Eyeu.Enabled := TRUE; Emeu.Enabled := TRUE; Eseu.Enabled := TRUE; end;
end;

procedure TfBEarth.chelClick(Sender: TObject);
begin
 if not chel.Checked then
 begin
  Eyel.Text := '0'; Emel.Text := '0'; Esel.Text := '0'; Estavel.Text := '';
  Eyel.Enabled := FALSE; Emel.Enabled := FALSE; Esel.Enabled := FALSE; Estavel.Enabled := FALSE;
 end else begin Eyel.Enabled := TRUE; Emel.Enabled := TRUE; Esel.Enabled := TRUE; Estavel.Enabled := TRUE; end;
end;

procedure TfBEarth.chEdKomPClick(Sender: TObject);
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

procedure TfBEarth.chEdKomNClick(Sender: TObject);
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

procedure TfBEarth.BSaveClick(Sender: TObject);
var z: byte;
begin
 Application.CreateForm(TfWait, fWait);
 fWait.ParentWindow := fBEarth.Handle;
 fWait.pb.Position := 0;
 fWait.Show();
 fBEarth.Enabled := FALSE;
 z := Update();
 if (z = 1) then
 begin
  fWait.Close();
  fBEarth.Enabled := TRUE;
  MessageBox(fBEarth.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end else
 begin
//  z := SaveDoc();
  fWait.Close();
  fBEarth.Enabled := TRUE;
  if (z = 0) then MessageBox(fBEarth.Handle,'Данные успешно сохранены!','Сохранение успешно.',MB_ICONINFORMATION or MB_OK) else
  if (z = 1) then MessageBox(fBEarth.Handle,'Во время сохранения данных в Microsoft Word произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfBEarth.BPrintClick(Sender: TObject);
begin
 fMain.BankPrint('TB_BANKEARTH',BankID);
end;

function TfBEarth.Update: byte;
var rec,val: TStringList;
begin
try
 rec:=TStringList.Create; rec.Clear;
 val:=TStringList.Create; val.Clear;
 rec.Add('NAME');
 rec.Add('TC_ST');
 rec.Add('TC_AM');
 rec.Add('TC_EL');
 rec.Add('TC_EL_E');
 rec.Add('IWORK');
 rec.Add('IMONEY');
 rec.Add('IWBOOK');
 rec.Add('AGE_M_B');
 rec.Add('AGE_M_E');
 rec.Add('AGE_M_EL_E');
 rec.Add('AGE_F_B');
 rec.Add('AGE_F_E');
 rec.Add('AGE_F_EL_E');
 rec.Add('IHOME');
 rec.Add('IHOME_E');
 rec.Add('SHUM');
 rec.Add('SHUM_F');
 rec.Add('SHUM_I');
 rec.Add('SHUM_EL');
 rec.Add('SHUM_EL_E');
 rec.Add('ZALOG_N');
 rec.Add('ZALOG_TC');
 rec.Add('ZALOG_EL');
 rec.Add('ZALOG_EL_E');
 rec.Add('SUMMIN');
 rec.Add('SUMMAX');
 rec.Add('CFARM');
 rec.Add('CBUILD');
 rec.Add('CEL');
 rec.Add('CEL_E');
 { EAAEIAUA AAOIIIAEEE IIAUA }
 rec.Add('SY');
 rec.Add('SM');
 rec.Add('GR');
 rec.Add('GR_Y'); rec.Add('GR_M'); rec.Add('GR_S');
 rec.Add('DL');
 rec.Add('DL_Y'); rec.Add('DL_M'); rec.Add('DL_S');
 rec.Add('EU');
 rec.Add('EU_Y'); rec.Add('EU_M'); rec.Add('EU_S');
 rec.Add('EL');   rec.Add('EL_E');
 rec.Add('EL_Y'); rec.Add('EL_M'); rec.Add('EL_S');
 rec.Add('KOMT'); rec.Add('KOM');
 rec.Add('MINFV');rec.Add('MAXTC');
 rec.Add('PRIM');
 { // --- \\ }
 rec.Add('STRAX');
 rec.Add('STRAX_E');
 rec.Add('SADDCR');
 rec.Add('SADDCR_E');
 rec.Add('LIFE');
 rec.Add('ELSEM');
 rec.Add('NEEDDOC');
 rec.Add('AKCIA');
 rec.Add('CONTACT');
 rec.Add('ELSE_PR');
 fWait.pb.Position := fWait.pb.Position + 5;

 { CAIENUAAAI CIA?AIE? IIEAE }
 val.Add(''''+Trim(EName.Text)+'''');
 if (chTC_ST.Checked) then val.Add('1') else val.Add('0');
 if (chTC_AM.Checked) then val.Add('1') else val.Add('0');
 if (chTC_EL.Checked) then val.Add('1') else val.Add('0');
 if (chTC_EL.Checked) then val.Add(''''+Trim(ETC_EL.Text)+'''') else val.Add('''''');
 val.Add(IntToStr(cbiwork.ItemIndex)+'');
 val.Add(IntToStr(cbimoney.ItemIndex)+'');
 val.Add(IntToStr(cbiwbook.ItemIndex)+'');
 val.Add(''''+IntToStr(Eagemb.Value)+'''');
 val.Add(''''+IntToStr(Eageme.Value)+'''');
 val.Add(''''+Trim(Eagem.Text)+'''');
 val.Add(''''+IntToStr(Eagefb.Value)+'''');
 val.Add(''''+IntToStr(Eagefe.Value)+'''');
 val.Add(''''+Trim(Eagef.Text)+'''');
 if (chihome1.Checked) then begin val.Add('1'); val.Add(''''''); end else
 if (chihome2.Checked) then begin val.Add('2'); val.Add(''''''); end else
 if (chihome3.Checked) then
 begin
  val.Add('3');
  val.Add(''''+Trim(Eihome.Text)+'''');
 end else begin val.Add('0'); val.Add(''''''); end;
 val.Add(IntToStr(cbshum.ItemIndex)+'');
 if (chshumf.Checked) then val.Add('1') else val.Add('0');
 if (chshumi.Checked) then val.Add('1') else val.Add('0');
 if (chshume.Checked) then val.Add('1') else val.Add('0');
 if (chshume.Checked) then val.Add(''''+Trim(eshume.Text)+'''') else val.Add('''''');
 if (chzalogn.Checked) then val.Add('1') else val.Add('0');
 if (chzalogtc.Checked) then val.Add('1') else val.Add('0');
 if (chzalogel.Checked) then val.Add('1') else val.Add('0');
 if (chzalogel.Checked) then val.Add(''''+Trim(ezalogel.Text)+'''') else val.Add('''''');
 val.Add(''''+Trim(Esummin.Text)+'''');
 val.Add(''''+Trim(Esummax.Text)+'''');
 if (chFarm.Checked) then val.Add('1') else val.Add('0');
 if (chBuild.Checked) then val.Add('1') else val.Add('0');
 if (chElse.Checked) then val.Add('1') else val.Add('0');
 if (chElse.Checked) then val.Add(''''+Trim(EElseCr.Text)+'''') else val.Add('''''');
 val.Add(IntToStr(cbyear.ItemIndex));
 val.Add(IntToStr(cbmonth.ItemIndex));
 if not (chgr.Checked) then val.Add('0') else val.Add('1');
 if not (chgr.Checked) then begin val.Add('''0'''); val.Add('''0'''); val.Add('''0'''); end else
 begin val.Add(''''+Trim(Eygr.Text)+''''); val.Add(''''+Trim(Emgr.Text)+''''); val.Add(''''+Trim(Esgr.Text)+''''); end;

 if not (chdl.Checked) then val.Add('0') else val.Add('1');
 if not (chdl.Checked) then begin val.Add('''0'''); val.Add('''0'''); val.Add('''0'''); end else
 begin val.Add(''''+Trim(Eydl.Text)+''''); val.Add(''''+Trim(Emdl.Text)+''''); val.Add(''''+Trim(Esdl.Text)+''''); end;

 if not (cheu.Checked) then val.Add('0') else val.Add('1');
 if not (cheu.Checked) then begin val.Add('''0'''); val.Add('''0'''); val.Add('''0'''); end else
 begin val.Add(''''+Trim(Eyeu.Text)+''''); val.Add(''''+Trim(Emeu.Text)+''''); val.Add(''''+Trim(Eseu.Text)+''''); end;

 if not (chel.Checked) then val.Add('0') else val.Add('1');
 if not (chel.Checked) then begin val.Add(''''''); val.Add('''0'''); val.Add('''0'''); val.Add('''0'''); end else
 begin val.Add(''''+Trim(Estavel.Text)+''''); val.Add(''''+Trim(Eyel.Text)+''''); val.Add(''''+Trim(Emel.Text)+''''); val.Add(''''+Trim(Esel.Text)+''''); end;

 if (chEdKomP.Checked) then
 begin val.Add('0'); val.Add(''''+Trim(EEdKomP.Text)+''''); end else
 begin val.Add('1'); val.Add(''''+Trim(EEdKomN.Text)+''''); end;
 val.Add(''''+Trim(Eminfv.Text)+'''');
 val.Add(Trim(Emaxtc.Text));
 val.Add(''''+Trim(EBprim.Text)+'''');

 { // --- \\ }
 val.Add(IntToStr(cbStrax.ItemIndex));
 val.Add(''''+Trim(Eprim.Text)+'''');
 if (chSADDCR.Checked) then val.Add('1') else val.Add('0');
 val.Add(''''+Trim(ESADDCR.Text)+'''');
 val.Add(IntToStr(cbSLife.ItemIndex));
 val.Add(''''+Trim(Eelsem.Text)+'''');
 val.Add(''''+Trim(Eneeddoc.Text)+'''');
 val.Add(''''+Trim(Eakcia.Text)+'''');
 val.Add(''''+Trim(Econtact.Text)+'''');
 val.Add(''''+Trim(Eelseprim.Text)+'''');
 if (fData.CustomUpd('TB_BANKEARTH',rec, val, 'ID='+IntToStr(BankID))=0) then Result:=0 else Result:=1;
 rec.Free; val.Free;
 fWait.pb.Position := fWait.pb.Position + 15;
except
 if Assigned(rec) then rec.Free;
 if Assigned(val) then rec.Free;
 Result:=1;
end;

end;

procedure TfBEarth.chElseClick(Sender: TObject);
begin
if chElse.Checked then EElseCr.Enabled := TRUE else
 begin
  EElseCr.Enabled := FALSE;
  EElseCr.Text    := '';
 end;
end;

procedure TfBEarth.FormCreate(Sender: TObject);
begin
 if (Screen.Height<1024) then
 begin
  fBEarth.AutoSize:=FALSE;
  fBEarth.Width:=700;
  fBEarth.Height:=500;
 end;
 FMode := 0;
end;

procedure TfBEarth.FormShow(Sender: TObject);
begin
 try
  EName.Text := fData.CustomSelS('TB_BANKEARTH','NAME','where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKEARTH','TC_ST','where ID='+IntToStr(BankID)) of
   0: chTC_ST.Checked := FALSE;
   1: chTC_ST.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKEARTH','TC_AM','where ID='+IntToStr(BankID)) of
   0: chTC_AM.Checked := FALSE;
   1: chTC_AM.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKEARTH','TC_EL','where ID='+IntToStr(BankID)) of
   0: chTC_EL.Checked := FALSE;
   1: begin
       chTC_EL.Checked := TRUE;
       ETC_EL.Text := fData.CustomSelS('TB_BANKEARTH','TC_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  cbiwork.ItemIndex  := fData.CustomSelI('TB_BANKEARTH','IWORK', 'where ID='+IntToStr(BankID));
  cbimoney.ItemIndex := fData.CustomSelI('TB_BANKEARTH','IMONEY','where ID='+IntToStr(BankID));
  cbiwbook.ItemIndex := fData.CustomSelI('TB_BANKEARTH','IWBOOK','where ID='+IntToStr(BankID));
  Eagemb.Value := fData.CustomSelI('TB_BANKEARTH','AGE_M_B','where ID='+IntToStr(BankID));
  Eageme.Value := fData.CustomSelI('TB_BANKEARTH','AGE_M_E','where ID='+IntToStr(BankID));
  Eagem.Text   := fData.CustomSelS('TB_BANKEARTH','AGE_M_EL_E','where ID='+IntToStr(BankID));
  Eagefb.Value := fData.CustomSelI('TB_BANKEARTH','AGE_F_B','where ID='+IntToStr(BankID));
  Eagefe.Value := fData.CustomSelI('TB_BANKEARTH','AGE_F_E','where ID='+IntToStr(BankID));
  Eagef.Text   := fData.CustomSelS('TB_BANKEARTH','AGE_F_EL_E','where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKEARTH','IHOME','where ID='+IntToStr(BankID)) of
   1: chihome1.Checked := TRUE;
   2: chihome2.Checked := TRUE;
   3: begin
       chihome3.Checked := TRUE;
       Eihome.Text := fData.CustomSelS('TB_BANKEARTH','IHOME_E','where ID='+IntToStr(BankID));
      end;
  end;
  cbshum.ItemIndex  := fData.CustomSelI('TB_BANKEARTH','SHUM', 'where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKEARTH','SHUM_F','where ID='+IntToStr(BankID)) of
   0: chshumf.Checked := FALSE;
   1: chshumf.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKEARTH','SHUM_I','where ID='+IntToStr(BankID)) of
   0: chshumi.Checked := FALSE;
   1: chshumi.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKEARTH','SHUM_EL','where ID='+IntToStr(BankID)) of
   0: chshume.Checked := FALSE;
   1: begin
       chshume.Checked := TRUE;
       eshume.Text := fData.CustomSelS('TB_BANKEARTH','SHUM_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKEARTH','ZALOG_N','where ID='+IntToStr(BankID)) of
   0: chzalogn.Checked := FALSE;
   1: chzalogn.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKEARTH','ZALOG_TC','where ID='+IntToStr(BankID)) of
   0: chzalogtc.Checked := FALSE;
   1: chzalogtc.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKEARTH','ZALOG_EL','where ID='+IntToStr(BankID)) of
   0: chzalogel.Checked := FALSE;
   1: begin
       chzalogel.Checked := TRUE;
       ezalogel.Text := fData.CustomSelS('TB_BANKEARTH','ZALOG_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  Esummin.Text := fData.CustomSelS('TB_BANKEARTH','SUMMIN','where ID='+IntToStr(BankID));
  Esummax.Text := fData.CustomSelS('TB_BANKEARTH','SUMMAX','where ID='+IntToStr(BankID));

  case fData.CustomSelI('TB_BANKEARTH','CFARM','where ID='+IntToStr(BankID)) of
   0: chFarm.Checked := FALSE;
   1: chFarm.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKEARTH','CBUILD','where ID='+IntToStr(BankID)) of
   0: chBuild.Checked := FALSE;
   1: chBuild.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKEARTH','CEL','where ID='+IntToStr(BankID)) of
   0: chElse.Checked := FALSE;
   1: begin
       chElse.Checked := TRUE;
       EElseCr.Text := fData.CustomSelS('TB_BANKEARTH','CEL_E','where ID='+IntToStr(BankID));
      end;
  end;

  cbyear.ItemIndex := fData.CustomSelI('TB_BANKEARTH','SY','where ID='+IntToStr(BankID));
  cbmonth.ItemIndex := fData.CustomSelI('TB_BANKEARTH','SM','where ID='+IntToStr(BankID));

  case fData.CustomSelI('TB_BANKEARTH','GR','where ID='+IntToStr(BankID)) of
   0: chgr.Checked := FALSE;
   1: begin
       chgr.Checked := TRUE;
       Eygr.Text := fData.CustomSelS('TB_BANKEARTH','GR_Y','where ID='+IntToStr(BankID));
       Emgr.Text := fData.CustomSelS('TB_BANKEARTH','GR_M','where ID='+IntToStr(BankID));
       Esgr.Text := fData.CustomSelS('TB_BANKEARTH','GR_S','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKEARTH','DL','where ID='+IntToStr(BankID)) of
   0: chDL.Checked := FALSE;
   1: begin
       chdl.Checked := TRUE;
       EyDL.Text := fData.CustomSelS('TB_BANKEARTH','DL_Y','where ID='+IntToStr(BankID));
       EmDL.Text := fData.CustomSelS('TB_BANKEARTH','DL_M','where ID='+IntToStr(BankID));
       EsDL.Text := fData.CustomSelS('TB_BANKEARTH','DL_S','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKEARTH','EU','where ID='+IntToStr(BankID)) of
   0: chEU.Checked := FALSE;
   1: begin
       cheu.Checked := TRUE;
       EyEU.Text := fData.CustomSelS('TB_BANKEARTH','EU_Y','where ID='+IntToStr(BankID));
       EmEU.Text := fData.CustomSelS('TB_BANKEARTH','EU_M','where ID='+IntToStr(BankID));
       EsEU.Text := fData.CustomSelS('TB_BANKEARTH','EU_S','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKEARTH','EL','where ID='+IntToStr(BankID)) of
   0: chEL.Checked := FALSE;
   1: begin
       chel.Checked := TRUE;
       Estavel.Text := fData.CustomSelS('TB_BANKEARTH','EL_E','where ID='+IntToStr(BankID));
       EyEL.Text := fData.CustomSelS('TB_BANKEARTH','EL_Y','where ID='+IntToStr(BankID));
       EmEL.Text := fData.CustomSelS('TB_BANKEARTH','EL_M','where ID='+IntToStr(BankID));
       EsEL.Text := fData.CustomSelS('TB_BANKEARTH','EL_S','where ID='+IntToStr(BankID));
      end;
  end;

  case fData.CustomSelI('TB_BANKEARTH','KOMT','where ID='+IntToStr(BankID)) of
   0: begin
       chEdKomP.Checked := TRUE; chEdKomN.Checked := FALSE;
       EEdKomP.Text := fData.CustomSelS('TB_BANKEARTH','KOM','where ID='+IntToStr(BankID));
      end;
   1: begin
       chEdKomN.Checked := TRUE; chEdKomP.Checked := FALSE;
       EEdKomN.Text := fData.CustomSelS('TB_BANKEARTH','KOM','where ID='+IntToStr(BankID));
      end;
  end;
  Eminfv.Text := fData.CustomSelS('TB_BANKEARTH','MINFV','where ID='+IntToStr(BankID));
  Emaxtc.Text := fData.CustomSelS('TB_BANKEARTH','MAXTC','where ID='+IntToStr(BankID));


  {  // --- \\ }
  cbStrax.ItemIndex := fData.CustomSelI('TB_BANKEARTH','STRAX','where ID='+IntToStr(BankID));
  Eprim.Text := fData.CustomSelS('TB_BANKEARTH','STRAX_E','where ID='+IntToStr(BankID));
  cbSLife.ItemIndex := fData.CustomSelI('TB_BANKEARTH','LIFE','where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKEARTH','SADDCR','where ID='+IntToStr(BankID)) of
   0: chSADDCR.Checked := FALSE;
   1: chSADDCR.Checked := TRUE;
  end;
  ESADDCR.Text := fData.CustomSelS('TB_BANKEARTH','SADDCR_E','where ID='+IntToStr(BankID));
  Eelsem.Text := fData.CustomSelS('TB_BANKEARTH','ELSEM','where ID='+IntToStr(BankID));
  Eneeddoc.Text := fData.CustomSelS('TB_BANKEARTH','NEEDDOC','where ID='+IntToStr(BankID));
  Eakcia.Text := fData.CustomSelS('TB_BANKEARTH','AKCIA','where ID='+IntToStr(BankID));
  Econtact.Text := fData.CustomSelS('TB_BANKEARTH','CONTACT','where ID='+IntToStr(BankID));
  Eelseprim.Text := fData.CustomSelS('TB_BANKEARTH','ELSE_PR','where ID='+IntToStr(BankID));
 except
  MessageBox(fBEarth.Handle,'Ошибка! Произошла ошибка во время работы программы. Попробуйте закрыть и вновь открыть текущее окно.','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
 FMode := 1;
end;

procedure TfBEarth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fMain.BEarthShow(self);
end;

end.
