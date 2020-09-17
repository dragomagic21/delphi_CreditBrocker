unit uUZalog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TfUZalog = class(TForm)
    Bevel11: TBevel;
    Lacost1: TLabel;
    Laprim: TLabel;
    Ltc1: TLabel;
    Ltc2: TLabel;
    Eaprim: TMemo;
    Esuma: TEdit;
    Etc: TEdit;
    Etel_e: TEdit;
    Bevel1: TBevel;
    Bevel8: TBevel;
    Bevel7: TBevel;
    Bevel6: TBevel;
    Bevel3: TBevel;
    Lfam: TLabel;
    Lname: TLabel;
    Lsname: TLabel;
    Lbdate: TLabel;
    Lbplace: TLabel;
    Lbcountry: TLabel;
    Lmfam: TLabel;
    Lps: TLabel;
    Lpnum: TLabel;
    Lpplace: TLabel;
    Lpdate: TLabel;
    Lpid: TLabel;
    Ldnum: TLabel;
    Ldplace: TLabel;
    Lddate: TLabel;
    Ltel_m: TLabel;
    Ltel_h: TLabel;
    Ltel_w: TLabel;
    Lemail: TLabel;
    Lspec: TLabel;
    Lwork_time1: TLabel;
    Lwork_time2: TLabel;
    Lwp_name: TLabel;
    Lwp_adr: TLabel;
    Lwp_tel: TLabel;
    Lwp_db: TLabel;
    Lwp_de: TLabel;
    Lwp_type: TLabel;
    Ltel: TLabel;
    Bevel2: TBevel;
    Lpasp: TLabel;
    Lchild: TLabel;
    Lchildp: TLabel;
    Lfdoh: TLabel;
    Lfdoho1: TLabel;
    Lfdoho2: TLabel;
    Lfdohop: TLabel;
    Lfdohd1: TLabel;
    Lfdohd2: TLabel;
    Lfdohdp: TLabel;
    Lfdoho3: TLabel;
    Lfm_kom1: TLabel;
    Lfm_kom2: TLabel;
    Lfm_alim1: TLabel;
    Lfm_alim2: TLabel;
    Lfm_cr1: TLabel;
    Lfm_cr2: TLabel;
    Lfm_cr_pr: TLabel;
    Lfm_el1: TLabel;
    Lfm_el2: TLabel;
    Lshum: TLabel;
    Bevel10: TBevel;
    rgSex: TRadioGroup;
    Ebdate: TDateTimePicker;
    chDriver: TCheckBox;
    Efam: TEdit;
    Ename: TEdit;
    Esname: TEdit;
    Ebplace: TEdit;
    Ebcountry: TEdit;
    Emfam: TEdit;
    Eps: TEdit;
    Epnum: TEdit;
    Epplace: TEdit;
    Epdate: TDateTimePicker;
    Epid: TEdit;
    Ednum: TEdit;
    Edplace: TEdit;
    Eddate: TDateTimePicker;
    rghplace: TRadioGroup;
    Ehplace: TEdit;
    rghome: TRadioGroup;
    Ehome_e: TEdit;
    rgknowl: TRadioGroup;
    rgwar: TRadioGroup;
    rgworkt: TRadioGroup;
    Espec: TEdit;
    Etel_m: TEdit;
    Etel_h: TEdit;
    Etel_w: TEdit;
    Eemail: TEdit;
    Ework_e: TEdit;
    chwp: TCheckBox;
    Ewp_name: TEdit;
    Ework_time: TEdit;
    Ewp_adr: TEdit;
    Ewp_tel: TEdit;
    Ewp_db: TDateTimePicker;
    Ewp_de: TDateTimePicker;
    Ewp_type: TEdit;
    rgFam: TRadioGroup;
    Echild: TEdit;
    Echildp: TMemo;
    Efmoney: TEdit;
    Efm_pr: TMemo;
    Efm_dop: TEdit;
    EFm_dop_e: TMemo;
    Efm_kom: TEdit;
    Efm_alim: TEdit;
    Efm_cr: TEdit;
    Efm_el: TEdit;
    Efm_cr_pr: TMemo;
    cbshum: TComboBox;
    cbshum_f: TCheckBox;
    cbshum_i: TCheckBox;
    cbshum_e: TCheckBox;
    Eshum_e: TEdit;
    bWork: TBitBtn;
    bFam: TBitBtn;
    bShum: TBitBtn;
    bSave: TSpeedButton;
    Lhcountry: TLabel;
    Lhobl: TLabel;
    Lhhome: TLabel;
    Lhkorp: TLabel;
    Lhkv: TLabel;
    Lhindx: TLabel;
    Lhdb: TLabel;
    Lhde: TLabel;
    Lh: TLabel;
    Bevel4: TBevel;
    Ehcountry: TEdit;
    Ehobl: TEdit;
    Ehtype_e: TEdit;
    Ehhome: TEdit;
    Ehkorp: TEdit;
    Ehkv: TEdit;
    Ehindx: TEdit;
    cbhtype: TComboBox;
    cblold: TCheckBox;
    Ehdb: TDateTimePicker;
    Ehde: TDateTimePicker;
    Llcountry: TLabel;
    Llobl: TLabel;
    Llhome: TLabel;
    Llkorp: TLabel;
    Llkv: TLabel;
    Llindx: TLabel;
    Lldb: TLabel;
    Bevel5: TBevel;
    cbltype: TComboBox;
    Eltype_e: TEdit;
    Elcountry: TEdit;
    Elobl: TEdit;
    Elhome: TEdit;
    Elkorp: TEdit;
    Elkv: TEdit;
    Elindx: TEdit;
    Eldb: TDateTimePicker;
    Elstreet: TEdit;
    Llstreet: TLabel;
    Lhstreet: TLabel;
    Ehstreet: TEdit;
    cbTA: TCheckBox;
    cbTB: TCheckBox;
    cbTE: TCheckBox;
    cbTD: TCheckBox;
    cbTEL: TCheckBox;
    Lzalog: TLabel;
    Bevel13: TBevel;
    cbMN: TComboBox;
    Bevel9: TBevel;
    Lfm_s: TLabel;
    lStatus: TLabel;
    eStatus: TMemo;
    chfm_b: TCheckBox;
    chfm_a: TCheckBox;
    chfm_e: TCheckBox;
    chfm_d: TCheckBox;
    Efm_b_e: TEdit;
    Efm_a_e: TEdit;
    Efm_e_e: TEdit;
    Efm_d_e: TEdit;
    denter: TDateTimePicker;
    procedure rghplaceClick(Sender: TObject);
    procedure cbloldClick(Sender: TObject);
    procedure rghomeClick(Sender: TObject);
    procedure rgworktClick(Sender: TObject);
    procedure bWorkClick(Sender: TObject);
    procedure chwpClick(Sender: TObject);
    procedure cbshumChange(Sender: TObject);
    procedure bShumClick(Sender: TObject);
    procedure rgFamClick(Sender: TObject);
    procedure bFamClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure cbshum_eClick(Sender: TObject);
    procedure chfm_bClick(Sender: TObject);
    procedure chfm_aClick(Sender: TObject);
    procedure chfm_eClick(Sender: TObject);
    procedure chfm_dClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbTELClick(Sender: TObject);
  private
    Mode: byte;
    function Add(): byte;
    function Update(): byte;
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    OpenMode: byte; {добавление / редактирование}
    UserType: byte; {авто, недвижимость, земля, ...}
    UserID  : integer;
    { Public declarations }
  end;

var
  fUZalog: TfUZalog;

implementation

uses uData, uUShum, uUWork, uMain;

{$R *.dfm}

procedure TfUZalog.rghplaceClick(Sender: TObject);
begin
 if (rghplace.ItemIndex = 2) then Ehplace.Enabled := TRUE else
 begin
  Ehplace.Enabled := FALSE;
  Ehplace.Text    := '';
 end;
end;

procedure TfUZalog.cbloldClick(Sender: TObject);
begin
 case cblold.Checked of
  TRUE: begin
         Elcountry.Text := Ehcountry.Text;
         Elobl.Text := Ehobl.Text;
         cbltype.ItemIndex := cbhtype.ItemIndex;
         Eltype_e.Text := Ehtype_e.Text;
         Elstreet.Text := Ehstreet.Text;
         Elhome.Text := Ehhome.Text;
         Elkorp.Text := Ehkorp.Text;
         Elkv.Text := Ehkv.Text;
         Elindx.Text := Ehindx.Text;
         Eldb.DateTime := Ehdb.DateTime;
        end;
  FALSE:begin
         Elcountry.Text := '';
         Elobl.Text := '';
         cbltype.ItemIndex := 0;
         Eltype_e.Text := '';
         Elstreet.Text := '';
         Elhome.Text := '';
         Elkorp.Text := '';
         Elkv.Text := '';
         Elindx.Text := '';
         Eldb.DateTime := Now;
        end;
 end;
end;

procedure TfUZalog.rghomeClick(Sender: TObject);
begin
 if (rghome.ItemIndex = 4) then Ehome_e.Enabled := TRUE else
 begin
  Ehome_e.Enabled := FALSE;
  Ehome_e.Text    := '';
 end;
end;

procedure TfUZalog.rgworktClick(Sender: TObject);
begin
 if (Mode = 1) then
 if ((rgworkt.ItemIndex = 0)or(rgworkt.ItemIndex = 1)) then
 begin
  bWork.Enabled := TRUE;
  Application.CreateForm(TfUWork, fUWork);
  fUWork.Caption  := 'Работа. '+Efam.Text;
  fUWork.UserID   := UserID;
  fUShum.UserType := UserType;
  fUWork.OpenMode := 0;
  fUWork.tmp      := rgworkt;
  fUWork.bSave    := bSave;
  fUWork.ShowModal();
 end else begin
  bWork.Enabled := FALSE;
  fData.CustomDel('TB_UWORK',' USR='+IntToStr(UserID));
 end;
 if (rgworkt.ItemIndex = 4) then Ework_e.Enabled := TRUE else
 begin
  Ework_e.Enabled := FALSE;
  Ework_e.Text    := '';
 end;
end;

procedure TfUZalog.bWorkClick(Sender: TObject);
begin
 Application.CreateForm(TfUWork, fUWork);
 fUWork.UserID   := UserID;
 fUWork.Caption  := 'Работа. '+Efam.Text;
 fUWork.OpenMode := 1;
 fUWork.ShowModal();
end;

procedure TfUZalog.chwpClick(Sender: TObject);
begin
 if (chwp.Checked) then
 begin
  Ewp_name.Enabled := TRUE;
  Ewp_adr.Enabled  := TRUE;
  Ewp_tel.Enabled  := TRUE;
  Ewp_db.Enabled   := TRUE;
  Ewp_de.Enabled   := TRUE;
  Ewp_type.Enabled := TRUE;
 end else
 begin
  Ewp_name.Enabled := FALSE;
  Ewp_name.Text    := '';
  Ewp_adr.Enabled  := FALSE;
  Ewp_adr.Text     := '';
  Ewp_tel.Enabled  := FALSE;
  Ewp_tel.Text     := '';
  Ewp_db.Enabled   := FALSE;
  Ewp_de.Enabled   := FALSE;
  Ewp_type.Enabled := FALSE;
  Ewp_type.Text    := '';
 end;
end;

procedure TfUZalog.cbshumChange(Sender: TObject);
begin
 if (Mode = 1) then
 if (cbshum.ItemIndex = 1) then
 begin
  Application.CreateForm(TfUShum, fUShum);
  bShum.Enabled   := TRUE;
  fUShum.Caption  := 'Поручитель. '+Efam.Text;
  fUShum.UserID   := UserID;
  fUShum.UserType := UserType;
  fUShum.Family   := 0;
  fUShum.OpenMode := 0;
  fUShum.tmpCB    := cbshum;
  fUShum.PF       := fUZalog;
  fUShum.ShowModal();
 end else begin
  bShum.Enabled := FALSE;
  fData.CustomDel('TB_UHUM', '((USR='+IntToStr(UserID)+')and(SFAMILY=0))');
 end;
end;

procedure TfUZalog.bShumClick(Sender: TObject);
begin
 if (Mode = 1) then
 begin
  Application.CreateForm(TfUShum, fUShum);
  fUShum.Caption  := 'Поручитель. '+Efam.Text;
  fUShum.UserID   := UserID;
  fUShum.UserType := UserType;
  fUShum.Family   := 0;
  fUShum.OpenMode := 1;
  fUShum.ShowModal();
 end;
end;

procedure TfUZalog.rgFamClick(Sender: TObject);
begin
 if (Mode = 1) then
 if ((rgFam.ItemIndex = 1)or(rgFam.ItemIndex = 2)) then
 begin
  Application.CreateForm(TfUShum, fUShum);
  fUShum.Caption  := 'Семья. '+Efam.Text;
  bFam.Enabled    := TRUE;
  fUShum.UserID   := UserID;
  fUShum.UserType := UserType;
  fUShum.Family   := 1;
  fUShum.OpenMode := 0;
  fUShum.tmpRG    := rgFam;
  fUShum.PF       := fUZalog;
  fUShum.ShowModal();
 end else begin
  bFam.Enabled := FALSE;
  fData.CustomDel('TB_UHUM', '((USR='+IntToStr(UserID)+')and(SFAMILY=1))');
 end;
end;

procedure TfUZalog.bFamClick(Sender: TObject);
begin
 if (Mode = 1) then
 begin
  Application.CreateForm(TfUShum, fUShum);
  fUShum.Caption  := 'Семья. '+Efam.Text;
  fUShum.UserID   := UserID;
  fUShum.UserType := UserType;
  fUShum.Family   := 1;
  fUShum.OpenMode := 1;
  fUShum.ShowModal();
 end;
end;

function TfUZalog.Add: byte;
var rec, val: string;
begin
 try
  Result := 0;
  { /USER\ }
  rec := ''; val := '';
  val := Eaprim.Text; Eaprim.Clear; Eaprim.Lines.LoadFromFile('Base\ruser.txt');
  rec := Eaprim.Text; Eaprim.Clear; Eaprim.Text:=val; val:='';

  val:=val+IntToStr(UserType)+',';
  val:=val+IntToStr(rgSex.ItemIndex)+',';
  if Length(Efam.Text)>0      then val:=val+''''+Trim(Efam.Text)+''''+','      else val:=val+''''''+',';
  if Length(Ename.Text)>0     then val:=val+''''+Trim(Ename.Text)+''''+','     else val:=val+''''''+',';
  if Length(Esname.Text)>0    then val:=val+''''+Trim(Esname.Text)+''''+','    else val:=val+''''''+',';
                                   val:=val+''''+DateTimeToStr(Ebdate.Date)+''''+',';
  if Length(Ebplace.Text)>0   then val:=val+''''+Trim(Ebplace.Text)+''''+','   else val:=val+''''''+',';
  if Length(Ebcountry.Text)>0 then val:=val+''''+Trim(Ebcountry.Text)+''''+',' else val:=val+''''''+',';
  if Length(Emfam.Text)>0     then val:=val+''''+Trim(Emfam.Text)+''''+','     else val:=val+''''''+',';
  if Length(Eps.Text)>0       then val:=val+''''+Trim(Eps.Text)+''''+','       else val:=val+''''''+',';
  if Length(Epnum.Text)>0     then val:=val+''''+Trim(Epnum.Text)+''''+','     else val:=val+'0'+',';
  if Length(Epplace.Text)>0   then val:=val+''''+Trim(Epplace.Text)+''''+','   else val:=val+''''''+',';
                                   val:=val+''''+DateTimeToStr(Epdate.Date)+''''+',';
  if Length(Epid.Text)>0      then val:=val+''''+Trim(Epid.Text)+''''+','      else val:=val+'0'+',';
  if (chDriver.Checked)       then
  begin
                                   val:=val+'1,';
   if Length(Ednum.Text)>0    then val:=val+''''+Trim(Ednum.Text)+''''+','     else val:=val+'0'+',';
   if Length(Edplace.Text)>0  then val:=val+''''+Trim(Edplace.Text)+''''+','   else val:=val+''''''+',';
                                   val:=val+''''+DateTimeToStr(Eddate.Date)+''''+',';
  end                                                                else val:=val+'0,'+'0'+','+''''''+','+''''+DateTimeToStr(Eddate.Date)+''''+',';
  if Length(Etel_m.Text)>0    then val:=val+''''+Trim(Etel_m.Text)+''''+','    else val:=val+''''''+',';
  if Length(Etel_h.Text)>0    then val:=val+''''+Trim(Etel_h.Text)+''''+','    else val:=val+''''''+',';
  if Length(Etel_w.Text)>0    then val:=val+''''+Trim(Etel_w.Text)+''''+','    else val:=val+''''''+',';
  if Length(Eemail.Text)>0    then val:=val+''''+Trim(Eemail.Text)+''''+','    else val:=val+''''''+',';
                                   val:=val+IntToStr(rghplace.ItemIndex)+',';
  if (rghplace.ItemIndex = 2) then val:=val+''''+Trim(Ehplace.Text)+''''+','   else val:=val+''''''+',';
  if Length(Ehcountry.Text)>0 then val:=val+''''+Trim(Ehcountry.Text)+''''+',' else val:=val+''''''+',';
  if Length(Ehobl.Text)>0     then val:=val+''''+Trim(Ehobl.Text+'''')+','     else val:=val+''''''+',';
                                   val:=val+IntToStr(cbhtype.ItemIndex)+',';
  if Length(Ehtype_e.Text)>0  then val:=val+''''+Trim(Ehtype_e.Text)+''''+','  else val:=val+''''''+',';
  if Length(Ehhome.Text)>0    then val:=val+''''+Trim(Ehhome.Text)+''''+','    else val:=val+''''''+',';
  if Length(Ehkorp.Text)>0    then val:=val+''''+Trim(Ehkorp.Text)+''''+','    else val:=val+''''''+',';
  if Length(Ehkv.Text)>0      then val:=val+''''+Trim(Ehkv.Text)+''''+','      else val:=val+''''''+',';
  if Length(Ehindx.Text)>0    then val:=val+Trim(Ehindx.Text)+','    else val:=val+'0'+',';
                                   val:=val+''''+DateTimeToStr(Ehdb.Date)+''''+',';
                                   val:=val+''''+DateTimeToStr(Ehde.Date)+''''+',';
  if (cblold.Checked)         then
  begin
                                   val:=val+'1'+',';
  if Length(Elcountry.Text)>0 then val:=val+''''+Trim(Elcountry.Text)+''''+',' else val:=val+''''''+',';
  if Length(Elobl.Text)>0     then val:=val+''''+Trim(Elobl.Text)+''''+','     else val:=val+''''''+',';
                                   val:=val+IntToStr(cbltype.ItemIndex)+',';
  if Length(Eltype_e.Text)>0  then val:=val+''''+Trim(Eltype_e.Text)+''''+','  else val:=val+''''''+',';
  if Length(Elhome.Text)>0    then val:=val+''''+Trim(Elhome.Text+'''')+','    else val:=val+''''''+',';
  if Length(Elkorp.Text)>0    then val:=val+''''+Trim(Elkorp.Text)+''''+','    else val:=val+''''''+',';
  if Length(Elkv.Text)>0      then val:=val+''''+Trim(Elkv.Text)+''''+','      else val:=val+''''''+',';
  if Length(Elindx.Text)>0    then val:=val+''''+Trim(Elkv.Text)+''''+','      else val:=val+'0'+',';
                                   val:=val+''''+DateTimeToStr(Eldb.Date)+''''+',';
  end                                                                else val:=val+'0'+','+''''''+','+''''''+','+'0'+','+''''''+','+''''''+','+''''''+','+''''''+','+'0'+','+''''+DateTimeToStr(Eldb.Date)+''''+',';
                                   val:=val+IntToStr(rghome.ItemIndex)+',';
  if (rghome.ItemIndex = 4)   then val:=val+''''+Trim(Ehome_e.Text)+''''+','   else val:=val+''''''+',';
                                   val:=val+IntToStr(rgknowl.ItemIndex)+',';
  if Length(Espec.Text)>0     then val:=val+''''+Trim(Espec.Text)+''''+','     else val:=val+''''''+',';
                                   val:=val+IntToStr(rgwar.ItemIndex)+',';
                                   val:=val+IntToStr(rgworkt.ItemIndex)+',';
  if (rgworkt.ItemIndex = 4)  then val:=val+''''+Trim(Ework_e.Text)+''''+','   else val:=val+''''''+',';
  if Length(Ework_time.Text)>0then val:=val+Trim(Ework_time.Text)+','else val:=val+'0'+',';
  if (chwp.Checked)           then
  begin
                                   val:=val+'1'+',';
  if Length(Ewp_name.Text)>0  then val:=val+''''+Trim(Ewp_name.Text)+''''+','  else val:=val+''''''+',';
  if Length(Ewp_adr.Text)>0   then val:=val+''''+Trim(Ewp_adr.Text)+''''+','   else val:=val+''''''+',';
  if Length(Ewp_tel.Text)>0   then val:=val+''''+Trim(Ewp_tel.Text)+''''+','   else val:=val+''''''+',';
                                   val:=val+''''+DateTimeToStr(Ewp_db.Date)+''''+',';
                                   val:=val+''''+DateTimeToStr(Ewp_de.Date)+''''+',';
  if Length(Ewp_type.Text)>0  then val:=val+''''+Trim(Ewp_type.Text+'''')+','  else val:=val+''''''+',';
  end                                                                else val:=val+'0'+','+''''''+','+''''''+','+''''''+','+''''+DateTimeToStr(Ewp_db.Date)+''''+','+''''+DateTimeToStr(Ewp_de.Date)+''''+','+''''''+',';
                                   val:=val+IntToStr(rgFam.ItemIndex)+',';
  if Length(Echild.Text)>0    then val:=val+Trim(Echild.Text)+','    else val:=val+'0'+',';
  if Length(Echildp.Text)>0   then val:=val+''''+Trim(Echildp.Text)+''''+','   else val:=val+''''''+',';
  if Length(Efmoney.Text)>0   then val:=val+''''+Trim(Efmoney.Text)+''''+','   else val:=val+'0'+',';
  if Length(Efm_pr.Text)>0    then val:=val+''''+Trim(Efm_pr.Text)+''''+','    else val:=val+''''''+',';
  if Length(Efm_dop.Text)>0   then val:=val+''''+Trim(Efm_dop.Text)+''''+','   else val:=val+'0'+',';
  if Length(Efm_dop_e.Text)>0 then val:=val+''''+Trim(EFm_dop_e.Text)+''''+',' else val:=val+''''''+',';
  if Length(Efm_kom.Text)>0   then val:=val+''''+Trim(Efm_kom.Text)+''''+','   else val:=val+'0'+',';
  if Length(Efm_alim.Text)>0  then val:=val+''''+Trim(Efm_alim.Text)+''''+','  else val:=val+'0'+',';
  if Length(Efm_cr.Text)>0    then val:=val+''''+Trim(Efm_cr.Text)+''''+','    else val:=val+'0'+',';
  if Length(Efm_cr_pr.Text)>0 then val:=val+''''+Trim(EFm_dop_e.Text)+''''+',' else val:=val+''''''+',';
  if Length(Efm_el.Text)>0    then val:=val+''''+Trim(Efm_el.Text)+''''+','    else val:=val+'0'+',';
  if (chfm_b.Checked)         then
  begin
                                   val:=val+'1'+',';
  if Length(Efm_b_e.Text)>0   then val:=val+''''+Trim(Efm_b_e.Text)+''''+','  else val:=val+''''''+',';
  end                                                               else val:=val+'0'+','+''''''+',';
  if (chfm_a.Checked)         then
  begin
                                   val:=val+'1'+',';
  if Length(Efm_a_e.Text)>0   then val:=val+''''+Trim(Efm_a_e.Text)+''''+','  else val:=val+''''''+',';
  end                                                               else val:=val+'0'+','+''''''+',';
  if (chfm_e.Checked)         then
  begin
                                   val:=val+'1'+',';
  if Length(Efm_e_e.Text)>0   then val:=val+''''+Trim(Efm_e_e.Text)+''''+','  else val:=val+''''''+',';
  end                                                               else val:=val+'0'+','+''''''+',';
  if (chfm_d.Checked)         then
  begin
                                   val:=val+'1'+',';
  if Length(Efm_d_e.Text)>0   then val:=val+''''+Trim(Efm_d_e.Text)+''''+','  else val:=val+''''''+',';
  end                                                               else val:=val+'0'+','+''''''+',';
                                   val:=val+IntToStr(cbshum.ItemIndex)+',';
  if (cbshum_f.Checked)       then val:=val+'1'+','                 else val:=val+'0'+',';
  if (cbshum_i.Checked)       then val:=val+'1'+','                 else val:=val+'0'+',';
  if (cbshum_e.Checked)       then val:=val+'1'+','                 else val:=val+'0'+',';
  if not (cbshum_e.Checked)   then val:=val+''''''                  else
  if Length(Eshum_e.Text)>0   then val:=val+''''+Trim(Eshum_e.Text)+''''      else val:=val+'''''';
  if Length(eStatus.Text)>0   then val:=val+''''+Trim(eStatus.Text)+''''+','  else val:=val+''''''+',';
  val:=val+''''+DateTimeToStr(denter.Date)+'''';
  { /USER\ }
  if fData.CustomAdd('TB_USER',rec,val)=0 then
  begin
  { /USER AUTO\}
  rec := ''; val := '';
  rec := 'USR,TA,TB,TE,TD,TEL,TEL_E,SUMA,TC,PRIM';
  UserID := fData.GetMaxID('TB_USER');
  if UserID = -1 then
  begin
   MessageBox(fUZalog.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
   Exit;
  end;
                                   val:=val+IntToStr(UserID)+',';
  if (cbTA.Checked)  then val:=val+'1'+',' else val:=val+'0'+',';
  if (cbTB.Checked)  then val:=val+'1'+',' else val:=val+'0'+',';
  if (cbTE.Checked)  then val:=val+'1'+',' else val:=val+'0'+',';
  if (cbTD.Checked)  then val:=val+'1'+',' else val:=val+'0'+',';
  if (cbTEL.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (cbTEL.Checked) then if Length(Etel_e.Text)>0 then val:=val+''''+Trim(Etel_e.Text)+''''+',' else val:=val+'''''';
  if Length(Esuma.Text)>0    then val:=val+''''+Trim(Esuma.Text)+''''+','  else val:=val+'0'+',';
  if Length(Etc.Text)>0       then val:=val+Trim(Etc.Text)+','     else val:=val+'0'+',';
  if Length(Eaprim.Text)>0    then val:=val+''''+Trim(Eaprim.Text)+''''      else val:=val+'''''';
  { /USER BUILD\}
  if fData.CustomAdd('TB_UZALOG',rec,val)=1 then
  begin
   MessageBox(fUZalog.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
   Result := 1;
  end;
  fData.Transaction.Active := FALSE;
  end else MessageBox(fUZalog.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 except
  MessageBox(fUZalog.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
  fData.Transaction.Active := FALSE;
  Result := 1;
 end;
end;

procedure TfUZalog.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
with params do
   ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

function TfUZalog.Update: byte;
var rec,val: TStringList;
begin
 try
  rec:=TStringList.Create; rec.Clear; rec.LoadFromFile('BASE\ruuser.txt');
  val:=TStringList.Create; val.Clear;
  { /// USER \\\ }
  val.Add(IntToStr(UserType));
  val.Add(IntToStr(rgSex.ItemIndex));
  if Length(Efam.Text)>0      then val.Add(''''+Trim(Efam.Text)+'''')      else val.Add('''''');
  if Length(Ename.Text)>0     then val.Add(''''+Trim(Ename.Text)+'''')     else val.Add('''''');
  if Length(Esname.Text)>0    then val.Add(''''+Trim(Esname.Text)+'''')    else val.Add('''''');
                                   val.Add(''''+DateTimeToStr(Ebdate.Date)+'''');
  if Length(Ebplace.Text)>0   then val.Add(''''+Trim(Ebplace.Text)+'''')   else val.Add('''''');
  if Length(Ebcountry.Text)>0 then val.Add(''''+Trim(Ebcountry.Text)+'''') else val.Add('''''');
  if Length(Emfam.Text)>0     then val.Add(''''+Trim(Emfam.Text)+'''')     else val.Add('''''');
  if Length(Eps.Text)>0       then val.Add(''''+Trim(Eps.Text)+'''')       else val.Add('''''');
  if Length(Epnum.Text)>0     then val.Add(''''+Trim(Epnum.Text)+'''')     else val.Add('0');
  if Length(Epplace.Text)>0   then val.Add(''''+Trim(Epplace.Text)+'''')   else val.Add('''''');
                                   val.Add(''''+DateTimeToStr(Epdate.Date)+'''');
  if Length(Epid.Text)>0      then val.Add(''''+Trim(Epid.Text)+'''')      else val.Add('0');
  if (chDriver.Checked)       then
  begin
                                   val.Add('1');
   if Length(Ednum.Text)>0    then val.Add(''''+Trim(Ednum.Text)+'''')     else val.Add('0');
   if Length(Edplace.Text)>0  then val.Add(''''+Trim(Edplace.Text)+'''')   else val.Add('''''');
                                   val.Add(''''+DateTimeToStr(Eddate.Date)+'''');
  end                                                                else
   begin
    val.Add('0');
    val.Add('0');
    val.Add('''''');
    val.Add(''''+DateTimeToStr(Eddate.Date)+'''');
   end;
  if Length(Etel_m.Text)>0    then val.Add(''''+Trim(Etel_m.Text)+'''')    else val.Add('''''');
  if Length(Etel_h.Text)>0    then val.Add(''''+Trim(Etel_h.Text)+'''')    else val.Add('''''');
  if Length(Etel_w.Text)>0    then val.Add(''''+Trim(Etel_w.Text)+'''')    else val.Add('''''');
  if Length(Eemail.Text)>0    then val.Add(''''+Trim(Eemail.Text)+'''')    else val.Add('''''');
                                   val.Add(IntToStr(rghplace.ItemIndex));
  if (rghplace.ItemIndex = 2) then val.Add(''''+Trim(Ehplace.Text)+'''')   else val.Add('''''');
  if Length(Ehcountry.Text)>0 then val.Add(''''+Trim(Ehcountry.Text)+'''') else val.Add('''''');
  if Length(Ehobl.Text)>0     then val.Add(''''+Trim(Ehobl.Text+''''))     else val.Add('''''');
                                   val.Add(IntToStr(cbhtype.ItemIndex));
  if Length(Ehtype_e.Text)>0  then val.Add(''''+Trim(Ehtype_e.Text)+'''')  else val.Add('''''');
  if Length(Ehstreet.Text)>0  then val.Add(''''+Trim(Ehstreet.Text)+'''')  else val.Add('''''');
  if Length(Ehhome.Text)>0    then val.Add(''''+Trim(Ehhome.Text)+'''')    else val.Add('''''');
  if Length(Ehkorp.Text)>0    then val.Add(''''+Trim(Ehkorp.Text)+'''')    else val.Add('''''');
  if Length(Ehkv.Text)>0      then val.Add(''''+Trim(Ehkv.Text)+'''')      else val.Add('''''');
  if Length(Ehindx.Text)>0    then val.Add(''''+Trim(Ehindx.Text)+'''')    else val.Add('0');
                                   val.Add(''''+DateTimeToStr(Ehdb.Date)+'''');
                                   val.Add(''''+DateTimeToStr(Ehde.Date)+'''');
  if (cblold.Checked)         then val.Add('1') else val.Add('0');
  if Length(Elcountry.Text)>0 then val.Add(''''+Trim(Elcountry.Text)+'''') else val.Add('''''');
  if Length(Elobl.Text)>0     then val.Add(''''+Trim(Elobl.Text)+'''')     else val.Add('''''');
                                   val.Add(IntToStr(cbltype.ItemIndex));
  if Length(Eltype_e.Text)>0  then val.Add(''''+Trim(Eltype_e.Text)+'''')  else val.Add('''''');
  if Length(Elstreet.Text)>0  then val.Add(''''+Trim(Elstreet.Text+''''))  else val.Add('''''');
  if Length(Elhome.Text)>0    then val.Add(''''+Trim(Elhome.Text+''''))    else val.Add('''''');
  if Length(Elkorp.Text)>0    then val.Add(''''+Trim(Elkorp.Text)+'''')    else val.Add('''''');
  if Length(Elkv.Text)>0      then val.Add(''''+Trim(Elkv.Text)+'''')      else val.Add('''''');
  if Length(Elindx.Text)>0    then val.Add(''''+Trim(Elindx.Text)+'''')    else val.Add('0');
                                   val.Add(''''+DateTimeToStr(Eldb.Date)+'''');
                                   val.Add(IntToStr(rghome.ItemIndex));
  if (rghome.ItemIndex = 4)   then val.Add(''''+Trim(Ehome_e.Text)+'''')   else val.Add('''''');
                                   val.Add(IntToStr(rgknowl.ItemIndex));
  if Length(Espec.Text)>0     then val.Add(''''+Trim(Espec.Text)+'''')     else val.Add('''''');
                                   val.Add(IntToStr(rgwar.ItemIndex));
                                   val.Add(IntToStr(rgworkt.ItemIndex));
  if (rgworkt.ItemIndex = 4)  then val.Add(''''+Trim(Ework_e.Text)+'''')   else val.Add('''''');
  if Length(Ework_time.Text)>0then val.Add(Trim(Ework_time.Text))else val.Add('0');
  if (chwp.Checked)           then
  begin
                                   val.Add('1');
  if Length(Ewp_name.Text)>0  then val.Add(''''+Trim(Ewp_name.Text)+'''')  else val.Add('''''');
  if Length(Ewp_adr.Text)>0   then val.Add(''''+Trim(Ewp_adr.Text)+'''')   else val.Add('''''');
  if Length(Ewp_tel.Text)>0   then val.Add(''''+Trim(Ewp_tel.Text)+'''')   else val.Add('''''');
                                   val.Add(''''+DateTimeToStr(Ewp_db.Date)+'''');
                                   val.Add(''''+DateTimeToStr(Ewp_de.Date)+'''');
  if Length(Ewp_type.Text)>0  then val.Add(''''+Trim(Ewp_type.Text+''''))  else val.Add('''''');
  end                                                                else
   begin
    val.Add('0');
    val.Add('''''');
    val.Add('''''');
    val.Add('''''');
    val.Add(''''+DateTimeToStr(Ewp_db.Date)+'''');
    val.Add(''''+DateTimeToStr(Ewp_de.Date)+'''');
    val.Add('''''');
   end;
                                   val.Add(IntToStr(rgFam.ItemIndex));
  if Length(Echild.Text)>0    then val.Add(Trim(Echild.Text))    else val.Add('0');
  if Length(Echildp.Text)>0   then val.Add(''''+Trim(Echildp.Text)+'''')   else val.Add('''''');
  if Length(Efmoney.Text)>0   then val.Add(''''+Trim(Efmoney.Text)+'''')   else val.Add('0');
  if Length(Efm_pr.Text)>0    then val.Add(''''+Trim(Efm_pr.Text)+'''')    else val.Add('''''');
  if Length(Efm_dop.Text)>0   then val.Add(''''+Trim(Efm_dop.Text)+'''')   else val.Add('0');
  if Length(Efm_dop_e.Text)>0 then val.Add(''''+Trim(EFm_dop_e.Text)+'''') else val.Add('''''');
  if Length(Efm_kom.Text)>0   then val.Add(''''+Trim(Efm_kom.Text)+'''')   else val.Add('0');
  if Length(Efm_alim.Text)>0  then val.Add(''''+Trim(Efm_alim.Text)+'''')  else val.Add('0');
  if Length(Efm_cr.Text)>0    then val.Add(''''+Trim(Efm_cr.Text)+'''')    else val.Add('0');
  if Length(Efm_cr_pr.Text)>0 then val.Add(''''+Trim(Efm_cr_pr.Text)+'''') else val.Add('''''');
  if Length(Efm_el.Text)>0    then val.Add(''''+Trim(Efm_el.Text)+'''')    else val.Add('0');
  if (chfm_b.Checked)         then
  begin
                                   val.Add('1');
  if Length(Efm_b_e.Text)>0   then val.Add(''''+Trim(Efm_b_e.Text)+'''')  else val.Add('''''');
  end                                                               else begin val.Add('0'); val.Add(''''''); end;
  if (chfm_a.Checked)         then
  begin
                                   val.Add('1');
  if Length(Efm_a_e.Text)>0   then val.Add(''''+Trim(Efm_a_e.Text)+'''')  else val.Add('''''');
  end                                                               else begin val.Add('0'); val.Add(''''''); end;
  if (chfm_e.Checked)         then
  begin
                                   val.Add('1');
  if Length(Efm_e_e.Text)>0   then val.Add(''''+Trim(Efm_e_e.Text)+'''')  else val.Add('''''');
  end                                                               else begin val.Add('0'); val.Add(''''''); end;
  if (chfm_d.Checked)         then
  begin
                                   val.Add('1');
  if Length(Efm_d_e.Text)>0   then val.Add(''''+Trim(Efm_d_e.Text)+'''')  else val.Add('''''');
  end                                                               else begin val.Add('0'); val.Add(''''''); end;
                                   val.Add(IntToStr(cbshum.ItemIndex));
  if (cbshum_f.Checked)       then val.Add('1')                 else val.Add('0');
  if (cbshum_i.Checked)       then val.Add('1')                 else val.Add('0');
  if (cbshum_e.Checked)       then val.Add('1')                 else val.Add('0');
  if not (cbshum_e.Checked)   then val.Add('''''')                  else
  if Length(Eshum_e.Text)>0   then val.Add(''''+Trim(Eshum_e.Text)+'''')      else val.Add('''''');
  if Length(eStatus.Text)>0   then val.Add(''''+Trim(eStatus.Text)+'''') else val.Add('''''');
  val.Add(''''+DateTimeToStr(denter.Date)+'''');
  { \\\ USER /// }
  if fData.CustomUpd('TB_USER',rec,val,'ID='+IntToStr(UserID))=0 then
  begin
   rec.Free; val.Free;
   rec:=TStringList.Create; rec.Clear; rec.Add('USR'); rec.Add('TA'); rec.Add('TB'); rec.Add('TE'); rec.Add('TD'); rec.Add('TEL'); rec.Add('TEL_E'); rec.Add('SUMA'); rec.Add('TC'); rec.Add('PRIM'); rec.Add('MN');
   val:=TStringList.Create; val.Clear;
   val.Add(IntToStr(UserID));

  if (cbTA.Checked)  then val.Add('1') else val.Add('0');
  if (cbTB.Checked)  then val.Add('1') else val.Add('0');
  if (cbTE.Checked)  then val.Add('1') else val.Add('0');
  if (cbTD.Checked)  then val.Add('1') else val.Add('0');
  if (cbTEL.Checked) then val.Add('1') else val.Add('0');
  if not(cbTEL.Checked) then val.Add('''''') else if Length(Etel_e.Text)>0 then val.Add(''''+Trim(Etel_e.Text)+'''') else val.Add('''''');

   if Length(Esuma.Text)>0 then val.Add(''''+Trim(Esuma.Text)+'''') else val.Add('''''');
   if Length(Etc.Text)>0    then val.Add(Trim(Etc.Text)) else val.Add('0');
   if Length(Eaprim.Text)>0   then val.Add(''''+Trim(Eaprim.Text)+'''')   else val.Add('''''');
   val.Add(IntToStr(cbMN.ItemIndex));
   if fData.CustomUpd('TB_UZALOG',rec,val,'USR='+IntToStr(UserID))=1 then
   begin
    MessageBox(fUZalog.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
    Result := 1;
   end else
   Result := 0;
  end else MessageBox(fUZalog.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
  rec.Free; val.Free;
 except
  MessageBox(fUZalog.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
  fData.Transaction.Rollback;
  fData.Transaction.Active := FALSE;
  if Assigned(rec) then rec.Free;
  if Assigned(val) then rec.Free;
  Result := 1;
 end;

end;

procedure TfUZalog.FormCreate(Sender: TObject);
begin
 if (Screen.Height<1024) then
 begin
  fUZalog.AutoSize:=FALSE;
  fUZalog.Width:=700;
  fUZalog.Height:=500;
 end;
 OpenMode := 2;
 UserType := 9;
 UserID   := -1;
end;

procedure TfUZalog.FormShow(Sender: TObject);
begin
 if (OpenMode = 1) then
 try
  Mode := 0;
  { /USER\ }
  rgSex.ItemIndex := fData.CustomSelI('TB_USER','SEX',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Efam.Text := fData.CustomSelS('TB_USER','FAM',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ename.Text := fData.CustomSelS('TB_USER','NAME',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Esname.Text := fData.CustomSelS('TB_USER','SNAME',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ebdate.DateTime:=StrToDateTime(fData.CustomSelS('TB_USER','BDATE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')'));
  Ebplace.Text := fData.CustomSelS('TB_USER','BPLACE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ebcountry.Text := fData.CustomSelS('TB_USER','BCOUNTRY',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Emfam.Text := fData.CustomSelS('TB_USER','MFAM',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Eps.Text := fData.CustomSelS('TB_USER','PS',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Epnum.Text := fData.CustomSelS('TB_USER','PNUM',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Epplace.Text := fData.CustomSelS('TB_USER','PPLACE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Epdate.DateTime:=StrToDateTime(fData.CustomSelS('TB_USER','PDATE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')'));
  Epid.Text := fData.CustomSelS('TB_USER','PID',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  case fData.CustomSelI('TB_USER','DRIVER',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: chDriver.Checked := FALSE;
   1: begin
       chDriver.Checked := TRUE;
       Ednum.Text := fData.CustomSelS('TB_USER','DNUM',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Edplace.Text := fData.CustomSelS('TB_USER','DPLACE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Eddate.DateTime:=StrToDateTime(fData.CustomSelS('TB_USER','DDATE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')'));
      end;
  end;
  Etel_m.Text := fData.CustomSelS('TB_USER','TEL_M',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Etel_h.Text := fData.CustomSelS('TB_USER','TEL_H',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Etel_w.Text := fData.CustomSelS('TB_USER','TEL_W',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Eemail.Text := fData.CustomSelS('TB_USER','EMAIL',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  rghplace.ItemIndex := fData.CustomSelI('TB_USER','HPLACE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  if (rghplace.ItemIndex = 2) then Ehplace.Text := fData.CustomSelS('TB_USER','HPLACE_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ehcountry.Text := fData.CustomSelS('TB_USER','HCOUNTRY',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ehobl.Text := fData.CustomSelS('TB_USER','HOBL',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  cbhtype.ItemIndex := fData.CustomSelI('TB_USER','HTYPE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ehtype_e.Text := fData.CustomSelS('TB_USER','HTYPE_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ehstreet.Text := fData.CustomSelS('TB_USER','HSTREET',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ehhome.Text := fData.CustomSelS('TB_USER','HHOME',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ehkorp.Text := fData.CustomSelS('TB_USER','HKORP',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ehkv.Text := fData.CustomSelS('TB_USER','HKV',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ehindx.Text := fData.CustomSelS('TB_USER','HINDX',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Ehdb.DateTime:=StrToDateTime(fData.CustomSelS('TB_USER','HDB',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')'));
  Ehde.DateTime:=StrToDateTime(fData.CustomSelS('TB_USER','HDE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')'));
  case fData.CustomSelI('TB_USER','LOLD',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: begin
       cblold.Checked := FALSE;
       Elcountry.Text := fData.CustomSelS('TB_USER','LCOUNTRY',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Elobl.Text := fData.CustomSelS('TB_USER','LOBL',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       cbltype.ItemIndex := fData.CustomSelI('TB_USER','LTYPE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Eltype_e.Text := fData.CustomSelS('TB_USER','LTYPE_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Elstreet.Text := fData.CustomSelS('TB_USER','LSTREET',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Elhome.Text := fData.CustomSelS('TB_USER','LHOME',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Elkorp.Text := fData.CustomSelS('TB_USER','LKORP',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Elkv.Text := fData.CustomSelS('TB_USER','LKV',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Elindx.Text := fData.CustomSelS('TB_USER','LINDX',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Eldb.DateTime:=StrToDateTime(fData.CustomSelS('TB_USER','LDB',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')'));
      end;
   1: begin
       cblold.Checked := TRUE;
       Elcountry.Text := Ehcountry.Text;
       Elobl.Text := Ehobl.Text;
       cbltype.ItemIndex := cbhtype.ItemIndex;
       Eltype_e.Text := Ehtype_e.Text;
       Elstreet.Text := Ehstreet.Text;
       Elhome.Text := Ehhome.Text;
       Elkorp.Text := Ehkorp.Text;
       Elkv.Text := Ehkv.Text;
       Elindx.Text := Ehindx.Text;
       Eldb.DateTime := Ehdb.DateTime;
      end;
  end;
  rghome.ItemIndex := fData.CustomSelI('TB_USER','HOME',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  if (rghome.ItemIndex = 4) then Ehome_e.Text := fData.CustomSelS('TB_USER','HOME_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  rgknowl.ItemIndex := fData.CustomSelI('TB_USER','KNOWL',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Espec.Text := fData.CustomSelS('TB_USER','SPEC',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  rgwar.ItemIndex := fData.CustomSelI('TB_USER','WAR',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  rgworkt.ItemIndex := fData.CustomSelI('TB_USER','WORKT',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  if (rgworkt.ItemIndex = 4) then Ework_e.Text := fData.CustomSelS('TB_USER','WORK_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  if ((rgworkt.ItemIndex = 0)or(rgworkt.ItemIndex = 1)) then bWork.Enabled := TRUE;
  Ework_time.Text := fData.CustomSelS('TB_USER','WORK_TIME',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  case fData.CustomSelI('TB_USER','WP',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: chwp.Checked := FALSE;
   1: begin
       chwp.Checked := TRUE;
       Ewp_name.Text := fData.CustomSelS('TB_USER','WP_NAME',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Ewp_adr.Text := fData.CustomSelS('TB_USER','WP_ADR',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Ewp_tel.Text := fData.CustomSelS('TB_USER','WP_TEL',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
       Ewp_db.DateTime:=StrToDateTime(fData.CustomSelS('TB_USER','WP_DB',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')'));
       Ewp_de.DateTime:=StrToDateTime(fData.CustomSelS('TB_USER','WP_DE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')'));
       Ewp_type.Text := fData.CustomSelS('TB_USER','WP_TYPE',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
      end;
  end;
  cbshum.ItemIndex := fData.CustomSelI('TB_USER','SHUM',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  if (cbshum.ItemIndex = 1) then bShum.Enabled := TRUE;
  case fData.CustomSelI('TB_USER','SHUM_F',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: cbshum_f.Checked := FALSE;
   1: cbshum_f.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_USER','SHUM_I',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: cbshum_i.Checked := FALSE;
   1: cbshum_i.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_USER','SHUM_EL',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: cbshum_e.Checked := FALSE;
   1: begin
       cbshum_e.Checked := TRUE;
       Eshum_e.Text := fData.CustomSelS('TB_USER','SHUM_EL_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
      end;
  end;
  rgFam.ItemIndex := fData.CustomSelI('TB_USER','FAMILY',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  if ((rgFam.ItemIndex = 1)or(rgFam.ItemIndex = 2)) then bFam.Enabled := TRUE;
  Echild.Text := fData.CustomSelS('TB_USER','F_CHILD',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Echildp.Text := fData.CustomSelS('TB_USER','F_PR',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Efmoney.Text := fData.CustomSelS('TB_USER','FMONEY',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Efm_pr.Text := fData.CustomSelS('TB_USER','FM_PR',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Efm_dop.Text := fData.CustomSelS('TB_USER','FM_DOP',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  EFm_dop_e.Text := fData.CustomSelS('TB_USER','FM_DOP_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Efm_kom.Text := fData.CustomSelS('TB_USER','FM_KOM',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Efm_alim.Text := fData.CustomSelS('TB_USER','FM_ALIM',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Efm_cr.Text := fData.CustomSelS('TB_USER','FM_CR',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Efm_cr_pr.Text := fData.CustomSelS('TB_USER','FM_CR_PR',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  Efm_el.Text := fData.CustomSelS('TB_USER','FM_EL',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  case fData.CustomSelI('TB_USER','FM_B',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: chfm_b.Checked := FALSE;
   1: begin
       chfm_b.Checked := TRUE;
       Efm_b_e.Text := fData.CustomSelS('TB_USER','FM_B_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
      end;
  end;
  case fData.CustomSelI('TB_USER','FM_A',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: chfm_a.Checked := FALSE;
   1: begin
       chfm_a.Checked := TRUE;
       Efm_a_e.Text := fData.CustomSelS('TB_USER','FM_A_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
      end;
  end;
  case fData.CustomSelI('TB_USER','FM_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: chfm_e.Checked := FALSE;
   1: begin
       chfm_e.Checked := TRUE;
       Efm_e_e.Text := fData.CustomSelS('TB_USER','FM_E_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
      end;
  end;
  case fData.CustomSelI('TB_USER','FM_D',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')') of
   0: chfm_d.Checked := FALSE;
   1: begin
       chfm_d.Checked := TRUE;
       Efm_d_e.Text := fData.CustomSelS('TB_USER','FM_D_E',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
      end;
  end;
  eStatus.Text := fData.CustomSelS('TB_USER','STATUS',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
  denter.DateTime:=StrToDateTime(fData.CustomSelS('TB_USER','DENTER',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')'));
  { /USER\ }
  { \\\___ AUTO ___///}
  case fData.CustomSelI('TB_UZALOG','TA',' where USR='+IntToStr(UserID)) of
   0: cbTA.Checked := FALSE;
   1: cbTA.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UZALOG','TB',' where USR='+IntToStr(UserID)) of
   0: cbTB.Checked := FALSE;
   1: cbTB.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UZALOG','TE',' where USR='+IntToStr(UserID)) of
   0: cbTE.Checked := FALSE;
   1: cbTE.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UZALOG','TD',' where USR='+IntToStr(UserID)) of
   0: cbTD.Checked := FALSE;
   1: cbTD.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UZALOG','TEL',' where USR='+IntToStr(UserID)) of
   0: cbTEL.Checked := FALSE;
   1: begin
       cbTEL.Checked := TRUE;
       Etel_e.Text := fData.CustomSelS('TB_UZALOG','TEL_E',' where USR='+IntToStr(UserID));
      end;
  end;
  Esuma.Text := fData.CustomSelS('TB_UZALOG','SUMA',' where USR='+IntToStr(UserID));
  Etc.Text := fData.CustomSelS('TB_UZALOG','TC',' where USR='+IntToStr(UserID));
  Eaprim.Text := fData.CustomSelS('TB_UZALOG','PRIM',' where USR='+IntToStr(UserID));
  cbMN.ItemIndex := fData.CustomSelI('TB_UZALOG','MN',' where USR='+IntToStr(UserID));
  { ///___ AUTO ___\\\}
  Mode := 1;
 except
  Mode := 1;
  MessageBox(fUZalog.Handle,'При чтении данных произошла ошибка.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
 fUZalog.Caption := 'Клиент. Залоговый. '+Efam.Text;
end;

procedure TfUZalog.bSaveClick(Sender: TObject);
begin
 case OpenMode of
  0: Add();
  1: if Update()=0 then MessageBox(0,'Данные успешно сохранены!','Сохранение успешно.',MB_ICONINFORMATION or MB_OK);
 end;
end;

procedure TfUZalog.cbshum_eClick(Sender: TObject);
begin
 if (cbshum_e.Checked) then Eshum_e.Enabled := TRUE else
 begin
  Eshum_e.Enabled := FALSE;
  Eshum_e.Text    := '';
 end;
end;

procedure TfUZalog.chfm_bClick(Sender: TObject);
begin
 if (chfm_b.Checked) then Efm_b_e.Enabled := TRUE else
 begin
  Efm_b_e.Enabled := FALSE;
  Efm_b_e.Text    := '';
 end;
end;

procedure TfUZalog.chfm_aClick(Sender: TObject);
begin
 if (chfm_a.Checked) then Efm_a_e.Enabled := TRUE else
 begin
  Efm_a_e.Enabled := FALSE;
  Efm_a_e.Text    := '';
 end;
end;

procedure TfUZalog.chfm_eClick(Sender: TObject);
begin
 if (chfm_e.Checked) then Efm_e_e.Enabled := TRUE else
 begin
  Efm_e_e.Enabled := FALSE;
  Efm_e_e.Text    := '';
 end;
end;

procedure TfUZalog.chfm_dClick(Sender: TObject);
begin
 if (chfm_d.Checked) then Efm_d_e.Enabled := TRUE else
 begin
  Efm_d_e.Enabled := FALSE;
  Efm_d_e.Text    := '';
 end;
end;

procedure TfUZalog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fMain.uZalogShow(self);
end;

procedure TfUZalog.cbTELClick(Sender: TObject);
begin
 if (cbTEL.Checked) then Etel_e.Enabled := TRUE else
 begin
  Etel_e.Enabled := FALSE;
  Etel_e.Text    := '';
 end;
end;

end.
