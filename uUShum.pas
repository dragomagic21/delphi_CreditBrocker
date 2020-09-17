unit uUShum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TfUShum = class(TForm)
    Bevel6: TBevel;
    Bevel3: TBevel;
    Lfam: TLabel;
    Lname: TLabel;
    Lsname: TLabel;
    Lbdate: TLabel;
    Lbplace: TLabel;
    Lbcountry: TLabel;
    Lps: TLabel;
    Lpnum: TLabel;
    Lpplace: TLabel;
    Lpdate: TLabel;
    Lpid: TLabel;
    Lhcountry: TLabel;
    Lhobl: TLabel;
    Lhhome: TLabel;
    Lhkorp: TLabel;
    Lhkv: TLabel;
    Lhindx: TLabel;
    Lhdb: TLabel;
    Lhde: TLabel;
    Llcountry: TLabel;
    Llobl: TLabel;
    Llhome: TLabel;
    Llkorp: TLabel;
    Llkv: TLabel;
    Llindx: TLabel;
    Lldb: TLabel;
    Ltel_m: TLabel;
    Ltel_h: TLabel;
    Ltel_w: TLabel;
    Lemail: TLabel;
    Ltel: TLabel;
    Bevel2: TBevel;
    Lpasp: TLabel;
    Lh: TLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    rgSex: TRadioGroup;
    Ebdate: TDateTimePicker;
    Efam: TEdit;
    Ename: TEdit;
    Esname: TEdit;
    Ebplace: TEdit;
    Ebcountry: TEdit;
    Eps: TEdit;
    Epnum: TEdit;
    Epplace: TEdit;
    Epdate: TDateTimePicker;
    Epid: TEdit;
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
    cbltype: TComboBox;
    Eltype_e: TEdit;
    Elcountry: TEdit;
    Elobl: TEdit;
    Elhome: TEdit;
    Elkorp: TEdit;
    Elkv: TEdit;
    Elindx: TEdit;
    Eldb: TDateTimePicker;
    Etel_m: TEdit;
    Etel_h: TEdit;
    Etel_w: TEdit;
    Eemail: TEdit;
    rgwrk: TRadioGroup;
    Ewrk0: TEdit;
    Ewrk1: TEdit;
    chsfamily: TCheckBox;
    Lprim: TLabel;
    Eprim: TMemo;
    bOk: TBitBtn;
    bCancel: TBitBtn;
    Lhstreet: TLabel;
    Ehstreet: TEdit;
    Elstreet: TEdit;
    Llstreet: TLabel;
    procedure rgwrkClick(Sender: TObject);
    procedure cbloldClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chsfamilyClick(Sender: TObject);
  private
    function Add(): byte;
    function Update(): byte;
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    UserID  : integer;
    UserType: integer;
    Family  : integer;
    OpenMode: integer;
    tmpCB   : TComboBox;
    tmpRG   : TRadioGroup;
    PF      : TForm;
    { Public declarations }
  end;

var
  fUShum: TfUShum;

implementation

uses uData, uUAuto;

{$R *.dfm}

procedure TfUShum.rgwrkClick(Sender: TObject);
begin
 if (rgwrk.ItemIndex = 0) then
 begin
  Ewrk0.Enabled := TRUE;
  Ewrk1.Enabled := FALSE;
  Ewrk1.Text    := '';
 end else
 if (rgwrk.ItemIndex = 1) then
 begin
  Ewrk0.Enabled := FALSE;
  Ewrk0.Text    := '';
  Ewrk1.Enabled := TRUE;
 end else
 begin
  Ewrk0.Enabled := FALSE;
  Ewrk0.Text    := '';
  Ewrk1.Enabled := FALSE;
  Ewrk1.Text    := '';
 end;
end;

procedure TfUShum.cbloldClick(Sender: TObject);
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

procedure TfUShum.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
with params do
   ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

procedure TfUShum.bCancelClick(Sender: TObject);
begin
 if (OpenMode = 0) then
 case Family of
  0: begin
      tmpCB.ItemIndex := 0;
      tmpCB.OnChange(self);
     end;
  1: begin
      tmpRG.ItemIndex := 0;
      tmpRG.OnClick(Self);
     end;
 end;
 Close();
end;

procedure TfUShum.bOkClick(Sender: TObject);
begin
 case OpenMode of
  0: begin
      Add();
      PF.Update();
     end;
  1: Update();
 end;
end;

function TfUShum.Add: byte;
var rec, val: string;
begin
 try
  Result := 0;
  { /USER\ }
  rec := ''; val := '';
  rec := 'usr,sfamily,sex,fam,name,sname,bdate,bplace,bcountry,ps,pnum,place,pdate,pid,tel_m,tel_h,tel_w,email,fm,hcountry,hobl,htype,htype_e,hstreet,hhome,hkorp,hkv,hindx,hdb,hde,lold,lcountry,lobl,ltype,ltype_e,lstreet,lhome,lkorp,lkv,lindx,ldb,wrk,wrk_e,prim';
  val:=val+IntToStr(UserID)+',';
  val:=val+IntToStr(Family)+',';
  val:=val+IntToStr(rgSex.ItemIndex)+',';
  if Length(Efam.Text)>0      then val:=val+''''+Trim(Efam.Text)+''''+','      else val:=val+''''''+',';
  if Length(Ename.Text)>0     then val:=val+''''+Trim(Ename.Text)+''''+','     else val:=val+''''''+',';
  if Length(Esname.Text)>0    then val:=val+''''+Trim(Esname.Text)+''''+','    else val:=val+''''''+',';
                                   val:=val+''''+DateTimeToStr(Ebdate.Date)+''''+',';
  if Length(Ebplace.Text)>0   then val:=val+''''+Trim(Ebplace.Text)+''''+','   else val:=val+''''''+',';
  if Length(Ebcountry.Text)>0 then val:=val+''''+Trim(Ebcountry.Text)+''''+',' else val:=val+''''''+',';
  if Length(Eps.Text)>0       then val:=val+''''+Trim(Eps.Text)+''''+','       else val:=val+''''''+',';
  if Length(Epnum.Text)>0     then val:=val+''''+Trim(Epnum.Text)+''''+','     else val:=val+'0'+',';
  if Length(Epplace.Text)>0   then val:=val+''''+Trim(Epplace.Text)+''''+','   else val:=val+''''''+',';
                                   val:=val+''''+DateTimeToStr(Epdate.Date)+''''+',';
  if Length(Epid.Text)>0      then val:=val+''''+Trim(Epid.Text)+''''+','      else val:=val+'0'+',';
  if Length(Etel_m.Text)>0    then val:=val+''''+Trim(Etel_m.Text)+''''+','    else val:=val+''''''+',';
  if Length(Etel_h.Text)>0    then val:=val+''''+Trim(Etel_h.Text)+''''+','    else val:=val+''''''+',';
  if Length(Etel_w.Text)>0    then val:=val+''''+Trim(Etel_w.Text)+''''+','    else val:=val+''''''+',';
  if Length(Eemail.Text)>0    then val:=val+''''+Trim(Eemail.Text)+''''+','    else val:=val+''''''+',';
  if (chsfamily.Checked)      then val:=val+'1'+','                            else val:=val+'0'+',';
  if Length(Ehcountry.Text)>0 then val:=val+''''+Trim(Ehcountry.Text)+''''+',' else val:=val+''''''+',';
  if Length(Ehobl.Text)>0     then val:=val+''''+Trim(Ehobl.Text+'''')+','     else val:=val+''''''+',';
                                   val:=val+IntToStr(cbhtype.ItemIndex)+',';
  if Length(Ehtype_e.Text)>0  then val:=val+''''+Trim(Ehtype_e.Text)+''''+','  else val:=val+''''''+',';
  if Length(Ehstreet.Text)>0  then val:=val+''''+Trim(Ehstreet.Text)+''''+','  else val:=val+''''''+',';
  if Length(Ehhome.Text)>0    then val:=val+''''+Trim(Ehhome.Text)+''''+','    else val:=val+''''''+',';
  if Length(Ehkorp.Text)>0    then val:=val+''''+Trim(Ehkorp.Text)+''''+','    else val:=val+''''''+',';
  if Length(Ehkv.Text)>0      then val:=val+''''+Trim(Ehkv.Text)+''''+','      else val:=val+''''''+',';
  if Length(Ehindx.Text)>0    then val:=val+''''+Trim(Ehindx.Text)+''''+','    else val:=val+''''''+',';
                                   val:=val+''''+DateTimeToStr(Ehdb.Date)+''''+',';
                                   val:=val+''''+DateTimeToStr(Ehde.Date)+''''+',';
  if (cblold.Checked)         then val:=val+'1'+','                            else val:=val+'0'+',';
  if Length(Elcountry.Text)>0 then val:=val+''''+Trim(Elcountry.Text)+''''+',' else val:=val+''''''+',';
  if Length(Elobl.Text)>0     then val:=val+''''+Trim(Elobl.Text)+''''+','     else val:=val+''''''+',';
                                   val:=val+IntToStr(cbltype.ItemIndex)+',';
  if Length(Eltype_e.Text)>0  then val:=val+''''+Trim(Eltype_e.Text)+''''+','  else val:=val+''''''+',';
  if Length(Elstreet.Text)>0  then val:=val+''''+Trim(Elstreet.Text+'''')+','  else val:=val+''''''+',';
  if Length(Elhome.Text)>0    then val:=val+''''+Trim(Elhome.Text+'''')+','    else val:=val+''''''+',';
  if Length(Elkorp.Text)>0    then val:=val+''''+Trim(Elkorp.Text)+''''+','    else val:=val+''''''+',';
  if Length(Elkv.Text)>0      then val:=val+''''+Trim(Elkv.Text)+''''+','      else val:=val+''''''+',';
  if Length(Elindx.Text)>0    then val:=val+''''+Trim(Elindx.Text)+''''+','    else val:=val+''''''+',';
                                   val:=val+''''+DateTimeToStr(Eldb.Date)+''''+',';

  val:=val+IntToStr(rgwrk.ItemIndex)+',';
  if (rgwrk.ItemIndex = 0) then val:=val+''''+Trim(Ewrk0.Text)+''''+',' else
  if (rgwrk.ItemIndex = 1) then val:=val+''''+Trim(Ewrk1.Text)+''''+',' else val:=val+''''''+',';
  if Length(Eprim.Text)>0  then val:=val+''''+Trim(Eprim.Text)+''''     else val:=val+'''''';
  Result := 0;
  if fData.CustomAdd('TB_UHUM',rec,val)=1 then
  begin
   MessageBox(fUShum.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
   fData.Transaction.Active := FALSE;
   Result := 1;
  end;
 except
  MessageBox(fUShum.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
  fData.Transaction.Active := FALSE;
  Result := 1;
 end;
end;

function TfUShum.Update: byte;
var rec,val: TStringList;
begin
 try
  rec:=TStringList.Create; rec.Clear; rec.LoadFromFile('BASE\rushum.txt');
  val:=TStringList.Create; val.Clear;
  val.Add(IntToStr(UserID));
  val.Add(IntToStr(Family));
  val.Add(IntToStr(rgSex.ItemIndex));
  if Length(Efam.Text)>0      then val.Add(''''+Trim(Efam.Text)+'''')      else val.Add('''''');
  if Length(Ename.Text)>0     then val.Add(''''+Trim(Ename.Text)+'''')     else val.Add('''''');
  if Length(Esname.Text)>0    then val.Add(''''+Trim(Esname.Text)+'''')    else val.Add('''''');
                                   val.Add(''''+DateTimeToStr(Ebdate.Date)+'''');
  if Length(Ebplace.Text)>0   then val.Add(''''+Trim(Ebplace.Text)+'''')   else val.Add('''''');
  if Length(Ebcountry.Text)>0 then val.Add(''''+Trim(Ebcountry.Text)+'''') else val.Add('''''');
  if Length(Eps.Text)>0       then val.Add(''''+Trim(Eps.Text)+'''')       else val.Add('''''');
  if Length(Epnum.Text)>0     then val.Add(''''+Trim(Epnum.Text)+'''')     else val.Add('0');
  if Length(Epplace.Text)>0   then val.Add(''''+Trim(Epplace.Text)+'''')   else val.Add('''''');
                                   val.Add(''''+DateTimeToStr(Epdate.Date)+'''');
  if Length(Epid.Text)>0      then val.Add(''''+Trim(Epid.Text)+'''')      else val.Add('0');
  if Length(Etel_m.Text)>0    then val.Add(''''+Trim(Etel_m.Text)+'''')    else val.Add('''''');
  if Length(Etel_h.Text)>0    then val.Add(''''+Trim(Etel_h.Text)+'''')    else val.Add('''''');
  if Length(Etel_w.Text)>0    then val.Add(''''+Trim(Etel_w.Text)+'''')    else val.Add('''''');
  if Length(Eemail.Text)>0    then val.Add(''''+Trim(Eemail.Text)+'''')    else val.Add('''''');
  if (chsfamily.Checked)      then val.Add('1')                            else val.Add('0');
  if Length(Ehcountry.Text)>0 then val.Add(''''+Trim(Ehcountry.Text)+'''') else val.Add('''''');
  if Length(Ehobl.Text)>0     then val.Add(''''+Trim(Ehobl.Text+''''))     else val.Add('''''');
                                   val.Add(IntToStr(cbhtype.ItemIndex));
  if Length(Ehtype_e.Text)>0  then val.Add(''''+Trim(Ehtype_e.Text)+'''')  else val.Add('''''');
  if Length(Ehstreet.Text)>0  then val.Add(''''+Trim(Ehstreet.Text)+'''')  else val.Add('''''');
  if Length(Ehhome.Text)>0    then val.Add(''''+Trim(Ehhome.Text)+'''')    else val.Add('''''');
  if Length(Ehkorp.Text)>0    then val.Add(''''+Trim(Ehkorp.Text)+'''')    else val.Add('''''');
  if Length(Ehkv.Text)>0      then val.Add(''''+Trim(Ehkv.Text)+'''')      else val.Add('''''');
  if Length(Ehindx.Text)>0    then val.Add(''''+Trim(Ehindx.Text)+'''')    else val.Add('''''');
                                   val.Add(''''+DateTimeToStr(Ehdb.Date)+'''');
                                   val.Add(''''+DateTimeToStr(Ehde.Date)+'''');
  if (cblold.Checked)         then val.Add('1')                            else val.Add('0');
  if Length(Elcountry.Text)>0 then val.Add(''''+Trim(Elcountry.Text)+'''') else val.Add('''''');
  if Length(Elobl.Text)>0     then val.Add(''''+Trim(Elobl.Text)+'''')     else val.Add('''''');
                                   val.Add(IntToStr(cbltype.ItemIndex));
  if Length(Eltype_e.Text)>0  then val.Add(''''+Trim(Eltype_e.Text)+'''')  else val.Add('''''');
  if Length(Elstreet.Text)>0  then val.Add(''''+Trim(Elstreet.Text+''''))  else val.Add('''''');
  if Length(Elhome.Text)>0    then val.Add(''''+Trim(Elhome.Text+''''))    else val.Add('''''');
  if Length(Elkorp.Text)>0    then val.Add(''''+Trim(Elkorp.Text)+'''')    else val.Add('''''');
  if Length(Elkv.Text)>0      then val.Add(''''+Trim(Elkv.Text)+'''')      else val.Add('''''');
  if Length(Elindx.Text)>0    then val.Add(''''+Trim(Elindx.Text)+'''')    else val.Add('''''');
                                   val.Add(''''+DateTimeToStr(Eldb.Date)+'''');
  val.Add(IntToStr(rgwrk.ItemIndex));
  if (rgwrk.ItemIndex = 0) then val.Add(''''+Trim(Ewrk0.Text)+'''') else
  if (rgwrk.ItemIndex = 1) then val.Add(''''+Trim(Ewrk1.Text)+'''') else val.Add('''''');
  if Length(Eprim.Text)>0  then val.Add(''''+Trim(Eprim.Text)+'''')     else val.Add('''''');
  Result := 0;
  if fData.CustomUpd('TB_UHUM',rec,val,' ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))')=1 then
  begin
   MessageBox(fUShum.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
   fData.Transaction.Active := FALSE;
   Result := 1;
  end;
 except
  MessageBox(fUShum.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
  fData.Transaction.Active := FALSE;
  Result := 1;
 end;
end;

procedure TfUShum.FormShow(Sender: TObject);
begin
 if (OpenMode = 1) then
 if fData.GetCount('TB_UHUM','ID','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))')>0 then
 try
  rgSex.ItemIndex := fData.CustomSelI('TB_UHUM','SEX','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Efam.Text       := fData.CustomSelS('TB_UHUM','FAM','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ename.Text      := fData.CustomSelS('TB_UHUM','NAME','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Esname.Text     := fData.CustomSelS('TB_UHUM','SNAME','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ebdate.DateTime := StrToDateTime(fData.CustomSelS('TB_UHUM','BDATE','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))'));
  Ebplace.Text    := fData.CustomSelS('TB_UHUM','BPLACE','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ebcountry.Text  := fData.CustomSelS('TB_UHUM','BCOUNTRY','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Eps.Text        := fData.CustomSelS('TB_UHUM','PS','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Epnum.Text      := fData.CustomSelS('TB_UHUM','PNUM','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Epplace.Text    := fData.CustomSelS('TB_UHUM','PLACE','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Epdate.DateTime := StrToDateTime(fData.CustomSelS('TB_UHUM','PDATE','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))'));
  Epid.Text       := fData.CustomSelS('TB_UHUM','PID','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  case fData.CustomSelI('TB_UHUM','FM','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))') of
   0: chsfamily.Checked := FALSE;
   1: chsfamily.Checked := TRUE;
  end;
  Ehcountry.Text  := fData.CustomSelS('TB_UHUM','HCOUNTRY','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ehobl.Text      := fData.CustomSelS('TB_UHUM','HOBL','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  cbhtype.ItemIndex := fData.CustomSelI('TB_UHUM','HTYPE','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ehtype_e.Text   := fData.CustomSelS('TB_UHUM','HTYPE_E','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ehstreet.Text   := fData.CustomSelS('TB_UHUM','HSTREET','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ehhome.Text     := fData.CustomSelS('TB_UHUM','HHOME','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ehkorp.Text     := fData.CustomSelS('TB_UHUM','HKORP','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ehkv.Text       := fData.CustomSelS('TB_UHUM','HKV','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ehindx.Text     := fData.CustomSelS('TB_UHUM','HINDX','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Ehdb.DateTime   := StrToDateTime(fData.CustomSelS('TB_UHUM','HDB','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))'));
  Ehde.DateTime   := StrToDateTime(fData.CustomSelS('TB_UHUM','HDe','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))'));
  case fData.CustomSelI('TB_UHUM','LOLD','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))') of
   0: cblold.Checked := FALSE;
   1: cblold.Checked := TRUE;
  end;
  Elcountry.Text  := fData.CustomSelS('TB_UHUM','LCOUNTRY','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Elobl.Text      := fData.CustomSelS('TB_UHUM','LOBL','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  cbltype.ItemIndex := fData.CustomSelI('TB_UHUM','LTYPE','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Eltype_e.Text   := fData.CustomSelS('TB_UHUM','LTYPE_E','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Elstreet.Text   := fData.CustomSelS('TB_UHUM','LSTREET','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Elhome.Text     := fData.CustomSelS('TB_UHUM','LHOME','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Elkorp.Text     := fData.CustomSelS('TB_UHUM','LKORP','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Elkv.Text       := fData.CustomSelS('TB_UHUM','LKV','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Elindx.Text     := fData.CustomSelS('TB_UHUM','LINDX','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Eldb.DateTime   := StrToDateTime(fData.CustomSelS('TB_UHUM','LDB','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))'));
  rgwrk.ItemIndex := fData.CustomSelI('TB_UHUM','WRK','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  case rgwrk.ItemIndex of
   0: Ewrk0.Text := fData.CustomSelS('TB_UHUM','WRK_E','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
   1: Ewrk1.Text := fData.CustomSelS('TB_UHUM','WRK_E','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  end;
  Etel_m.Text := fData.CustomSelS('TB_UHUM','TEL_M','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Etel_h.Text := fData.CustomSelS('TB_UHUM','TEL_H','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Etel_w.Text := fData.CustomSelS('TB_UHUM','TEL_W','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  Eemail.Text := fData.CustomSelS('TB_UHUM','EMAIL','where ((USR='+IntToStr(UserID)+')and(SFAMILY='+IntToStr(Family)+'))');
  EPrim.Text   := fData.CustomSelS('TB_UWORK','PRIM','where USR='+IntToStr(UserID));
 except
  MessageBox(fUShum.Handle,'При чтении данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfUShum.chsfamilyClick(Sender: TObject);
begin
 if (chsfamily.Checked) then
 begin
  Etel_h.Text := fData.CustomSelS('TB_USER','TEL_H',' where (ID='+IntToStr(UserID)+')AND(TUSER='+IntToStr(UserType)+')');
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
 end else begin
  Etel_h.Text    := '';
  Ehcountry.Text := '';
  Ehobl.Text     := '';
  cbhtype.ItemIndex := 0;
  Ehtype_e.Text  := '';
  Ehstreet.Text  := '';
  Ehhome.Text    := '';
  Ehkorp.Text    := '';
  Ehkv.Text      := '';
  Ehindx.Text    := '0';
  cblold.Checked := FALSE;
  Elcountry.Text := '';
  Elobl.Text     := '';
  cbltype.ItemIndex := 0;
  Eltype_e.Text  := '';
  Elhome.Text    := '';
  Elkorp.Text    := '';
  Elkv.Text      := '';
  Elindx.Text    := '0';
 end;
end;

end.
