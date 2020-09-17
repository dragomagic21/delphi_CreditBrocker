unit uUWork;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfUWork = class(TForm)
    rgtyp: TRadioGroup;
    rgDolg: TRadioGroup;
    chPR: TCheckBox;
    chTR: TCheckBox;
    chFN: TCheckBox;
    chUR: TCheckBox;
    chST: TCheckBox;
    chPS: TCheckBox;
    chBD: TCheckBox;
    chTU: TCheckBox;
    chNK: TCheckBox;
    chTV: TCheckBox;
    chMD: TCheckBox;
    chGS: TCheckBox;
    chMR: TCheckBox;
    chEL: TCheckBox;
    Ladr: TLabel;
    Ltel: TLabel;
    Lname: TLabel;
    Lwcount: TLabel;
    Lwb: TLabel;
    Lofc: TLabel;
    Lwbook: TLabel;
    Edolg3: TEdit;
    Edolg4: TEdit;
    Edolg5: TEdit;
    Ld: TLabel;
    Eadr: TEdit;
    Etel: TEdit;
    Ename: TEdit;
    Ewcount: TEdit;
    Ewb: TDateTimePicker;
    cbofc: TComboBox;
    cbwbook: TComboBox;
    Etv_e: TEdit;
    Egs_e: TEdit;
    Eel_e: TEdit;
    Bevel1: TBevel;
    bOk: TBitBtn;
    bCancel: TBitBtn;
    Bevel2: TBevel;
    Bevel3: TBevel;
    EPrim: TMemo;
    Lprim: TLabel;
    procedure rgDolgClick(Sender: TObject);
    procedure chTVClick(Sender: TObject);
    procedure chGSClick(Sender: TObject);
    procedure chELClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function Add(): byte;
    function Update(): byte;
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    UserID  : integer;
    OpenMode: integer;
    tmp     : TRadioGroup;
    bSave   : TSpeedButton;
    { Public declarations }
  end;

var
  fUWork: TfUWork;

implementation

uses uData;

{$R *.dfm}

procedure TfUWork.rgDolgClick(Sender: TObject);
begin
 if (rgDolg.ItemIndex = 3) then
 begin
  Edolg3.Enabled := TRUE;
  Edolg4.Enabled := FALSE;
  Edolg4.Text    := '';
  Edolg5.Enabled := FALSE;
  Edolg5.Text    := '';
 end else
 if (rgDolg.ItemIndex = 4) then
 begin
  Edolg3.Enabled := FALSE;
  Edolg3.Text    := '';
  Edolg4.Enabled := TRUE;
  Edolg5.Enabled := FALSE;
  Edolg5.Text    := '';
 end else
 if (rgDolg.ItemIndex = 5) then
 begin
  Edolg3.Enabled := FALSE;
  Edolg3.Text    := '';
  Edolg4.Enabled := FALSE;
  Edolg4.Text    := '';
  Edolg5.Enabled := TRUE;
 end else
 begin
  Edolg3.Enabled := FALSE;
  Edolg5.Text    := '';
  Edolg4.Enabled := FALSE;
  Edolg4.Text    := '';
  Edolg5.Enabled := FALSE;
  Edolg5.Text    := '';
 end;
end;

procedure TfUWork.chTVClick(Sender: TObject);
begin
 if (chTV.Checked) then Etv_e.Enabled := TRUE else Etv_e.Enabled := FALSE;
end;

procedure TfUWork.chGSClick(Sender: TObject);
begin
 if (chGS.Checked) then Egs_e.Enabled := TRUE else Egs_e.Enabled := FALSE;
end;

procedure TfUWork.chELClick(Sender: TObject);
begin
 if (chEL.Checked) then Eel_e.Enabled := TRUE else Eel_e.Enabled := FALSE;
end;

procedure TfUWork.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
with params do
   ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

procedure TfUWork.bCancelClick(Sender: TObject);
begin
 if (OpenMode = 0) then
 begin
  tmp.ItemIndex := 2;
  tmp.OnClick(self);
 end;
 Close();
end;

procedure TfUWork.bOkClick(Sender: TObject);
begin
 case OpenMode of
  0: begin
      Add();
      bSave.OnClick(self);
     end;
  1: Update();
 end;
end;

function TfUWork.Add: byte;
var rec,val: string;
begin
 try
  rec:=''; val:='';
  rec:='usr,typ,dolg,dolg_e,pr,tr,fn,ur,st,ps,bd,tu,nk,tv,tv_e,md,gs,gs_e,mr,el,el_e,name,adr,tel,wcount,wb,ofc,wbook,prim';
  val:=val+IntToStr(UserID)+',';
  val:=val+IntToStr(rgtyp.ItemIndex)+',';
  val:=val+IntToStr(rgDolg.ItemIndex)+',';
  if (rgDolg.ItemIndex = 3) then val:=val+''''+Trim(Edolg3.Text)+''''+',' else
  if (rgDolg.ItemIndex = 4) then val:=val+''''+Trim(Edolg4.Text)+''''+',' else
  if (rgDolg.ItemIndex = 5) then val:=val+''''+Trim(Edolg5.Text)+''''+',' else
      val:=val+''''''+',';
  if (chPR.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chTR.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chFN.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chUR.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chST.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chPS.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chBD.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chTU.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chNK.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chTV.Checked) then
  begin
   val:=val+'1'+',';
   val:=val+''''+Trim(Etv_e.Text)+''''+',';
  end else val:=val+'0'+','+''''''+',';
  if (chMD.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chGS.Checked) then
  begin
   val:=val+'1'+',';
   val:=val+''''+Trim(Egs_e.Text)+''''+',';
  end else val:=val+'0'+','+''''''+',';
  if (chMR.Checked) then val:=val+'1'+',' else val:=val+'0'+',';
  if (chEL.Checked) then
  begin
   val:=val+'1'+',';
   val:=val+''''+Trim(Eel_e.Text)+''''+',';
  end else val:=val+'0'+','+''''''+',';
  if Length(Ename.Text)>0 then val:=val+''''+Trim(Ename.Text)+''''+',' else val:=val+''''''+',';
  if Length(Eadr.Text)>0  then val:=val+''''+Trim(Eadr.Text)+''''+',' else val:=val+''''''+',';
  if Length(Etel.Text)>0  then val:=val+''''+Trim(Etel.Text)+''''+',' else val:=val+''''''+',';
  if Length(Ewcount.Text)>0 then val:=val+''''+Trim(Ewcount.Text)+''''+',' else val:=val+'0'+',';
  val:=val+''''+DateTimeToStr(Ewb.DateTime)+''''+',';
  val:=val+IntToStr(cbofc.ItemIndex)+',';
  val:=val+IntToStr(cbwbook.ItemIndex)+',';
  if Length(EPrim.Text)>0  then val:=val+''''+Trim(EPrim.Text)+'''' else val:=val+'''''';
  Result := 0;
  if fData.CustomAdd('TB_UWORK',rec,val) = 1 then
  begin
   Result := 1;
   MessageBox(fUWork.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
  end;
 except
  fData.Transaction.Rollback;
  fData.Transaction.Active := FALSE;
  MessageBox(fUWork.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
  Result:=1;
 end;
end;

function TfUWork.Update: byte;
var rec,val: TStringList;
begin
 try
  rec:=TStringList.Create; rec.Clear;
  val:=TStringList.Create; val.Clear;
  rec.LoadFromFile('BASE\ruwork.txt');
  val.Add(IntToStr(rgtyp.ItemIndex));
  val.Add(IntToStr(rgDolg.ItemIndex));
  if (rgDolg.ItemIndex = 3) then val.Add(''''+Trim(Edolg3.Text)+'''') else
  if (rgDolg.ItemIndex = 4) then val.Add(''''+Trim(Edolg4.Text)+'''') else
  if (rgDolg.ItemIndex = 5) then val.Add(''''+Trim(Edolg5.Text)+'''') else
      val.Add('''''');
  if (chPR.Checked) then val.Add('1') else val.Add('0');
  if (chTR.Checked) then val.Add('1') else val.Add('0');
  if (chFN.Checked) then val.Add('1') else val.Add('0');
  if (chUR.Checked) then val.Add('1') else val.Add('0');
  if (chST.Checked) then val.Add('1') else val.Add('0');
  if (chPS.Checked) then val.Add('1') else val.Add('0');
  if (chBD.Checked) then val.Add('1') else val.Add('0');
  if (chTU.Checked) then val.Add('1') else val.Add('0');
  if (chNK.Checked) then val.Add('1') else val.Add('0');
  if (chTV.Checked) then
  begin
   val.Add('1');
   val.Add(''''+Trim(Etv_e.Text)+'''');
  end else begin val.Add('0'); val.Add(''''''); end;
  if (chMD.Checked) then val.Add('1') else val.Add('0');
  if (chGS.Checked) then
  begin
   val.Add('1');
   val.Add(''''+Trim(Egs_e.Text)+'''');
  end else begin val.Add('0'); val.Add(''''''); end;
  if (chMR.Checked) then val.Add('1') else val.Add('0');
  if (chEL.Checked) then
  begin
   val.Add('1');
   val.Add(''''+Trim(Eel_e.Text)+'''');
  end else begin val.Add('0'); val.Add(''''''); end;
  if Length(Ename.Text)>0 then val.Add(''''+Trim(Ename.Text)+'''') else val.Add('''''');
  if Length(Eadr.Text)>0  then val.Add(''''+Trim(Eadr.Text)+'''') else val.Add('''''');
  if Length(Etel.Text)>0  then val.Add(''''+Trim(Etel.Text)+'''') else val.Add('''''');
  if Length(Ewcount.Text)>0 then val.Add(''''+Trim(Ewcount.Text)+'''') else val.Add('0');
  val.Add(''''+DateTimeToStr(Ewb.DateTime)+'''');
  val.Add(IntToStr(cbofc.ItemIndex));
  val.Add(IntToStr(cbwbook.ItemIndex));
  if Length(EPrim.Text)>0  then val.Add(''''+Trim(EPrim.Text)+'''') else val.Add('''''');
  Result := 0;
  if fData.CustomUpd('TB_UWORK',rec,val,' USR='+IntToStr(UserID))=1 then
  begin
   Result := 1;
   MessageBox(fUWork.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
  end;
  rec.Free; val.Free;
  Result := 0;
 except
  MessageBox(fUWork.Handle,'Во время сохранения данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
  fData.Transaction.Rollback;
  fData.Transaction.Active := FALSE;
  if Assigned(rec) then rec.Free;
  if Assigned(val) then rec.Free;
  Result := 1;
 end;
end;

procedure TfUWork.FormShow(Sender: TObject);
begin
 if (OpenMode = 1) then
 try
  rgtyp.ItemIndex := fData.CustomSelI('TB_UWORK','TYP','where USR='+IntToStr(UserID));
  rgDolg.ItemIndex:= fData.CustomSelI('TB_UWORK','DOLG','where USR='+IntToStr(UserID));
  case rgDolg.ItemIndex of
   3: Edolg3.Text := fData.CustomSelS('TB_UWORK','DOLG_E','where USR='+IntToStr(UserID));
   4: Edolg4.Text := fData.CustomSelS('TB_UWORK','DOLG_E','where USR='+IntToStr(UserID));
   5: Edolg5.Text := fData.CustomSelS('TB_UWORK','DOLG_E','where USR='+IntToStr(UserID));
  end;
  case fData.CustomSelI('TB_UWORK','PR','where USR='+IntToStr(UserID)) of
   0: chPR.Checked := FALSE;
   1: chPR.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','TR','where USR='+IntToStr(UserID)) of
   0: chTR.Checked := FALSE;
   1: chTR.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','FN','where USR='+IntToStr(UserID)) of
   0: chFN.Checked := FALSE;
   1: chFN.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','UR','where USR='+IntToStr(UserID)) of
   0: chUR.Checked := FALSE;
   1: chUR.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','ST','where USR='+IntToStr(UserID)) of
   0: chST.Checked := FALSE;
   1: chST.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','PS','where USR='+IntToStr(UserID)) of
   0: chPS.Checked := FALSE;
   1: chPS.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','BD','where USR='+IntToStr(UserID)) of
   0: chBD.Checked := FALSE;
   1: chBD.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','TU','where USR='+IntToStr(UserID)) of
   0: chTU.Checked := FALSE;
   1: chTU.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','NK','where USR='+IntToStr(UserID)) of
   0: chNK.Checked := FALSE;
   1: chNK.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','TV','where USR='+IntToStr(UserID)) of
   0: chTV.Checked := FALSE;
   1: begin
       chTV.Checked := TRUE;
       Etv_e.Text   := fData.CustomSelS('TB_UWORK','TV_E','where USR='+IntToStr(UserID));
      end;
  end;
  case fData.CustomSelI('TB_UWORK','MD','where USR='+IntToStr(UserID)) of
   0: chMD.Checked := FALSE;
   1: chMD.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','GS','where USR='+IntToStr(UserID)) of
   0: chGS.Checked := FALSE;
   1: begin
       chGS.Checked := TRUE;
       Egs_e.Text   := fData.CustomSelS('TB_UWORK','GS_E','where USR='+IntToStr(UserID));
      end;
  end;
  case fData.CustomSelI('TB_UWORK','MR','where USR='+IntToStr(UserID)) of
   0: chMR.Checked := FALSE;
   1: chMR.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_UWORK','EL','where USR='+IntToStr(UserID)) of
   0: chEL.Checked := FALSE;
   1: begin
       chEL.Checked := TRUE;
       Eel_e.Text   := fData.CustomSelS('TB_UWORK','EL_E','where USR='+IntToStr(UserID));
      end;
  end;
  Ename.Text   := fData.CustomSelS('TB_UWORK','NAME','where USR='+IntToStr(UserID));
  Eadr.Text    := fData.CustomSelS('TB_UWORK','ADR','where USR='+IntToStr(UserID));
  Etel.Text    := fData.CustomSelS('TB_UWORK','TEL','where USR='+IntToStr(UserID));
  Ewcount.Text := fData.CustomSelS('TB_UWORK','WCOUNT','where USR='+IntToStr(UserID));
  Ewb.DateTime := StrToDateTime(fData.CustomSelS('TB_UWORK','WB','where USR='+IntToStr(UserID)));
  cbofc.ItemIndex := fData.CustomSelI('TB_UWORK','OFC','where USR='+IntToStr(UserID));
  cbwbook.ItemIndex := fData.CustomSelI('TB_UWORK','WBOOK','where USR='+IntToStr(UserID));
  EPrim.Text   := fData.CustomSelS('TB_UWORK','PRIM','where USR='+IntToStr(UserID));
 except
  MessageBox(fUWork.Handle,'При чтении данных произошла ошибка! Попробуйте повторить позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

end.
