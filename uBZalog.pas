unit uBZalog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleServer, Word2000, StdCtrls, Spin, ExtCtrls, Buttons;

type
  TfBZalog = class(TForm)
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
    Lsummin: TLabel;
    Lsummax: TLabel;
    Lsumc1: TLabel;
    Lsumc2: TLabel;
    Lstrax: TLabel;
    Lprim: TLabel;
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
    Lmaxtc: TLabel;
    Lmaxtc1: TLabel;
    Bevel10: TBevel;
    Label1: TLabel;
    Ltzalog: TLabel;
    Bevel18: TBevel;
    Bevel20: TBevel;
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
    Esummin: TEdit;
    Esummax: TEdit;
    Eprim: TMemo;
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
    Emaxtc: TEdit;
    cbStrax: TComboBox;
    EBprim: TMemo;
    chzalog_b: TCheckBox;
    chzalog_a: TCheckBox;
    chzalog_el: TCheckBox;
    Ezalog_el_e: TEdit;
    WordA: TWordApplication;
    chzalog_e: TCheckBox;
    chzalog_d: TCheckBox;
    Ezalog_b_e: TEdit;
    Ezalog_a_e: TEdit;
    Ezalog_e_e: TEdit;
    Ezalog_d_e: TEdit;
    Bevel21: TBevel;
    Ltzalog_prim: TLabel;
    Lclock: TLabel;
    Eclock: TEdit;
    Label2: TLabel;
    LGive: TLabel;
    chGM: TCheckBox;
    chGC: TCheckBox;
    chGS: TCheckBox;
    Lslife: TLabel;
    cbSLife: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure chTC_ELClick(Sender: TObject);
    procedure chihome1Click(Sender: TObject);
    procedure chihome2Click(Sender: TObject);
    procedure chihome3Click(Sender: TObject);
    procedure chshumeClick(Sender: TObject);
    procedure chgrClick(Sender: TObject);
    procedure chdlClick(Sender: TObject);
    procedure cheuClick(Sender: TObject);
    procedure chelClick(Sender: TObject);
    procedure chEdKomPClick(Sender: TObject);
    procedure chEdKomNClick(Sender: TObject);
    procedure chzalog_elClick(Sender: TObject);
    procedure chzalog_dClick(Sender: TObject);
    procedure chzalog_eClick(Sender: TObject);
    procedure chzalog_aClick(Sender: TObject);
    procedure chzalog_bClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BPrintClick(Sender: TObject);
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
  fBZalog: TfBZalog;

implementation

uses uData, uWait, uMain;

{$R *.dfm}

{ TfBZalog }

procedure TfBZalog.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
with params do
   ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

procedure TfBZalog.FormCreate(Sender: TObject);
begin
 if (Screen.Height<1024) then
 begin
  fBZalog.AutoSize:=FALSE;
  fBZalog.Width:=700;
  fBZalog.Height:=500;
 end;
 FMode := 0;
end;

procedure TfBZalog.chTC_ELClick(Sender: TObject);
begin
 if chTC_EL.Checked then ETC_EL.Enabled := TRUE else
 begin
  ETC_EL.Enabled := FALSE;
  ETC_EL.Text := '';
 end;
end;

procedure TfBZalog.chihome1Click(Sender: TObject);
begin
 if chihome1.Checked then
 begin
  chihome2.Checked := FALSE;
  chihome3.Checked := FALSE;
  Eihome.Enabled   := FALSE;
  Eihome.Text      := '';
 end;
end;

procedure TfBZalog.chihome2Click(Sender: TObject);
begin
 if chihome2.Checked then
 begin
  chihome1.Checked := FALSE;
  chihome3.Checked := FALSE;
  Eihome.Enabled   := FALSE;
  Eihome.Text      := '';
 end;
end;

procedure TfBZalog.chihome3Click(Sender: TObject);
begin
 if chihome3.Checked then
 begin
  chihome1.Checked := FALSE;
  chihome2.Checked := FALSE;
  Eihome.Enabled   := TRUE;
 end;
end;

procedure TfBZalog.chshumeClick(Sender: TObject);
begin
 if chshume.Checked then eshume.Enabled := TRUE else
 begin
  eshume.Enabled := FALSE;
  eshume.Text    := '';
 end;
end;

procedure TfBZalog.chgrClick(Sender: TObject);
begin
 if not chgr.Checked then
 begin
  Eygr.Text := '0'; Emgr.Text := '0'; Esgr.Text := '0';
  Eygr.Enabled := FALSE; Emgr.Enabled := FALSE; Esgr.Enabled := FALSE;
 end else begin Eygr.Enabled := TRUE; Emgr.Enabled := TRUE; Esgr.Enabled := TRUE; end;
end;

procedure TfBZalog.chdlClick(Sender: TObject);
begin
 if not chdl.Checked then
 begin
  Eydl.Text := '0'; Emdl.Text := '0'; Esdl.Text := '0';
  Eydl.Enabled := FALSE; Emdl.Enabled := FALSE; Esdl.Enabled := FALSE;
 end else begin Eydl.Enabled := TRUE; Emdl.Enabled := TRUE; Esdl.Enabled := TRUE; end;
end;

procedure TfBZalog.cheuClick(Sender: TObject);
begin
 if not cheu.Checked then
 begin
  Eyeu.Text := '0'; Emeu.Text := '0'; Eseu.Text := '0';
  Eyeu.Enabled := FALSE; Emeu.Enabled := FALSE; Eseu.Enabled := FALSE;
 end else begin Eyeu.Enabled := TRUE; Emeu.Enabled := TRUE; Eseu.Enabled := TRUE; end;
end;

procedure TfBZalog.chelClick(Sender: TObject);
begin
 if not chel.Checked then
 begin
  Eyel.Text := '0'; Emel.Text := '0'; Esel.Text := '0'; Estavel.Text := '';
  Eyel.Enabled := FALSE; Emel.Enabled := FALSE; Esel.Enabled := FALSE; Estavel.Enabled := FALSE;
 end else begin Eyel.Enabled := TRUE; Emel.Enabled := TRUE; Esel.Enabled := TRUE; Estavel.Enabled := TRUE; end;
end;

procedure TfBZalog.chEdKomPClick(Sender: TObject);
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

procedure TfBZalog.chEdKomNClick(Sender: TObject);
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

procedure TfBZalog.chzalog_elClick(Sender: TObject);
begin
if chzalog_el.Checked then Ezalog_el_e.Enabled := TRUE else
 begin
  Ezalog_el_e.Enabled := FALSE;
  Ezalog_el_e.Text    := '';
 end;
end;

procedure TfBZalog.chzalog_dClick(Sender: TObject);
begin
if chzalog_d.Checked then Ezalog_d_e.Enabled := TRUE else
 begin
  Ezalog_d_e.Enabled := FALSE;
  Ezalog_d_e.Text    := '';
 end;
end;

procedure TfBZalog.chzalog_eClick(Sender: TObject);
begin
if chzalog_e.Checked then Ezalog_e_e.Enabled := TRUE else
 begin
  Ezalog_e_e.Enabled := FALSE;
  Ezalog_e_e.Text    := '';
 end;
end;

procedure TfBZalog.chzalog_aClick(Sender: TObject);
begin
if chzalog_a.Checked then Ezalog_a_e.Enabled := TRUE else
 begin
  Ezalog_a_e.Enabled := FALSE;
  Ezalog_a_e.Text    := '';
 end;
end;

procedure TfBZalog.chzalog_bClick(Sender: TObject);
begin
if chzalog_b.Checked then Ezalog_b_e.Enabled := TRUE else
 begin
  Ezalog_b_e.Enabled := FALSE;
  Ezalog_b_e.Text    := '';
 end;
end;

procedure TfBZalog.FormShow(Sender: TObject);
begin
 try
  EName.Text := fData.CustomSelS('TB_BANKZALOG','NAME','where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKZALOG','TC_ST','where ID='+IntToStr(BankID)) of
   0: chTC_ST.Checked := FALSE;
   1: chTC_ST.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKZALOG','TC_AM','where ID='+IntToStr(BankID)) of
   0: chTC_AM.Checked := FALSE;
   1: chTC_AM.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKZALOG','TC_EL','where ID='+IntToStr(BankID)) of
   0: chTC_EL.Checked := FALSE;
   1: begin
       chTC_EL.Checked := TRUE;
       ETC_EL.Text := fData.CustomSelS('TB_BANKZALOG','TC_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  cbiwork.ItemIndex  := fData.CustomSelI('TB_BANKZALOG','IWORK', 'where ID='+IntToStr(BankID));
  cbimoney.ItemIndex := fData.CustomSelI('TB_BANKZALOG','IMONEY','where ID='+IntToStr(BankID));
  cbiwbook.ItemIndex := fData.CustomSelI('TB_BANKZALOG','IWBOOK','where ID='+IntToStr(BankID));
  Eagemb.Value := fData.CustomSelI('TB_BANKZALOG','AGE_M_B','where ID='+IntToStr(BankID));
  Eageme.Value := fData.CustomSelI('TB_BANKZALOG','AGE_M_E','where ID='+IntToStr(BankID));
  Eagem.Text   := fData.CustomSelS('TB_BANKZALOG','AGE_M_EL_E','where ID='+IntToStr(BankID));
  Eagefb.Value := fData.CustomSelI('TB_BANKZALOG','AGE_F_B','where ID='+IntToStr(BankID));
  Eagefe.Value := fData.CustomSelI('TB_BANKZALOG','AGE_F_E','where ID='+IntToStr(BankID));
  Eagef.Text   := fData.CustomSelS('TB_BANKZALOG','AGE_F_EL_E','where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKZALOG','IHOME','where ID='+IntToStr(BankID)) of
   1: chihome1.Checked := TRUE;
   2: chihome2.Checked := TRUE;
   3: begin
       chihome3.Checked := TRUE;
       Eihome.Text := fData.CustomSelS('TB_BANKZALOG','IHOME_E','where ID='+IntToStr(BankID));
      end;
  end;
  cbshum.ItemIndex  := fData.CustomSelI('TB_BANKZALOG','SHUM', 'where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKZALOG','SHUM_F','where ID='+IntToStr(BankID)) of
   0: chshumf.Checked := FALSE;
   1: chshumf.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKZALOG','SHUM_I','where ID='+IntToStr(BankID)) of
   0: chshumi.Checked := FALSE;
   1: chshumi.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKZALOG','SHUM_EL','where ID='+IntToStr(BankID)) of
   0: chshume.Checked := FALSE;
   1: begin
       chshume.Checked := TRUE;
       eshume.Text := fData.CustomSelS('TB_BANKZALOG','SHUM_EL_E','where ID='+IntToStr(BankID));
      end;
  end;

  case fData.CustomSelI('TB_BANKZALOG','ZALOG_B','where ID='+IntToStr(BankID)) of
   0: chzalog_b.Checked := FALSE;
   1: begin
       chzalog_b.Checked := TRUE;
       Ezalog_b_e.Text := fData.CustomSelS('TB_BANKZALOG','ZALOG_B_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKZALOG','ZALOG_A','where ID='+IntToStr(BankID)) of
   0: chzalog_a.Checked := FALSE;
   1: begin
       chzalog_a.Checked := TRUE;
       Ezalog_a_e.Text := fData.CustomSelS('TB_BANKZALOG','ZALOG_A_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKZALOG','ZALOG_E','where ID='+IntToStr(BankID)) of
   0: chzalog_b.Checked := FALSE;
   1: begin
       chzalog_e.Checked := TRUE;
       Ezalog_e_e.Text := fData.CustomSelS('TB_BANKZALOG','ZALOG_E_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKZALOG','ZALOG_D','where ID='+IntToStr(BankID)) of
   0: chzalog_d.Checked := FALSE;
   1: begin
       chzalog_d.Checked := TRUE;
       Ezalog_d_e.Text := fData.CustomSelS('TB_BANKZALOG','ZALOG_D_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKZALOG','ZALOG_EL','where ID='+IntToStr(BankID)) of
   0: chzalog_el.Checked := FALSE;
   1: begin
       chzalog_el.Checked := TRUE;
       Ezalog_el_e.Text := fData.CustomSelS('TB_BANKZALOG','ZALOG_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  Esummin.Text := fData.CustomSelS('TB_BANKZALOG','SUMMIN','where ID='+IntToStr(BankID));
  Esummax.Text := fData.CustomSelS('TB_BANKZALOG','SUMMAX','where ID='+IntToStr(BankID));
  Eclock.Text := fData.CustomSelS('TB_BANKZALOG','CLOCR','where ID='+IntToStr(BankID));


  cbyear.ItemIndex := fData.CustomSelI('TB_BANKZALOG','SY','where ID='+IntToStr(BankID));
  cbmonth.ItemIndex := fData.CustomSelI('TB_BANKZALOG','SM','where ID='+IntToStr(BankID));

  case fData.CustomSelI('TB_BANKZALOG','GR','where ID='+IntToStr(BankID)) of
   0: chgr.Checked := FALSE;
   1: begin
       chgr.Checked := TRUE;
       Eygr.Text := fData.CustomSelS('TB_BANKZALOG','GR_Y','where ID='+IntToStr(BankID));
       Emgr.Text := fData.CustomSelS('TB_BANKZALOG','GR_M','where ID='+IntToStr(BankID));
       Esgr.Text := fData.CustomSelS('TB_BANKZALOG','GR_S','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKZALOG','DL','where ID='+IntToStr(BankID)) of
   0: chDL.Checked := FALSE;
   1: begin
       chdl.Checked := TRUE;
       EyDL.Text := fData.CustomSelS('TB_BANKZALOG','DL_Y','where ID='+IntToStr(BankID));
       EmDL.Text := fData.CustomSelS('TB_BANKZALOG','DL_M','where ID='+IntToStr(BankID));
       EsDL.Text := fData.CustomSelS('TB_BANKZALOG','DL_S','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKZALOG','EU','where ID='+IntToStr(BankID)) of
   0: chEU.Checked := FALSE;
   1: begin
       cheu.Checked := TRUE;
       EyEU.Text := fData.CustomSelS('TB_BANKZALOG','EU_Y','where ID='+IntToStr(BankID));
       EmEU.Text := fData.CustomSelS('TB_BANKZALOG','EU_M','where ID='+IntToStr(BankID));
       EsEU.Text := fData.CustomSelS('TB_BANKZALOG','EU_S','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKZALOG','EL','where ID='+IntToStr(BankID)) of
   0: chEL.Checked := FALSE;
   1: begin
       chel.Checked := TRUE;
       Estavel.Text := fData.CustomSelS('TB_BANKZALOG','EL_E','where ID='+IntToStr(BankID));
       EyEL.Text := fData.CustomSelS('TB_BANKZALOG','EL_Y','where ID='+IntToStr(BankID));
       EmEL.Text := fData.CustomSelS('TB_BANKZALOG','EL_M','where ID='+IntToStr(BankID));
       EsEL.Text := fData.CustomSelS('TB_BANKZALOG','EL_S','where ID='+IntToStr(BankID));
      end;
  end;

  case fData.CustomSelI('TB_BANKZALOG','KOMT','where ID='+IntToStr(BankID)) of
   0: begin
       chEdKomP.Checked := TRUE; chEdKomN.Checked := FALSE;
       EEdKomP.Text := fData.CustomSelS('TB_BANKZALOG','KOM','where ID='+IntToStr(BankID));
      end;
   1: begin
       chEdKomN.Checked := TRUE; chEdKomP.Checked := FALSE;
       EEdKomN.Text := fData.CustomSelS('TB_BANKZALOG','KOM','where ID='+IntToStr(BankID));
      end;
  end;
  Emaxtc.Text := fData.CustomSelS('TB_BANKZALOG','MAXTC','where ID='+IntToStr(BankID));

  case fData.CustomSelI('TB_BANKZALOG','GM','where ID='+IntToStr(BankID)) of
   0: chGM.Checked := FALSE;
   1: chGM.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKZALOG','GC','where ID='+IntToStr(BankID)) of
   0: chGC.Checked := FALSE;
   1: chGC.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKZALOG','GS','where ID='+IntToStr(BankID)) of
   0: chGS.Checked := FALSE;
   1: chGS.Checked := TRUE;
  end;


  {  // --- \\ }
  cbStrax.ItemIndex := fData.CustomSelI('TB_BANKZALOG','STRAX','where ID='+IntToStr(BankID));
  Eprim.Text := fData.CustomSelS('TB_BANKZALOG','STRAX_E','where ID='+IntToStr(BankID));
  cbSLife.ItemIndex := fData.CustomSelI('TB_BANKZALOG','LIFE','where ID='+IntToStr(BankID));
  Eelsem.Text := fData.CustomSelS('TB_BANKZALOG','ELSEM','where ID='+IntToStr(BankID));
  Eneeddoc.Text := fData.CustomSelS('TB_BANKZALOG','NEEDDOC','where ID='+IntToStr(BankID));
  Eakcia.Text := fData.CustomSelS('TB_BANKZALOG','AKCIA','where ID='+IntToStr(BankID));
  Econtact.Text := fData.CustomSelS('TB_BANKZALOG','CONTACT','where ID='+IntToStr(BankID));
  Eelseprim.Text := fData.CustomSelS('TB_BANKZALOG','ELSE_PR','where ID='+IntToStr(BankID));
 except
  MessageBox(fBZalog.Handle,'Ошибка! Произошла ошибка во время работы программы. Попробуйте закрыть и вновь открыть текущее окно.','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
 FMode := 1;
end;

procedure TfBZalog.BSaveClick(Sender: TObject);
var z: byte;
begin
 Application.CreateForm(TfWait, fWait);
 fWait.ParentWindow := fBZalog.Handle;
 fWait.pb.Position := 0;
 fWait.Show();
 fBZalog.Enabled := FALSE;
 z := Update();
 if (z = 1) then
 begin
  fWait.Close();
  fBZalog.Enabled := TRUE;
  MessageBox(fBZalog.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end else
 begin
//  z := SaveDoc();
  fWait.Close();
  fBZalog.Enabled := TRUE;
  if (z = 0) then MessageBox(fBZalog.Handle,'Данные успешно сохранены!','Сохранение успешно.',MB_ICONINFORMATION or MB_OK) else
  if (z = 1) then MessageBox(fBZalog.Handle,'Во время сохранения данных в Microsoft Word произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

function TfBZalog.Update: byte;
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
 rec.Add('ZALOG_B'); rec.Add('ZALOG_B_E');
 rec.Add('ZALOG_A'); rec.Add('ZALOG_A_E');
 rec.Add('ZALOG_E'); rec.Add('ZALOG_E_E');
 rec.Add('ZALOG_D'); rec.Add('ZALOG_D_E');
 rec.Add('ZALOG_EL'); rec.Add('ZALOG_EL_E');
 rec.Add('CLOCR');
 rec.Add('GM');
 rec.Add('GC');
 rec.Add('GS');
 rec.Add('SUMMIN');
 rec.Add('SUMMAX');
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
 rec.Add('MAXTC');
 rec.Add('PRIM');
 { // --- \\ }
 rec.Add('STRAX');
 rec.Add('STRAX_E');
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

 if (chzalog_b.Checked) then val.Add('1') else val.Add('0');
 val.Add(''''+Trim(Ezalog_b_e.Text)+'''');
 if (chzalog_a.Checked) then val.Add('1') else val.Add('0');
 val.Add(''''+Trim(Ezalog_a_e.Text)+'''');
 if (chzalog_e.Checked) then val.Add('1') else val.Add('0');
 val.Add(''''+Trim(Ezalog_e_e.Text)+'''');
 if (chzalog_d.Checked) then val.Add('1') else val.Add('0');
 val.Add(''''+Trim(Ezalog_d_e.Text)+'''');
 if (chzalog_el.Checked) then val.Add('1') else val.Add('0');
 val.Add(''''+Trim(Ezalog_el_e.Text)+'''');
 val.Add(''''+Trim(Eclock.Text)+'''');
 if (chGM.Checked) then val.Add('1') else val.Add('0');
 if (chGC.Checked) then val.Add('1') else val.Add('0');
 if (chGS.Checked) then val.Add('1') else val.Add('0');


 val.Add(''''+Trim(Esummin.Text)+'''');
 val.Add(''''+Trim(Esummax.Text)+'''');
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
 val.Add(Trim(Emaxtc.Text));
 val.Add(''''+Trim(EBprim.Text)+'''');

 { // --- \\ }
 val.Add(IntToStr(cbStrax.ItemIndex));
 val.Add(''''+Trim(Eprim.Text)+'''');
 val.Add(IntToStr(cbSLife.ItemIndex));
 val.Add(''''+Trim(Eelsem.Text)+'''');
 val.Add(''''+Trim(Eneeddoc.Text)+'''');
 val.Add(''''+Trim(Eakcia.Text)+'''');
 val.Add(''''+Trim(Econtact.Text)+'''');
 val.Add(''''+Trim(Eelseprim.Text)+'''');
 if (fData.CustomUpd('TB_BANKZALOG',rec, val, 'ID='+IntToStr(BankID))=0) then Result:=0 else Result:=1;
 rec.Free; val.Free;
 fWait.pb.Position := fWait.pb.Position + 15;
except
 if Assigned(rec) then rec.Free;
 if Assigned(val) then rec.Free;
 Result:=1;
end; 
end;

procedure TfBZalog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fMain.BZalogShow(self);
end;

procedure TfBZalog.BPrintClick(Sender: TObject);
begin
 fMain.BankPrint('TB_BANKZALOG',BankID);
end;

end.
