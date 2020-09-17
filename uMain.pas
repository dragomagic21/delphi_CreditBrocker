unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, Buttons, StdCtrls, OleServer, Word2000, IniFiles,
  ExtCtrls, jpeg, ComObj, Grids;

type
  TfMain = class(TForm)
    PC: TPageControl;
    Client: TTabSheet;
    Bank: TTabSheet;
    Options: TTabSheet;
    ImageList1: TImageList;
    pcBanks: TPageControl;
    BAuto: TTabSheet;
    BBuild: TTabSheet;
    BEarth: TTabSheet;
    BZalog: TTabSheet;
    BNon: TTabSheet;
    BAutoL: TLabel;
    lbBAuto: TListBox;
    bBAutoAdd: TSpeedButton;
    bBAutoEdit: TSpeedButton;
    bBAutoDel: TSpeedButton;
    bBAutoPrint: TSpeedButton;
    BZalogL: TLabel;
    lbBZalog: TListBox;
    bBZalogAdd: TSpeedButton;
    bBZalogEdit: TSpeedButton;
    bBZalogDel: TSpeedButton;
    bBZalogPrint: TSpeedButton;
    BBuildL: TLabel;
    lbBBuild: TListBox;
    bBBuildAdd: TSpeedButton;
    bBBuildEdit: TSpeedButton;
    bBBuildDel: TSpeedButton;
    bBBuildPrint: TSpeedButton;
    BEarthL: TLabel;
    lbBEarth: TListBox;
    bBEarthAdd: TSpeedButton;
    bBEarthEdit: TSpeedButton;
    bBEarthDel: TSpeedButton;
    bBEarthPrint: TSpeedButton;
    BNonL: TLabel;
    lbBNon: TListBox;
    bBNonAdd: TSpeedButton;
    bBNonEdit: TSpeedButton;
    bBNonDel: TSpeedButton;
    bBNonPrint: TSpeedButton;
    WordA: TWordApplication;
    upc: TPageControl;
    uAuto: TTabSheet;
    bUAadd: TSpeedButton;
    bUAEdit: TSpeedButton;
    bUAdel: TSpeedButton;
    bUAprint: TSpeedButton;
    lbUA: TListBox;
    uBuild: TTabSheet;
    bUBadd: TSpeedButton;
    bUBedit: TSpeedButton;
    bUBdel: TSpeedButton;
    bUBprint: TSpeedButton;
    lbUB: TListBox;
    uEarth: TTabSheet;
    bUEadd: TSpeedButton;
    bUEedit: TSpeedButton;
    bUEdel: TSpeedButton;
    bUEprint: TSpeedButton;
    lbUE: TListBox;
    uZalog: TTabSheet;
    bUZadd: TSpeedButton;
    bUZedit: TSpeedButton;
    bUZdel: TSpeedButton;
    bUZprint: TSpeedButton;
    lbUZ: TListBox;
    uNon: TTabSheet;
    bUNadd: TSpeedButton;
    bUNedit: TSpeedButton;
    bUNdel: TSpeedButton;
    bUNprint: TSpeedButton;
    lbUN: TListBox;
    bUAlock: TSpeedButton;
    bUBlock: TSpeedButton;
    bUElock: TSpeedButton;
    bUZlock: TSpeedButton;
    bUNlock: TSpeedButton;
    lbUNbank: TListBox;
    Label6: TLabel;
    Label7: TLabel;
    lbUZbank: TListBox;
    Label8: TLabel;
    lbUEbank: TListBox;
    Label9: TLabel;
    lbUBbank: TListBox;
    Label10: TLabel;
    lbUAbank: TListBox;
    bUAbv: TSpeedButton;
    bUAbp: TSpeedButton;
    bFindBankA: TSpeedButton;
    LWarning: TLabel;
    EPath: TEdit;
    Euser: TEdit;
    Epass: TEdit;
    Lpath: TLabel;
    Luser: TLabel;
    Lpass: TLabel;
    opd: TOpenDialog;
    bOpen: TBitBtn;
    Bsave: TBitBtn;
    Lwarning2: TLabel;
    Bevel1: TBevel;
    bUBbv: TSpeedButton;
    bUBbp: TSpeedButton;
    bFindBankB: TSpeedButton;
    bUEbv: TSpeedButton;
    bUEbp: TSpeedButton;
    bFindBankE: TSpeedButton;
    bUZbv: TSpeedButton;
    bUZbp: TSpeedButton;
    bFindBankZ: TSpeedButton;
    bUNbv: TSpeedButton;
    bUNbp: TSpeedButton;
    bFindBankN: TSpeedButton;
    Image1: TImage;
    LCopyRights: TLabel;
    Lauthor: TLabel;
    Lcremeil: TLabel;
    rguN: TRadioGroup;
    rguA: TRadioGroup;
    rguB: TRadioGroup;
    rguE: TRadioGroup;
    rguZ: TRadioGroup;
    bUNExport: TSpeedButton;
    SaveD: TSaveDialog;
    bUZExport: TSpeedButton;
    bUEExport: TSpeedButton;
    bUBExport: TSpeedButton;
    bUAExport: TSpeedButton;
    bBAExport: TSpeedButton;
    bBBExport: TSpeedButton;
    bBEExport: TSpeedButton;
    bBZExport: TSpeedButton;
    bBNExport: TSpeedButton;
    bImport: TSpeedButton;
    OpenD: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure bBAutoAddClick(Sender: TObject);
    procedure bBAutoEditClick(Sender: TObject);
    procedure BAutoShow(Sender: TObject);
    procedure BBuildShow(Sender: TObject);
    procedure BEarthShow(Sender: TObject);
    procedure BZalogShow(Sender: TObject);
    procedure BNonShow(Sender: TObject);
    procedure bBAutoPrintClick(Sender: TObject);
    procedure bBAutoDelClick(Sender: TObject);
    procedure bBBuildAddClick(Sender: TObject);
    procedure bBEarthAddClick(Sender: TObject);
    procedure bBZalogAddClick(Sender: TObject);
    procedure bBNonEditClick(Sender: TObject);
    procedure bBBuildDelClick(Sender: TObject);
    procedure bBEarthDelClick(Sender: TObject);
    procedure bBZalogDelClick(Sender: TObject);
    procedure bBNonDelClick(Sender: TObject);
    procedure bBBuildEditClick(Sender: TObject);
    procedure bBEarthEditClick(Sender: TObject);
    procedure bBZalogEditClick(Sender: TObject);
    procedure bBNonAddClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bUAaddClick(Sender: TObject);
    procedure uAutoShow(Sender: TObject);
    procedure uBuildShow(Sender: TObject);
    procedure uEarthShow(Sender: TObject);
    procedure uZalogShow(Sender: TObject);
    procedure uNonShow(Sender: TObject);
    procedure bUAEditClick(Sender: TObject);
    procedure bUAdelClick(Sender: TObject);
    procedure bUBaddClick(Sender: TObject);
    procedure bUEaddClick(Sender: TObject);
    procedure bUZaddClick(Sender: TObject);
    procedure bUNaddClick(Sender: TObject);
    procedure bUBeditClick(Sender: TObject);
    procedure bUEeditClick(Sender: TObject);
    procedure bUZeditClick(Sender: TObject);
    procedure bUNeditClick(Sender: TObject);
    procedure bUBdelClick(Sender: TObject);
    procedure bUEdelClick(Sender: TObject);
    procedure bUZdelClick(Sender: TObject);
    procedure bUNdelClick(Sender: TObject);
    procedure bOpenClick(Sender: TObject);
    procedure BsaveClick(Sender: TObject);
    procedure bFindBankAClick(Sender: TObject);
    procedure bFindBankBClick(Sender: TObject);
    procedure bFindBankEClick(Sender: TObject);
    procedure bFindBankZClick(Sender: TObject);
    procedure bFindBankNClick(Sender: TObject);
    procedure bUAbvClick(Sender: TObject);
    procedure bUBbvClick(Sender: TObject);
    procedure bUEbvClick(Sender: TObject);
    procedure bUZbvClick(Sender: TObject);
    procedure bUNbvClick(Sender: TObject);
    procedure bUNbpClick(Sender: TObject);
    procedure bUAlockClick(Sender: TObject);
    procedure bUBlockClick(Sender: TObject);
    procedure bUElockClick(Sender: TObject);
    procedure bUZlockClick(Sender: TObject);
    procedure bUNlockClick(Sender: TObject);
    procedure bUAprintClick(Sender: TObject);
    procedure bUBprintClick(Sender: TObject);
    procedure bUEprintClick(Sender: TObject);
    procedure bUZprintClick(Sender: TObject);
    procedure bUNprintClick(Sender: TObject);
    procedure uAutoEnter(Sender: TObject);
    procedure uBuildEnter(Sender: TObject);
    procedure bBBuildPrintClick(Sender: TObject);
    procedure bBEarthPrintClick(Sender: TObject);
    procedure bBZalogPrintClick(Sender: TObject);
    procedure bBNonPrintClick(Sender: TObject);
    procedure bUAbpClick(Sender: TObject);
    procedure bUBbpClick(Sender: TObject);
    procedure bUEbpClick(Sender: TObject);
    procedure bUZbpClick(Sender: TObject);
    procedure LauthorClick(Sender: TObject);
    procedure rguAClick(Sender: TObject);
    procedure rguBClick(Sender: TObject);
    procedure rguEClick(Sender: TObject);
    procedure rguZClick(Sender: TObject);
    procedure rguNClick(Sender: TObject);
    procedure uEarthEnter(Sender: TObject);
    procedure uZalogEnter(Sender: TObject);
    procedure uNonEnter(Sender: TObject);
    procedure lbUNClick(Sender: TObject);
    procedure lbUZClick(Sender: TObject);
    procedure lbUEClick(Sender: TObject);
    procedure lbUAClick(Sender: TObject);
    procedure lbUBClick(Sender: TObject);
    procedure bUNExportClick(Sender: TObject);
    procedure bUZExportClick(Sender: TObject);
    procedure bUEExportClick(Sender: TObject);
    procedure bUBExportClick(Sender: TObject);
    procedure bUAExportClick(Sender: TObject);
    procedure bBAExportClick(Sender: TObject);
    procedure bBBExportClick(Sender: TObject);
    procedure bBEExportClick(Sender: TObject);
    procedure bBZExportClick(Sender: TObject);
    procedure bBNExportClick(Sender: TObject);
    procedure bImportClick(Sender: TObject);
  private
    lvt: integer; ttt: array [0..9] of integer;
    { Private declarations }
    function CalcAge(brthdate: TDateTime): Integer;
    procedure Dogovor(uID: integer; STable: string);
    procedure UserPrint(UserID: integer; sTable: string);
    function UPrint(Table: string; Where: string; UID: integer; var tables, loctabs, vt: integer; var cur: OleVariant): byte;
    function UPrintPrepare(typ: string): byte;
    function Clearing(): byte;
    procedure TabDel(lev: integer; dats: array of integer);
  public
    { Public declarations }
    procedure BankPrint(Table: string; BankID: integer; sTable: string='');
  end;

var
  fMain: TfMain;

implementation

uses uData, uBAuto, uBankCreate, uBBuild, uBEarth, uBNon, uBZalog, uUAuto,
  uUBuild, uUEarth, uUNon, uUZalog, uUserCreate, uWait;

{$R *.dfm}

procedure TfMain.FormCreate(Sender: TObject);
begin
 PC.ActivePageIndex:=0;
 pcBanks.ActivePageIndex:=0;
 upc.ActivePageIndex:=0;
end;

procedure TfMain.bBAutoAddClick(Sender: TObject);
begin
 Application.CreateForm(TfBankCreate, fBankCreate);
 fBankCreate.TypeOpen := 0;
 fBankCreate.ShowModal;
end;

procedure TfMain.bBAutoEditClick(Sender: TObject);
begin
 Application.CreateForm(TfBAuto, fBAuto);
 fBAuto.BankID   := integer(lbBAuto.Items.Objects[lbBAuto.ItemIndex]);
 fBAuto.Caption  := 'Банк "'+lbBAuto.Items[lbBAuto.ItemIndex]+'". Авто.';
 fBAuto.Show;
end;

procedure TfMain.BAutoShow(Sender: TObject);
begin
 try
  if fData.FillListBox(lbBAuto,'TB_BANKAUTO')=2 then
  begin
   bBAutoEdit.Enabled  := FALSE;
   bBAutoDel.Enabled   := FALSE;
   bBAutoPrint.Enabled := FALSE;
   bBAExport.Enabled   := FALSE;
  end else
  begin
   bBAutoEdit.Enabled  := TRUE;
   bBAutoDel.Enabled   := TRUE;
   bBAutoPrint.Enabled := TRUE;
   bBAExport.Enabled   := TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.BBuildShow(Sender: TObject);
begin
 try
 if fData.FillListBox(lbBBuild,'TB_BANKBUILD')= 2 then
 begin
  bBBuildEdit.Enabled  := FALSE;
  bBBuildDel.Enabled   := FALSE;
  bBBuildPrint.Enabled := FALSE;
  bBBExport.Enabled   := FALSE;
 end else
 begin
  bBBuildEdit.Enabled  := TRUE;
  bBBuildDel.Enabled   := TRUE;
  bBBuildPrint.Enabled := TRUE;
  bBBExport.Enabled   := TRUE;
 end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end
end;

procedure TfMain.BEarthShow(Sender: TObject);
begin
 try
 if fData.FillListBox(lbBEarth,'TB_BANKEARTH')=2 then
 begin
  bBEarthEdit.Enabled  := FALSE;
  bBEarthDel.Enabled   := FALSE;
  bBEarthPrint.Enabled := FALSE;
  bBEExport.Enabled   := FALSE;
 end else
 begin
  bBEarthEdit.Enabled  := TRUE;
  bBEarthDel.Enabled   := TRUE;
  bBEarthPrint.Enabled := TRUE;
  bBEExport.Enabled   := TRUE;
 end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end
end;

procedure TfMain.BZalogShow(Sender: TObject);
begin
 try
 if fData.FillListBox(lbBZalog,'TB_BANKZALOG')=2 then
 begin
  bBZalogEdit.Enabled  := FALSE;
  bBZalogDel.Enabled   := FALSE;
  bBZalogPrint.Enabled := FALSE;
  bBZExport.Enabled   := FALSE;
 end else
 begin
  bBZalogEdit.Enabled  := TRUE;
  bBZalogDel.Enabled   := TRUE;
  bBZalogPrint.Enabled := TRUE;
  bBZExport.Enabled   := TRUE;
 end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end
end;

procedure TfMain.BNonShow(Sender: TObject);
begin
 try
 if fData.FillListBox(lbBNon,'TB_BANKNON')=2 then
 begin
  bBNonEdit.Enabled  := FALSE;
  bBNonDel.Enabled   := FALSE;
  bBNonPrint.Enabled := FALSE;
  bBNExport.Enabled   := FALSE;
 end else
 begin
  bBNonEdit.Enabled  := TRUE;
  bBNonDel.Enabled   := TRUE;
  bBNonPrint.Enabled := TRUE;
  bBNExport.Enabled   := TRUE;
 end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end
end;

procedure TfMain.bBAutoPrintClick(Sender: TObject);
begin
 BankPrint('TB_BANKAUTO',integer(lbBAuto.Items.Objects[lbBAuto.ItemIndex]),'TB_AUTO');
end;

procedure TfMain.bBAutoDelClick(Sender: TObject);
var FileName: string;
begin
 if (MessageBox(0,'Вы действительно хотите удалить текущий банк?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
 try
  FileName:=GetCurrentDir+'\Bank\Auto\'+fData.CustomSelS('TB_BANKAUTO','NAME',' where ID='+IntToStr(integer(lbBAuto.Items.Objects[lbBAuto.ItemIndex])))+'.doc';
  if FileExists(FileName) then DeleteFile(FileName);
  fData.CustomDel('TB_AUTO',' BANK='+IntToStr(integer(lbBAuto.Items.Objects[lbBAuto.ItemIndex])));
  fData.CustomDel('TB_BANKAUTO',' ID='+IntToStr(integer(lbBAuto.Items.Objects[lbBAuto.ItemIndex])));
  BAutoShow(self);
 except
  BAutoShow(self);
  MessageBox(0,'Произошла ошибка. Попробуйте повторить попытку позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bBBuildAddClick(Sender: TObject);
begin
 Application.CreateForm(TfBankCreate, fBankCreate);
 fBankCreate.TypeOpen := 1;
 fBankCreate.ShowModal;
end;

procedure TfMain.bBEarthAddClick(Sender: TObject);
begin
 Application.CreateForm(TfBankCreate, fBankCreate);
 fBankCreate.TypeOpen := 2;
 fBankCreate.ShowModal;
end;

procedure TfMain.bBZalogAddClick(Sender: TObject);
begin
 Application.CreateForm(TfBankCreate, fBankCreate);
 fBankCreate.TypeOpen := 3;
 fBankCreate.ShowModal;
end;

procedure TfMain.bBNonEditClick(Sender: TObject);
begin
 Application.CreateForm(TfBNon, fBNon);
 fBNon.BankID   := integer(lbBNon.Items.Objects[lbBNon.ItemIndex]);
 fBNon.Caption  := 'Банк "'+lbBNon.Items[lbBNon.ItemIndex]+'". Деньги без залога.';
 fBNon.Show;
end;

procedure TfMain.bBBuildDelClick(Sender: TObject);
var FileName: string;
begin
 if (MessageBox(0,'Вы действительно хотите удалить текущий банк?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
 try
  FileName:=GetCurrentDir+'\Bank\Build\'+fData.CustomSelS('TB_BANKBUILD','NAME',' where ID='+IntToStr(integer(lbBBuild.Items.Objects[lbBBuild.ItemIndex])))+'.doc';
  if FileExists(FileName) then DeleteFile(FileName);
  fData.CustomDel('TB_BANKBUILD',' ID='+IntToStr(integer(lbBBuild.Items.Objects[lbBBuild.ItemIndex])));
  BBuildShow(self);
 except
  BBuildShow(self);
  MessageBox(0,'Произошла ошибка. Попробуйте повторить попытку позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bBEarthDelClick(Sender: TObject);
var FileName: string;
begin
 if (MessageBox(0,'Вы действительно хотите удалить текущий банк?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
 try
  FileName:=GetCurrentDir+'\Bank\Earth\'+fData.CustomSelS('TB_BANKEARTH','NAME',' where ID='+IntToStr(integer(lbBEarth.Items.Objects[lbBEarth.ItemIndex])))+'.doc';
  if FileExists(FileName) then DeleteFile(FileName);
  fData.CustomDel('TB_BANKEARTH',' ID='+IntToStr(integer(lbBEarth.Items.Objects[lbBEarth.ItemIndex])));
  BEarthShow(self);
 except
  BEarthShow(self);
  MessageBox(0,'Произошла ошибка. Попробуйте повторить попытку позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bBZalogDelClick(Sender: TObject);
var FileName: string;
begin
 if (MessageBox(0,'Вы действительно хотите удалить текущий банк?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
 try
  FileName:=GetCurrentDir+'\Bank\Zalog\'+fData.CustomSelS('TB_BANKZALOG','NAME',' where ID='+IntToStr(integer(lbBZalog.Items.Objects[lbBZalog.ItemIndex])))+'.doc';
  if FileExists(FileName) then DeleteFile(FileName);
  fData.CustomDel('TB_BANKZALOG',' ID='+IntToStr(integer(lbBZalog.Items.Objects[lbBZalog.ItemIndex])));
  BZalogShow(self);
 except
  BZalogShow(self);
  MessageBox(0,'Произошла ошибка. Попробуйте повторить попытку позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bBNonDelClick(Sender: TObject);
var FileName: string;
begin
 if (MessageBox(0,'Вы действительно хотите удалить текущий банк?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
 try
  FileName:=GetCurrentDir+'\Bank\Non\'+fData.CustomSelS('TB_BANKNON','NAME',' where ID='+IntToStr(integer(lbBNon.Items.Objects[lbBNon.ItemIndex])))+'.doc';
  if FileExists(FileName) then DeleteFile(FileName);
  fData.CustomDel('TB_BANKNON',' ID='+IntToStr(integer(lbBNon.Items.Objects[lbBNon.ItemIndex])));
  BNonShow(self);
 except
  BNonShow(self);
  MessageBox(0,'Произошла ошибка. Попробуйте повторить попытку позднее.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bBBuildEditClick(Sender: TObject);
begin
 Application.CreateForm(TfBBuild, fBBuild);
 fBBuild.BankID   := integer(lbBBuild.Items.Objects[lbBBuild.ItemIndex]);
 fBBuild.Caption  := 'Банк "'+lbBBuild.Items[lbBBuild.ItemIndex]+'". Недвижимость.';
 fBBuild.Show;
end;

procedure TfMain.bBEarthEditClick(Sender: TObject);
begin
 Application.CreateForm(TfBEarth, fBEarth);
 fBEarth.BankID   := integer(lbBEarth.Items.Objects[lbBEarth.ItemIndex]);
 fBEarth.Caption  := 'Банк "'+lbBEarth.Items[lbBEarth.ItemIndex]+'". Земля.';
 fBEarth.Show;
end;

procedure TfMain.bBZalogEditClick(Sender: TObject);
begin
 Application.CreateForm(TfBZalog, fBZalog);
 fBZalog.BankID   := integer(lbBZalog.Items.Objects[lbBZalog.ItemIndex]);
 fBZalog.Caption  := 'Банк "'+lbBZalog.Items[lbBZalog.ItemIndex]+'". Деньги под залог.';
 fBZalog.Show;
end;

procedure TfMain.bBNonAddClick(Sender: TObject);
begin
 Application.CreateForm(TfBankCreate, fBankCreate);
 fBankCreate.TypeOpen := 4;
 fBankCreate.ShowModal;
end;

procedure TfMain.BitBtn1Click(Sender: TObject);
begin
 Application.CreateForm(TfBBuild, fBBuild);
 fBBuild.Show;
end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 WordA.Disconnect;
end;

procedure TfMain.bUAaddClick(Sender: TObject);
begin
 Application.CreateForm(TfUserCreate, fUserCreate);
 fUserCreate.TypeOpen:=0;
 fUserCreate.ShowModal();
end;

procedure TfMain.uAutoShow(Sender: TObject);
var Order: string;
begin
 try
  case rguA.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUA,'TB_USER','where TUSER=0',Order)=2 then
  begin
   bUAEdit.Enabled  := FALSE;
   bUAdel.Enabled   := FALSE;
   bUAprint.Enabled := FALSE;
   bUAlock.Enabled  := FALSE;
   bFindBankA.Enabled:=FALSE;
   bUAExport.Enabled :=FALSE;
  end else
  begin
   bUAEdit.Enabled  := TRUE;
   bUAdel.Enabled   := TRUE;
   bUAprint.Enabled := TRUE;
   bUAlock.Enabled  := TRUE;
   bFindBankA.Enabled:=TRUE;
   bUAExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.uBuildShow(Sender: TObject);
var Order: string;
begin
 try
  case rguB.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUB,'TB_USER','where TUSER=1',Order)=2 then
  begin
   bUBEdit.Enabled  := FALSE;
   bUBdel.Enabled   := FALSE;
   bUBprint.Enabled := FALSE;
   bUBlock.Enabled  := FALSE;
   bFindBankB.Enabled:=FALSE;
   bUBExport.Enabled :=FALSE;
  end else
  begin
   bUBEdit.Enabled  := TRUE;
   bUBdel.Enabled   := TRUE;
   bUBprint.Enabled := TRUE;
   bUBlock.Enabled  := TRUE;
   bFindBankB.Enabled:=TRUE;
   bUBExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.uEarthShow(Sender: TObject);
var Order: string;
begin
 try
  case rguE.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUE,'TB_USER','where TUSER=2',Order)=2 then
  begin
   bUEEdit.Enabled  := FALSE;
   bUEdel.Enabled   := FALSE;
   bUEprint.Enabled := FALSE;
   bUElock.Enabled  := FALSE;
   bFindBankE.Enabled:=FALSE;
   bUEExport.Enabled :=FALSE;
  end else
  begin
   bUEEdit.Enabled  := TRUE;
   bUEdel.Enabled   := TRUE;
   bUEprint.Enabled := TRUE;
   bUElock.Enabled  := TRUE;
   bFindBankE.Enabled:=TRUE;
   bUEExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.uZalogShow(Sender: TObject);
var Order: string;
begin
 try
  case rguZ.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUZ,'TB_USER','where TUSER=3',Order)=2 then
  begin
   bUZEdit.Enabled  := FALSE;
   bUZdel.Enabled   := FALSE;
   bUZprint.Enabled := FALSE;
   bUZlock.Enabled  := FALSE;
   bFindBankZ.Enabled:=FALSE;
   bUZExport.Enabled :=FALSE;
  end else
  begin
   bUZEdit.Enabled  := TRUE;
   bUZdel.Enabled   := TRUE;
   bUZprint.Enabled := TRUE;
   bUZlock.Enabled  := TRUE;
   bFindBankZ.Enabled:=TRUE;
   bUZExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.uNonShow(Sender: TObject);
var Order: string;
begin
 try
  case rguN.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUN,'TB_USER','where TUSER=4',Order)=2 then
  begin
   bUNEdit.Enabled  := FALSE;
   bUNdel.Enabled   := FALSE;
   bUNprint.Enabled := FALSE;
   bUNlock.Enabled  := FALSE;
   bFindBankN.Enabled:=FALSE;
   bUNExport.Enabled :=FALSE;
  end else
  begin
   bUNEdit.Enabled  := TRUE;
   bUNdel.Enabled   := TRUE;
   bUNprint.Enabled := TRUE;
   bUNlock.Enabled  := TRUE;
   bFindBankN.Enabled:=TRUE;
   bUNExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bUAEditClick(Sender: TObject);
begin
 Application.CreateForm(TfUAuto, fUAuto);
 fUAuto.OpenMode := 1;
 fUAuto.UserType := 0;
 fUAuto.Caption  := 'Клиент. Авто. '+lbUA.Items[lbUA.ItemIndex];
 fUAuto.UserID   := integer(lbUA.Items.Objects[lbUA.ItemIndex]);
 fUAuto.Show();
end;

procedure TfMain.bUAdelClick(Sender: TObject);
var UserID: integer;
    a: array [1..4] of integer;
begin
if (MessageBox(0,'Вы действительно хотите удалить текущего клиента?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
begin
 UserID := integer(lbUA.Items.Objects[lbUA.ItemIndex]);
 a[1]:=fData.CustomDel('TB_UHUM',' USR='+IntToStr(UserID));
 a[2]:=fData.CustomDel('TB_UWORK',' USR='+IntToStr(UserID));
 a[3]:=fData.CustomDel('TB_UAUTO',' USR='+IntToStr(UserID));
 a[4]:=fData.CustomDel('TB_USER',' ID='+IntToStr(UserID));
 if ((a[1]=1)or(a[2]=1)or(a[3]=1)or(a[4]=1)) then MessageBox(0,'Во время удаления произошла ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 uAutoShow(self);
end;
end;

procedure TfMain.bUBaddClick(Sender: TObject);
begin
 Application.CreateForm(TfUserCreate, fUserCreate);
 fUserCreate.TypeOpen:=1;
 fUserCreate.ShowModal();
end;

procedure TfMain.bUEaddClick(Sender: TObject);
begin
 Application.CreateForm(TfUserCreate, fUserCreate);
 fUserCreate.TypeOpen:=2;
 fUserCreate.ShowModal();
end;

procedure TfMain.bUZaddClick(Sender: TObject);
begin
 Application.CreateForm(TfUserCreate, fUserCreate);
 fUserCreate.TypeOpen:=3;
 fUserCreate.ShowModal();
end;

procedure TfMain.bUNaddClick(Sender: TObject);
begin
 Application.CreateForm(TfUserCreate, fUserCreate);
 fUserCreate.TypeOpen:=4;
 fUserCreate.ShowModal();
end;

procedure TfMain.bUBeditClick(Sender: TObject);
begin
 Application.CreateForm(TfUBuild, fUBuild);
 fUBuild.OpenMode := 1;
 fUBuild.UserType := 1;
 fUBuild.Caption  := 'Клиент. Недвижимость. '+lbUB.Items[lbUB.ItemIndex];
 fUBuild.UserID   := integer(lbUB.Items.Objects[lbUB.ItemIndex]);
 fUBuild.Show();
end;

procedure TfMain.bUEeditClick(Sender: TObject);
begin
 Application.CreateForm(TfUEarth, fUEarth);
 fUEarth.OpenMode := 1;
 fUEarth.UserType := 2;
 fUEarth.Caption  := 'Клиент. Земля. '+lbUE.Items[lbUE.ItemIndex];
 fUEarth.UserID   := integer(lbUE.Items.Objects[lbUE.ItemIndex]);
 fUEarth.Show();
end;

procedure TfMain.bUZeditClick(Sender: TObject);
begin
 Application.CreateForm(TfUZalog, fUZalog);
 fUZalog.OpenMode := 1;
 fUZalog.UserType := 3;
 fUZalog.Caption  := 'Клиент. Залоговый. '+lbUZ.Items[lbUZ.ItemIndex];
 fUZalog.UserID   := integer(lbUZ.Items.Objects[lbUZ.ItemIndex]);
 fUZalog.Show();
end;

procedure TfMain.bUNeditClick(Sender: TObject);
begin
 Application.CreateForm(TfUNon, fUNon);
 fUNon.OpenMode := 1;
 fUNon.UserType := 4;
 fUNon.Caption  := 'Клиент. Беззалоговый. '+lbUN.Items[lbUN.ItemIndex];
 fUNon.UserID   := integer(lbUN.Items.Objects[lbUN.ItemIndex]);
 fUNon.Show();
end;

procedure TfMain.bUBdelClick(Sender: TObject);
var UserID: integer;
    a: array [1..4] of integer;
begin
if (MessageBox(0,'Вы действительно хотите удалить текущего клиента?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
begin
 UserID := integer(lbUB.Items.Objects[lbUB.ItemIndex]);
 a[1]:=fData.CustomDel('TB_UHUM',' USR='+IntToStr(UserID));
 a[2]:=fData.CustomDel('TB_UWORK',' USR='+IntToStr(UserID));
 a[3]:=fData.CustomDel('TB_UBUILD',' USR='+IntToStr(UserID));
 a[4]:=fData.CustomDel('TB_USER',' ID='+IntToStr(UserID));
 if ((a[1]=1)or(a[2]=1)or(a[3]=1)or(a[4]=1)) then MessageBox(0,'Во время удаления произошла ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 uBuildShow(self);
end;
end;

procedure TfMain.bUEdelClick(Sender: TObject);
var UserID: integer;
    a: array [1..4] of integer;
begin
if (MessageBox(0,'Вы действительно хотите удалить текущего клиента?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
begin
 UserID := integer(lbUE.Items.Objects[lbUE.ItemIndex]);
 a[1]:=fData.CustomDel('TB_UHUM',' USR='+IntToStr(UserID));
 a[2]:=fData.CustomDel('TB_UWORK',' USR='+IntToStr(UserID));
 a[3]:=fData.CustomDel('TB_UEARTH',' USR='+IntToStr(UserID));
 a[4]:=fData.CustomDel('TB_USER',' ID='+IntToStr(UserID));
 if ((a[1]=1)or(a[2]=1)or(a[3]=1)or(a[4]=1)) then MessageBox(0,'Во время удаления произошла ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 uEarthShow(self);
end;
end;

procedure TfMain.bUZdelClick(Sender: TObject);
var UserID: integer;
    a: array [1..4] of integer;
begin
if (MessageBox(0,'Вы действительно хотите удалить текущего клиента?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
begin
 UserID := integer(lbUZ.Items.Objects[lbUZ.ItemIndex]);
 a[1]:=fData.CustomDel('TB_UHUM',' USR='+IntToStr(UserID));
 a[2]:=fData.CustomDel('TB_UWORK',' USR='+IntToStr(UserID));
 a[3]:=fData.CustomDel('TB_UZALOG',' USR='+IntToStr(UserID));
 a[4]:=fData.CustomDel('TB_USER',' ID='+IntToStr(UserID));
 if ((a[1]=1)or(a[2]=1)or(a[3]=1)or(a[4]=1)) then MessageBox(0,'Во время удаления произошла ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 uZalogShow(self);
end;
end;

procedure TfMain.bUNdelClick(Sender: TObject);
var UserID: integer;
    a: array [1..4] of integer;
begin
if (MessageBox(0,'Вы действительно хотите удалить текущего клиента?','Вы уверены?',MB_ICONINFORMATION or MB_OKCANCEL) = 1) then
begin
 UserID := integer(lbUN.Items.Objects[lbUN.ItemIndex]);
 a[1]:=fData.CustomDel('TB_UHUM',' USR='+IntToStr(UserID));
 a[2]:=fData.CustomDel('TB_UWORK',' USR='+IntToStr(UserID));
 a[3]:=fData.CustomDel('TB_UNON',' USR='+IntToStr(UserID));
 a[4]:=fData.CustomDel('TB_USER',' ID='+IntToStr(UserID));
 if ((a[1]=1)or(a[2]=1)or(a[3]=1)or(a[4]=1)) then MessageBox(0,'Во время удаления произошла ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 uNonShow(self);
end;
end;

procedure TfMain.bOpenClick(Sender: TObject);
begin
 opd.InitialDir:=ExtractFileDir(Application.ExeName);
 if opd.Execute then EPath.Text:=opd.FileName;
end;

procedure TfMain.BsaveClick(Sender: TObject);
var i: TIniFile;
begin
 i := TIniFile.Create('config.ini');
 i.WriteString('DataBase','Path',Trim(EPath.Text));
 i.WriteString('DataBase','user_name',Trim(Euser.Text));
 i.WriteString('DataBase','password',Trim(Epass.Text));
 i.Free;
 MessageBox(fMain.Handle,'Изменения сохранены.','Сохранено',MB_ICONINFORMATION or MB_OK);
 Application.Terminate;
end;

procedure TfMain.bFindBankAClick(Sender: TObject);
var where: string; tmp1,tmp2,a: string; i: integer;
    Month, Day, Year, CurrentMonth, CurrentDay, CurrentYear: word;
    Age: integer;
begin
 // связали Банк и все его авто
 where:='select distinct TB_BANKAUTO.ID, TB_BANKAUTO.NAME from TB_BANKAUTO,TB_AUTO where (TB_AUTO.BANK=TB_BANKAUTO.ID)and';

 // тырим пол (муж/жен)
 tmp1:=fData.CustomSelS('TB_USER','SEX','where ID='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 // тырим дату рождения
 tmp2:=fData.CustomSelS('TB_USER','BDATE','where ID='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 Age:=pos(' ',tmp2);
 delete(tmp2,Age,9);
 // вычисляем скока лет и заносим результ в Age
 DecodeDate(StrToDate(tmp2), Year, Month, Day);
 DecodeDate(Date, CurrentYear, CurrentMonth, CurrentDay);
 if (Year = CurrentYear) and (Month = CurrentMonth) and (Day = CurrentDay) then Age:=0 else
 begin
   Age := CurrentYear - Year;
   if (Month > CurrentMonth) then dec(Age)else
    if Month = CurrentMonth then
     if (Day > CurrentDay) then dec(Age);
 end;
 // в зависимости от пола делаем запрос
 case StrToInt(tmp1) of
  0: where:=where+'((TB_BANKAUTO.AGE_M_B<='+IntToStr(Age)+')and(TB_BANKAUTO.AGE_M_E>='+IntToStr(Age)+'))and';
  1: where:=where+'((TB_BANKAUTO.AGE_F_B<='+IntToStr(Age)+')and(TB_BANKAUTO.AGE_F_E>='+IntToStr(Age)+'))and';
 end;

 // адрес прописки р-он -> обл -> др
 tmp1:=fData.CustomSelS('TB_USER','HPLACE','where ID='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 tmp1:=IntToStr(StrToInt(tmp1)+1);
 where:=where+'(TB_BANKAUTO.IHOME>='+tmp1+')and';

 // сперли желаемый срок кредитования
 tmp1:=fData.CustomSelS('TB_UAUTO','TC','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 // добавили условие срока кредита
 where:=where+'(TB_AUTO.MAXTC>='+tmp1+')and';

 // поручитель
 tmp1:=fData.CustomSelS('TB_USER','SHUM','where ID='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 where:=where+'(TB_BANKAUTO.SHUM>='+tmp1+')and';

 // тип погашения
 tmp1:=fData.CustomSelS('TB_UAUTO','TC_ST','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 where:=where+'((TB_BANKAUTO.TC_ST='+tmp1+')';
 tmp1:=fData.CustomSelS('TB_UAUTO','TC_AM','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 where:=where+'or(TB_BANKAUTO.TC_AM='+tmp1+')';
 tmp1:=fData.CustomSelS('TB_UAUTO','TC_EL','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 where:=where+'or(TB_BANKAUTO.TC_EL='+tmp1+'))and';

 // трудоустройство
 tmp1:=fData.CustomSelS('TB_USER','WORKT','where ID='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 if ((tmp1='2')or(tmp1='3')or(tmp1='4')) then where:=where+'(TB_BANKAUTO.IWORK=1)and' else
 if fData.CustomSelS('TB_UWORK','OFC','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])))='1' then
 where:=where+'(TB_BANKAUTO.IWORK=1)and';


  where:=where+'(TB_BANKAUTO.IWORK=1)and';

 // страховка
 tmp1:=fData.CustomSelS('TB_UAUTO','SADDCR','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 where:=where+'(TB_BANKAUTO.SADDCR>='+tmp1+')and';

 // первый взнос
 tmp1:=fData.CustomSelS('TB_UAUTO','FV','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 where:=where+'(TB_AUTO.MINFV<='+tmp1+')and';

 // стоимость
 tmp1:=fData.CustomSelS('TB_UAUTO','COST','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 where:=where+'((TB_BANKAUTO.SUMMIN<='+tmp1+')and(TB_BANKAUTO.SUMMAX>='+tmp1+'))and';

 // валюта
 i:=fData.CustomSelI('TB_UAUTO','MN','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 case i of
  0: where:=where+'(TB_AUTO.GR=1)and';
  1: where:=where+'(TB_AUTO.DL=1)and';
  2: where:=where+'(TB_AUTO.EU=1)and';
  3: where:=where+'(TB_AUTO.EL=1)and';
 end;

 // нужное авто
 a:='AUTO_';
 tmp1:=fData.CustomSelS('TB_UAUTO','TYP','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 case StrToInt(tmp1) of
  0: a:=a+'L_';
  1: a:=a+'M_';
  2: a:=a+'H_';
  3: a:=a+'EL_';
 end;
 tmp1:=fData.CustomSelS('TB_UAUTO','NB','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 case StrToInt(tmp1) of
  0: a:=a+'N_';
  1: a:=a+'O_';
 end;
 tmp1:=fData.CustomSelS('TB_UAUTO','DEV','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 case StrToInt(tmp1) of
  0: a:=a+'F';
  1: a:=a+'J';
  2: a:=a+'A';
  3: a:=a+'S';
  4: a:=a+'U';
  5: a:=a+'EL';
 end;
 where:=where+'(TB_BANKAUTO.'+a+'=1)';

 // СОРТИРОВКА
 i:=fData.CustomSelI('TB_UAUTO','MN','where USR='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 case i of
  0: where:=where+' order by TB_AUTO.GR_S';
  1: where:=where+' order by TB_AUTO.DL_S';
  2: where:=where+' order by TB_AUTO.EU_S';
  3: where:=where+' order by TB_AUTO.EL_S';
 end;

 if fData.FillLB_zapros(lbUAbank,where,'TB_BANKAUTO')=0 then
 begin
  bUAbv.Enabled:=TRUE;
  bUAbp.Enabled:=TRUE;
 end else
 begin
  bUAbv.Enabled:=FALSE;
  bUAbp.Enabled:=FALSE;
 end;
end;

function TfMain.CalcAge(brthdate: TDateTime): Integer;
var month, day, year, bmonth, bday, byear: word;
begin
 DecodeDate(BrthDate, byear, bmonth, bday);
 if bmonth = 0 then result := 0 else
 begin
   DecodeDate(Date, year, month, day);
   result := year - byear;
   if (100 * month + day) < (100 * bmonth + bday) then
     result := result - 1;
 end;
end;

procedure TfMain.bFindBankBClick(Sender: TObject);
var where: string; tmp1,tmp2,a: string; i: integer;
    Month, Day, Year, CurrentMonth, CurrentDay, CurrentYear: word;
    Age: integer;
begin
 // связали Банк и все его авто
 where:='select distinct TB_BANKBUILD.ID, TB_BANKBUILD.NAME from TB_BANKBUILD where ';

 // тырим пол (муж/жен)
 tmp1:=fData.CustomSelS('TB_USER','SEX','where ID='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 // тырим дату рождения
 tmp2:=fData.CustomSelS('TB_USER','BDATE','where ID='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 Age:=pos(' ',tmp2);
 delete(tmp2,Age,9);
 // вычисляем скока лет и заносим результ в Age
 DecodeDate(StrToDate(tmp2), Year, Month, Day);
 DecodeDate(Date, CurrentYear, CurrentMonth, CurrentDay);
 if (Year = CurrentYear) and (Month = CurrentMonth) and (Day = CurrentDay) then Age:=0 else
 begin
   Age := CurrentYear - Year;
   if (Month > CurrentMonth) then dec(Age)else
    if Month = CurrentMonth then
     if (Day > CurrentDay) then dec(Age);
 end;
 // в зависимости от пола делаем запрос
 case StrToInt(tmp1) of
  0: where:=where+'((TB_BANKBUILD.AGE_M_B<='+IntToStr(Age)+')and(TB_BANKBUILD.AGE_M_E>='+IntToStr(Age)+'))and';
  1: where:=where+'((TB_BANKBUILD.AGE_F_B<='+IntToStr(Age)+')and(TB_BANKBUILD.AGE_F_E>='+IntToStr(Age)+'))and';
 end;

 // адрес прописки р-он -> обл -> др
 tmp1:=fData.CustomSelS('TB_USER','HPLACE','where ID='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 tmp1:=IntToStr(StrToInt(tmp1)+1);
 where:=where+'(TB_BANKBUILD.IHOME>='+tmp1+')and';

 // сперли желаемый срок кредитования
 tmp1:=fData.CustomSelS('TB_UBUILD','TC','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 // добавили условие срока кредита
 where:=where+'(TB_BANKBUILD.MAXTC>='+tmp1+')and';

 // поручитель
 tmp1:=fData.CustomSelS('TB_USER','SHUM','where ID='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 where:=where+'(TB_BANKBUILD.SHUM>='+tmp1+')and';

 // тип погашения
 tmp1:=fData.CustomSelS('TB_UBUILD','TC_ST','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 where:=where+'((TB_BANKBUILD.TC_ST='+tmp1+')';
 tmp1:=fData.CustomSelS('TB_UBUILD','TC_AM','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 where:=where+'or(TB_BANKBUILD.TC_AM='+tmp1+')';
 tmp1:=fData.CustomSelS('TB_UBUILD','TC_EL','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 where:=where+'or(TB_BANKBUILD.TC_EL='+tmp1+'))and';

 // трудоустройство
 tmp1:=fData.CustomSelS('TB_USER','WORKT','where ID='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 if ((tmp1='2')or(tmp1='3')or(tmp1='4')) then where:=where+'(TB_BANKBUILD.IWORK=1)and' else
 if fData.CustomSelS('TB_UWORK','OFC','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])))='1' then
 where:=where+'(TB_BANKBUILD.IWORK=1)and';

 // страховка
 tmp1:=fData.CustomSelS('TB_UBUILD','SADDCR','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 where:=where+'(TB_BANKBUILD.SADDCR>='+tmp1+')and';

 // первый взнос
 tmp1:=fData.CustomSelS('TB_UBUILD','FV','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 where:=where+'(TB_BANKBUILD.MINFV<='+tmp1+')and';

 // стоимость
 tmp1:=fData.CustomSelS('TB_UBUILD','COST','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 where:=where+'((TB_BANKBUILD.SUMMIN<='+tmp1+')and(TB_BANKBUILD.SUMMAX>='+tmp1+'))and';

  // валюта
 i:=fData.CustomSelI('TB_UBUILD','MN','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 case i of
  0: where:=where+'(TB_BANKBUILD.GR=1)';
  1: where:=where+'(TB_BANKBUILD.DL=1)';
  2: where:=where+'(TB_BANKBUILD.EU=1)';
  3: where:=where+'(TB_BANKBUILD.EL=1)';
 end;

 // СОРТИРОВКА
 i:=fData.CustomSelI('TB_UBUILD','MN','where USR='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 case i of
  0: where:=where+' order by TB_BANKBUILD.GR_S desc';
  1: where:=where+' order by TB_BANKBUILD.DL_S desc';
  2: where:=where+' order by TB_BANKBUILD.EU_S desc';
  3: where:=where+' order by TB_BANKBUILD.EL_S desc';
 end;

 if fData.FillLB_zapros(lbUBbank,where,'TB_BANKBUILD')=0 then
 begin
  bUBbv.Enabled:=TRUE;
  bUBbp.Enabled:=TRUE;
 end else
 begin
  bUBbv.Enabled:=FALSE;
  bUBbp.Enabled:=FALSE;
 end;
end;

procedure TfMain.bFindBankEClick(Sender: TObject);
var where: string; tmp1,tmp2,a: string; i:integer;
    Month, Day, Year, CurrentMonth, CurrentDay, CurrentYear: word;
    Age: integer;
begin
 // связали Банк и все его авто
 where:='select distinct TB_BANKEARTH.ID, TB_BANKEARTH.NAME from TB_BANKEARTH where ';

 // тырим пол (муж/жен)
 tmp1:=fData.CustomSelS('TB_USER','SEX','where ID='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 // тырим дату рождения
 tmp2:=fData.CustomSelS('TB_USER','BDATE','where ID='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 Age:=pos(' ',tmp2);
 delete(tmp2,Age,9);
 // вычисляем скока лет и заносим результ в Age
 DecodeDate(StrToDate(tmp2), Year, Month, Day);
 DecodeDate(Date, CurrentYear, CurrentMonth, CurrentDay);
 if (Year = CurrentYear) and (Month = CurrentMonth) and (Day = CurrentDay) then Age:=0 else
 begin
   Age := CurrentYear - Year;
   if (Month > CurrentMonth) then dec(Age)else
    if Month = CurrentMonth then
     if (Day > CurrentDay) then dec(Age);
 end;
 // в зависимости от пола делаем запрос
 case StrToInt(tmp1) of
  0: where:=where+'((TB_BANKEARTH.AGE_M_B<='+IntToStr(Age)+')and(TB_BANKEARTH.AGE_M_E>='+IntToStr(Age)+'))and';
  1: where:=where+'((TB_BANKEARTH.AGE_F_B<='+IntToStr(Age)+')and(TB_BANKEARTH.AGE_F_E>='+IntToStr(Age)+'))and';
 end;

 // адрес прописки р-он -> обл -> др
 tmp1:=fData.CustomSelS('TB_USER','HPLACE','where ID='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 tmp1:=IntToStr(StrToInt(tmp1)+1);
 where:=where+'(TB_BANKEARTH.IHOME>='+tmp1+')and';

 // сперли желаемый срок кредитования
 tmp1:=fData.CustomSelS('TB_UEARTH','TC','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 // добавили условие срока кредита
 where:=where+'(TB_BANKEARTH.MAXTC>='+tmp1+')and';

 // поручитель
 tmp1:=fData.CustomSelS('TB_USER','SHUM','where ID='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 where:=where+'(TB_BANKEARTH.SHUM>='+tmp1+')and';

 // тип погашения
 tmp1:=fData.CustomSelS('TB_UEARTH','TC_ST','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 where:=where+'((TB_BANKEARTH.TC_ST='+tmp1+')';
 tmp1:=fData.CustomSelS('TB_UEARTH','TC_AM','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 where:=where+'or(TB_BANKEARTH.TC_AM='+tmp1+')';
 tmp1:=fData.CustomSelS('TB_UEARTH','TC_EL','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 where:=where+'or(TB_BANKEARTH.TC_EL='+tmp1+'))and';

 // трудоустройство
 tmp1:=fData.CustomSelS('TB_USER','WORKT','where ID='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 if ((tmp1='2')or(tmp1='3')or(tmp1='4')) then where:=where+'(TB_BANKEARTH.IWORK=1)and' else
 if fData.CustomSelS('TB_UWORK','OFC','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])))='1' then
 where:=where+'(TB_BANKEARTH.IWORK=1)and';

 // первый взнос
 tmp1:=fData.CustomSelS('TB_UEARTH','FV','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 where:=where+'(TB_BANKEARTH.MINFV<='+tmp1+')and';

 // стоимость
 tmp1:=fData.CustomSelS('TB_UEARTH','COST','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 where:=where+'((TB_BANKEARTH.SUMMIN<='+tmp1+')and(TB_BANKEARTH.SUMMAX>='+tmp1+'))and';

   // валюта
 i:=fData.CustomSelI('TB_UEARTH','MN','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 case i of
  0: where:=where+'(TB_BANKEARTH.GR=1)and';
  1: where:=where+'(TB_BANKEARTH.DL=1)and';
  2: where:=where+'(TB_BANKEARTH.EU=1)and';
  3: where:=where+'(TB_BANKEARTH.EL=1)and';
 end;

 // тип кредита (строит, с/х, др)
 tmp1:=fData.CustomSelS('TB_UEARTH','TYP','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 case StrToInt(tmp1) of
  0: where:=where+'(CFARM=1)';
  1: where:=where+'(CBUILD=1)';
  2: where:=where+'(CEL=1)';
 end;

 // СОРТИРОВКА
 i:=fData.CustomSelI('TB_UEARTH','MN','where USR='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 case i of
  0: where:=where+' order by TB_BANKEARTH.GR_S desc';
  1: where:=where+' order by TB_BANKEARTH.DL_S desc';
  2: where:=where+' order by TB_BANKEARTH.EU_S desc';
  3: where:=where+' order by TB_BANKEARTH.EL_S desc';
 end;

 if fData.FillLB_zapros(lbUEbank,where,'TB_BANKEARTH')=0 then
 begin
  bUEbv.Enabled:=TRUE;
  bUEbp.Enabled:=TRUE;
 end else
 begin
  bUEbv.Enabled:=FALSE;
  bUEbp.Enabled:=FALSE;
 end;
end;

procedure TfMain.bFindBankZClick(Sender: TObject);
var where: string; tmp1,tmp2,a: string; i:integer;
    Month, Day, Year, CurrentMonth, CurrentDay, CurrentYear: word;
    Age: integer;
begin
 // связали Банк и все его авто
 where:='select distinct TB_BANKZALOG.ID, TB_BANKZALOG.NAME from TB_BANKZALOG where ';

 // тырим пол (муж/жен)
 tmp1:=fData.CustomSelS('TB_USER','SEX','where ID='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 // тырим дату рождения
 tmp2:=fData.CustomSelS('TB_USER','BDATE','where ID='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 Age:=pos(' ',tmp2);
 delete(tmp2,Age,9);
 // вычисляем скока лет и заносим результ в Age
 DecodeDate(StrToDate(tmp2), Year, Month, Day);
 DecodeDate(Date, CurrentYear, CurrentMonth, CurrentDay);
 if (Year = CurrentYear) and (Month = CurrentMonth) and (Day = CurrentDay) then Age:=0 else
 begin
   Age := CurrentYear - Year;
   if (Month > CurrentMonth) then dec(Age)else
    if Month = CurrentMonth then
     if (Day > CurrentDay) then dec(Age);
 end;
 // в зависимости от пола делаем запрос
 case StrToInt(tmp1) of
  0: where:=where+'((TB_BANKZALOG.AGE_M_B<='+IntToStr(Age)+')and(TB_BANKZALOG.AGE_M_E>='+IntToStr(Age)+'))and';
  1: where:=where+'((TB_BANKZALOG.AGE_F_B<='+IntToStr(Age)+')and(TB_BANKZALOG.AGE_F_E>='+IntToStr(Age)+'))and';
 end;

 // адрес прописки р-он -> обл -> др
 tmp1:=fData.CustomSelS('TB_USER','HPLACE','where ID='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 tmp1:=IntToStr(StrToInt(tmp1)+1);
 where:=where+'(TB_BANKZALOG.IHOME>='+tmp1+')and';

 // сперли желаемый срок кредитования
 tmp1:=fData.CustomSelS('TB_UZALOG','TC','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 // добавили условие срока кредита
 where:=where+'(TB_BANKZALOG.MAXTC>='+tmp1+')and';

 // поручитель
 tmp1:=fData.CustomSelS('TB_USER','SHUM','where ID='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 where:=where+'(TB_BANKZALOG.SHUM>='+tmp1+')and';

 // трудоустройство
 tmp1:=fData.CustomSelS('TB_USER','WORKT','where ID='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 if ((tmp1='2')or(tmp1='3')or(tmp1='4')) then where:=where+'(TB_BANKZALOG.IWORK=1)and' else
 if fData.CustomSelS('TB_UWORK','OFC','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])))='1' then
 where:=where+'(TB_BANKZALOG.IWORK=1)and';

 // стоимость
 tmp1:=fData.CustomSelS('TB_UZALOG','SUMA','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 where:=where+'((TB_BANKZALOG.SUMMIN<='+tmp1+')and(TB_BANKZALOG.SUMMAX>='+tmp1+'))and';

    // валюта
 i:=fData.CustomSelI('TB_UZALOG','MN','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 case i of
  0: where:=where+'(TB_BANKZALOG.GR=1)';
  1: where:=where+'(TB_BANKZALOG.DL=1)';
  2: where:=where+'(TB_BANKZALOG.EU=1)';
  3: where:=where+'(TB_BANKZALOG.EL=1)';
 end;

 // тип кредита (авто)
 tmp1:=fData.CustomSelS('TB_UZALOG','TA','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 case StrToInt(tmp1) of
  1: where:=where+'and(TB_BANKZALOG.ZALOG_A=1)';
  0: where:=where+'';
 end;

 // тип кредита (недвижимость)
 tmp1:=fData.CustomSelS('TB_UZALOG','TB','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 case StrToInt(tmp1) of
  1: where:=where+'and(TB_BANKZALOG.ZALOG_B=1)';
  0: where:=where+'';
 end;

 // тип кредита (земля)
 tmp1:=fData.CustomSelS('TB_UZALOG','TE','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 case StrToInt(tmp1) of
  1: where:=where+'and(TB_BANKZALOG.ZALOG_E=1)';
  0: where:=where+'';
 end;

 // тип кредита (депозит)
 tmp1:=fData.CustomSelS('TB_UZALOG','TD','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 case StrToInt(tmp1) of
  0: where:=where+'';
  1: where:=where+'and(TB_BANKZALOG.ZALOG_D=1)';
 end;

 // тип кредита (другое)
 tmp1:=fData.CustomSelS('TB_UZALOG','TEL','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 case StrToInt(tmp1) of
  0: where:=where+'';
  1: where:=where+'and(TB_BANKZALOG.ZALOG_EL=1)';
 end;

 // СОРТИРОВКА
 i:=fData.CustomSelI('TB_UZALOG','MN','where USR='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 case i of
  0: where:=where+' order by TB_BANKZALOG.GR_S desc';
  1: where:=where+' order by TB_BANKZALOG.DL_S desc';
  2: where:=where+' order by TB_BANKZALOG.EU_S desc';
  3: where:=where+' order by TB_BANKZALOG.EL_S desc';
 end;

 if fData.FillLB_zapros(lbUZbank,where,'TB_BANKZALOG')=0 then
 begin
  bUZbv.Enabled:=TRUE;
  bUZbp.Enabled:=TRUE;
 end else
 begin
  bUZbv.Enabled:=FALSE;
  bUZbp.Enabled:=FALSE;
 end;
end;

procedure TfMain.bFindBankNClick(Sender: TObject);
var where: string; tmp1,tmp2,a: string; i:integer;
    Month, Day, Year, CurrentMonth, CurrentDay, CurrentYear: word;
    Age: integer;
begin
 // связали Банк и все его авто
 where:='select distinct TB_BANKNON.ID, TB_BANKNON.NAME from TB_BANKNON where ';

 // тырим пол (муж/жен)
 tmp1:=fData.CustomSelS('TB_USER','SEX','where ID='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 // тырим дату рождения
 tmp2:=fData.CustomSelS('TB_USER','BDATE','where ID='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 Age:=pos(' ',tmp2);
 delete(tmp2,Age,9);
 // вычисляем скока лет и заносим результ в Age
 DecodeDate(StrToDate(tmp2), Year, Month, Day);
 DecodeDate(Date, CurrentYear, CurrentMonth, CurrentDay);
 if (Year = CurrentYear) and (Month = CurrentMonth) and (Day = CurrentDay) then Age:=0 else
 begin
   Age := CurrentYear - Year;
   if (Month > CurrentMonth) then dec(Age)else
    if Month = CurrentMonth then
     if (Day > CurrentDay) then dec(Age);
 end;
 // в зависимости от пола делаем запрос
 case StrToInt(tmp1) of
  0: where:=where+'((TB_BANKNON.AGE_M_B<='+IntToStr(Age)+')and(TB_BANKNON.AGE_M_E>='+IntToStr(Age)+'))and';
  1: where:=where+'((TB_BANKNON.AGE_F_B<='+IntToStr(Age)+')and(TB_BANKNON.AGE_F_E>='+IntToStr(Age)+'))and';
 end;

 // адрес прописки р-он -> обл -> др
 tmp1:=fData.CustomSelS('TB_USER','HPLACE','where ID='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 tmp1:=IntToStr(StrToInt(tmp1)+1);
 where:=where+'(TB_BANKNON.IHOME>='+tmp1+')and';

 // сперли желаемый срок кредитования
 tmp1:=fData.CustomSelS('TB_UNON','TC','where USR='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 // добавили условие срока кредита
 where:=where+'(TB_BANKNON.MAXTC>='+tmp1+')and';

 // поручитель
 tmp1:=fData.CustomSelS('TB_USER','SHUM','where ID='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 where:=where+'(TB_BANKNON.SHUM>='+tmp1+')and';

 // трудоустройство
 tmp1:=fData.CustomSelS('TB_USER','WORKT','where ID='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 if ((tmp1='2')or(tmp1='3')or(tmp1='4')) then where:=where+'(TB_BANKNON.IWORK=1)and' else
 if fData.CustomSelS('TB_UWORK','OFC','where USR='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])))='1' then
 where:=where+'(TB_BANKNON.IWORK=1)and';

 // стоимость
 tmp1:=fData.CustomSelS('TB_UNON','SUMA','where USR='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 where:=where+'((TB_BANKNON.SUMMIN<='+tmp1+')and(TB_BANKNON.SUMMAX>='+tmp1+'))and';

 // валюта
 i:=fData.CustomSelI('TB_UNON','MN','where USR='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 case i of
  0: where:=where+'(TB_BANKNON.GR=1)';
  1: where:=where+'(TB_BANKNON.DL=1)';
  2: where:=where+'(TB_BANKNON.EU=1)';
  3: where:=where+'(TB_BANKNON.EL=1)';
 end;

 // СОРТИРОВКА
 i:=fData.CustomSelI('TB_UNON','MN','where USR='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 case i of
  0: where:=where+' order by TB_BANKNON.GR_S desc';
  1: where:=where+' order by TB_BANKNON.DL_S desc';
  2: where:=where+' order by TB_BANKNON.EU_S desc';
  3: where:=where+' order by TB_BANKNON.EL_S desc';
 end;

 if fData.FillLB_zapros(lbUNbank,where,'TB_BANKNON')=0 then
 begin
  bUNbv.Enabled:=TRUE;
  bUNbp.Enabled:=TRUE;
 end else
 begin
  bUNbv.Enabled:=FALSE;
  bUNbp.Enabled:=FALSE;
 end;
end;

procedure TfMain.bUAbvClick(Sender: TObject);
begin
 Application.CreateForm(TfBAuto, fBAuto);
 fBAuto.BankID   := integer(lbUAbank.Items.Objects[lbUAbank.ItemIndex]);
 fBAuto.Caption  := 'Банк "'+lbUAbank.Items[lbUAbank.ItemIndex]+'". Авто.';
 fBAuto.Show;
end;

procedure TfMain.bUBbvClick(Sender: TObject);
begin
 Application.CreateForm(TfBBuild, fBBuild);
 fBBuild.BankID   := integer(lbUBbank.Items.Objects[lbUBbank.ItemIndex]);
 fBBuild.Caption  := 'Банк "'+lbUBbank.Items[lbUBbank.ItemIndex]+'". Недвижимость.';
 fBBuild.Show;
end;

procedure TfMain.bUEbvClick(Sender: TObject);
begin
 Application.CreateForm(TfBEarth, fBEarth);
 fBEarth.BankID   := integer(lbUEbank.Items.Objects[lbUEbank.ItemIndex]);
 fBEarth.Caption  := 'Банк "'+lbUEbank.Items[lbUEbank.ItemIndex]+'". Земля.';
 fBEarth.Show;
end;

procedure TfMain.bUZbvClick(Sender: TObject);
begin
 Application.CreateForm(TfBZalog, fBZalog);
 fBZalog.BankID   := integer(lbUZbank.Items.Objects[lbUZbank.ItemIndex]);
 fBZalog.Caption  := 'Банк "'+lbUZbank.Items[lbUZbank.ItemIndex]+'". Деньги под залог.';
 fBZalog.Show;
end;

procedure TfMain.bUNbvClick(Sender: TObject);
begin
 Application.CreateForm(TfBNon, fBNon);
 fBNon.BankID   := integer(lbUNbank.Items.Objects[lbUNbank.ItemIndex]);
 fBNon.Caption  := 'Банк "'+lbUNbank.Items[lbUNbank.ItemIndex]+'". Деньги без залога.';
 fBNon.Show;
end;

procedure TfMain.bUNbpClick(Sender: TObject);
begin
 BankPrint('TB_BANKNON',integer(lbUNbank.Items.Objects[lbUNbank.ItemIndex]));
end;

procedure TfMain.Dogovor(uID: integer; STable: string);
var FileName, cur: OleVariant;
    i, count, c:integer;
    s, av, tav: string;
begin
 try
  Application.CreateForm(TfWait, fWait);
  fWait.ParentWindow := fMain.Handle;
  fWait.pb.Position := 0;
  fWait.Show();
  fMain.Enabled := FALSE;
  FileName:=GetCurrentDir+'\BASE\dogovor.dot';
 try  // Word не запущен, запустить
  WordA.Disconnect;
  WordA.Connect;
  WordA.Visible := TRUE;
 except
  WordA.Disconnect;
  fWait.Close();
  fMain.Enabled := TRUE;
  MessageBox(0,'Произошла ошибка! Не удается найти Microsoft Word. Установка этого приложения исправит проблему.'+#10#13+'Или произошла ошибка на уровне Microsoft Word. Закройте MS Word и попробуйте повторить попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
  Exit;
 end;
 with WordA do
 begin
  WordA.Documents.Open(FileName,EmptyParam,EmptyParam,EmptyParam,
                          EmptyParam,EmptyParam,EmptyParam,
	                  EmptyParam,EmptyParam,EmptyParam,
	                  EmptyParam,EmptyParam);
  SelectFirst;
  Selection.NextField;
  while (Selection.Text <> 'q')or(Selection.Text <> 'Q') do
  begin
   fWait.pb.StepIt;
   case Selection.Text[1] of
   { ТЕКСТОВОЕ ПОЛЕ }
    't','T': Selection.Text := fData.CustomSelS('TB_USER',Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(uID));
   { ПРЕДМЕТ ДОГОВОРА }
    'c','C': begin
              s := '';
              case STable[5] of
               'A': s:='поиск кредита на авто';
               'B': s:='поиск кредита на недвижимость';
               'E': s:='поиск кредита на землю';
               'Z': s:='поиск залогового кредита';
               'N': s:='поиск беззалогового кредита';
              end;
              Selection.Text := s;
             end;
   { ВАЛЮТА }
   'v','V': case (fData.CustomSelI(STable,'MN','where ID='+IntToStr(fData.CustomSelI(STable,'ID','where USR='+IntToStr(uID))))) of
             0: Selection.Text := 'грн';
             1: Selection.Text := '$';
             2: Selection.Text := 'eur';
             3: Selection.Text := 'др';
            end;
   { ДОГОВОР НА СУММУ... }
    's','S': case STable[5] of
              'A': Selection.Text := fData.CustomSelS(STable,'COST','where USR='+IntToStr(uID));
              'B': Selection.Text := fData.CustomSelS(STable,'COST','where USR='+IntToStr(uID));
              'E': Selection.Text := fData.CustomSelS(STable,'COST','where USR='+IntToStr(uID));
              'Z': Selection.Text := fData.CustomSelS(STable,'SUMA','where USR='+IntToStr(uID));
              'N': Selection.Text := fData.CustomSelS(STable,'SUMA','where USR='+IntToStr(uID));
             end;
    'q','Q': begin
              Selection.Text := '';
              break;
             end;
   end;
   Selection.NextField;
  end;

end;
  WordA.Selection.Text := '';
  WordA.Selection.Delete(EmptyParam,EmptyParam);
  fWait.Close();
  fMain.Enabled := TRUE;
 except
  fWait.Close();
  fMain.Enabled := TRUE;
  MessageBox(0,'Произошла ошибка при выводе в Microsoft Word. Попробуйте повторить попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bUAlockClick(Sender: TObject);
begin
 Dogovor(integer(lbUA.Items.Objects[lbUA.ItemIndex]),'TB_UAUTO');
end;

procedure TfMain.bUBlockClick(Sender: TObject);
begin
 Dogovor(integer(lbUB.Items.Objects[lbUB.ItemIndex]),'TB_UBUILD');
end;

procedure TfMain.bUElockClick(Sender: TObject);
begin
 Dogovor(integer(lbUE.Items.Objects[lbUE.ItemIndex]),'TB_UEARTH');
end;

procedure TfMain.bUZlockClick(Sender: TObject);
begin
 Dogovor(integer(lbUZ.Items.Objects[lbUZ.ItemIndex]),'TB_UZALOG');
end;

procedure TfMain.bUNlockClick(Sender: TObject);
begin
 Dogovor(integer(lbUN.Items.Objects[lbUN.ItemIndex]),'TB_UNON');
end;

procedure TfMain.UserPrint(UserID: integer; sTable: string);
var FileName, cur: OleVariant;
    i, count, c, tables, loctabs:integer;
    s, av, tav: string;
begin
 try
  Application.CreateForm(TfWait, fWait);
  fWait.ParentWindow := fMain.Handle;
  fWait.pb.Position := 0;
  fWait.Show();
  fMain.Enabled := FALSE;
  case sTable[5] of
   'A': s:='UAuto';
   'B': s:='UBuild';
   'E': s:='UEarth';
   'Z': s:='UZalog';
   'N': s:='UNon';
  end;
  FileName:=GetCurrentDir+'\BASE\'+s+'.dot';
 try  // Word не запущен, запустить
  WordA.Disconnect;
  WordA.Connect;
  WordA.Visible := TRUE;
//  WordA.Visible := FALSE;
 except
  WordA.Disconnect;
  fWait.Close();
  fMain.Enabled := TRUE;
  MessageBox(0,'Произошла ошибка! Не удается найти Microsoft Word. Установка этого приложения исправит проблему.'+#10#13+'Или произошла ошибка на уровне Microsoft Word. Закройте MS Word и попробуйте повторить попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
  Exit;
 end;
 with WordA do
 begin
  WordA.Documents.Open(FileName,EmptyParam,EmptyParam,EmptyParam,
                          EmptyParam,EmptyParam,EmptyParam,
	                  EmptyParam,EmptyParam,EmptyParam,
	                  EmptyParam,EmptyParam);
  SelectFirst;
  Selection.NextField;
  cur := 1; tables := 1; loctabs := 1;
  av  := ''; tav := '';
  while (Selection.Text <> 'q')or(Selection.Text <> 'Q') do
  begin
   fWait.pb.StepIt;
   case Selection.Text[1] of
   { ТЕКСТОВОЕ ПОЛЕ }
    't','T': Selection.Text := fData.CustomSelS('TB_USER',Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(UserID));
   { ПЕРЕКЛЮЧАТЕЛЬ }
    'c','C': begin
              s := Copy(Selection.Text,2,Length(Selection.Text));
              Selection.Text := '';
              Selection.NextField;
              case fData.CustomSelI('TB_USER',s,'where ID='+IntToStr(UserID)) of
               0: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := FALSE;
               1: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := TRUE;
              end;
              Inc(cur);
             end;
   { ПРИМЕЧАНИЕ или ТАБЛИЦА. ЕСЛИ ДЛИНА > 0 }
    'i','I': case Selection.Text[2] of
             '0': begin
                   s := fData.CustomSelS('TB_USER',Copy(Selection.Text,3,Length(Selection.Text)),'where ID='+IntToStr(UserID));
                   if (Length(s)>0) then Selection.Text := ('Примечание: '+s) else Selection.Text := '';
                  end;
             '1': begin
                   s := fData.CustomSelS('TB_USER',Copy(Selection.Text,3,Length(Selection.Text)),'where ID='+IntToStr(UserID));
                   if Length(s)>0 then
                   begin
                    Selection.Text := '';
                    Inc(tables);
                   end else
                   begin
                    Selection.Text := '';
                    WordA.ActiveDocument.Tables.Item(tables).Delete;
                   end;
                  end; 
             '2': begin
                   s := fData.CustomSelS('TB_USER',Copy(Selection.Text,3,Length(Selection.Text)),'where ID='+IntToStr(UserID));
                   if Length(s)>0 then
                   begin
                    Selection.Text := '';
                    Inc(loctabs);
                   end else
                   begin
                    Selection.Text := '';
                    WordA.Selection.Delete(EmptyParam,EmptyParam);
                    WordA.ActiveDocument.Tables.Item(tables-1).Tables.Item(loctabs).Delete;
                   end;
                  end;
             end;
   { ФОРМИРОВАНИЕ НАЗВАНИЯ }
    'n','N': begin
              i:=fData.CustomSelI('TB_USER',Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(UserID));
              case Selection.Text[2] of
               's','S': case i of
                         0: Selection.Text:='мужской';
                         1: Selection.Text:='женский';
                        end;
               'k','K': case i of
                         0: Selection.Text:='начальное';
                         1: Selection.Text:='среднее';
                         2: Selection.Text:='среднее специальное / среднее техническое';
                         3: Selection.Text:='незаконченное высшее';
                         4: Selection.Text:='высшее';
                         5: Selection.Text:='два высших / ученая степень';
                        end;
               'f','F': case i of
                         0: Selection.Text:='не женат / не замужем';
                         1: Selection.Text:='женат / замужем';
                         2: Selection.Text:='гражданский брак';
                         3: Selection.Text:='разведен(а)';
                        end;
               'l','L': case i of
                         0: Selection.Text:='город';
                         1: Selection.Text:='село';
                         2: Selection.Text:='поселок';
                         3: Selection.Text:='другое';
                        end;
               'w','W': case Selection.Text[3] of
                         'a','A': case i of
                                   0: Selection.Text:='не военнообязан';
                                   1: Selection.Text:='альтернативная служба';
                                   2: Selection.Text:='служил / в запасе';
                                   3: Selection.Text:='не служил (военнообязан)';
                                   4: Selection.Text:='служу';
                                  end;
                         'o','O': case i of
                                   0: Selection.Text:='Частный предприниматель';
                                   1: Selection.Text:='Наемный рабочий';
                                   2: Selection.Text:='Временно безработный';
                                   3: Selection.Text:='Пенсионер';
                                   4: Selection.Text:='Студент';
                                  end;
                        end;
               'h','H': case Selection.Text[3] of
                         'p','P': case i of
                                   0: Selection.Text:='район';
                                   1: Selection.Text:='область';
                                   2: Selection.Text:='другое';
                                  end;
                         't','T': case i of
                                   0: Selection.Text:='город';
                                   1: Selection.Text:='село';
                                   2: Selection.Text:='поселок';
                                   3: Selection.Text:='другое';
                                  end;
                         'o','O': case i of
                                   0: Selection.Text:='Владелец';
                                   1: Selection.Text:='Владелец части';
                                   2: Selection.Text:='Орендатор';
                                   3: Selection.Text:='Живу с родителями';
                                   4: Selection.Text:='Другое';
                                  end;

                        end;
              end;
             end;
   { ЗАПОЛНЕНИЕ НАЗВАНИЯ ИЛИ УДАЛЕНИЕ ТАБЛИЦЫ }
    'm','M': begin
              loctabs := 1;
              i:=fData.CustomSelI('TB_USER',Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(UserID));
              case Selection.Text[2] of
               'd','D': case i of
                         0: begin
                             Selection.Text := '';
                             WordA.Selection.Delete(EmptyParam,EmptyParam);
                             WordA.ActiveDocument.Tables.Item(tables).Delete;
                            end;
                         1: begin
                             Selection.Text := '';
                             Inc(tables);
                            end;
                        end;
               'l','L': case i of
                         1: begin
                             Selection.Text := '';
                             WordA.ActiveDocument.Tables.Item(tables).Delete;
                             WordA.Selection.Delete(EmptyParam,EmptyParam);
                            end;
                         0: begin
                             Selection.Text := '';
                             Inc(tables);
                            end;
                        end;
               's','S': case i of
                         1: begin
                             Selection.Text := '';
                             WordA.ActiveDocument.Tables.Item(tables).Delete;
                             WordA.Selection.Delete(EmptyParam,EmptyParam);
                            end;
                         0: begin
                             Selection.Text := '';
                             Inc(tables);
                            end;
                        end;
               'f','F': case i of
                         0,4: begin
                               Selection.Text := '';
                               WordA.ActiveDocument.Tables.Item(tables).Delete;
                               WordA.Selection.Delete(EmptyParam,EmptyParam);
                              end;
                         1,2: begin
                               Selection.Text := '';
                               Inc(tables);
                              end;
                        end;
               'w','W': case Selection.Text[3] of
                         'p','P': case i of
                                   0: begin
                                       Selection.Text := '';
                                       WordA.ActiveDocument.Tables.Item(tables).Delete;
                                       WordA.Selection.Delete(EmptyParam,EmptyParam);
                                      end;
                                   1: begin
                                       Selection.Text := '';
                                       Inc(tables);
                                      end;
                                  end;
                         'o','O': case i of
                                   2,3,4: begin
                                           Selection.Text := '';
                                           WordA.ActiveDocument.Tables.Item(tables).Delete;
                                           WordA.Selection.Delete(EmptyParam,EmptyParam);
                                          end;
                                     0,1: begin
                                          Selection.Text := '';
                                          Inc(tables);
                                         end;
                                  end;
                        end;
              end;
             end;
   { ДАТА }
    'd','D': begin
              s:=fData.CustomSelS('TB_USER',Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(UserID));
              i:=pos(' ',s);
              delete(s,i,length(s));
              Selection.Text:=s;
             end;

    { *********************************** }
    {                 UWORK               }
    { *********************************** }

   { ТЕКСТОВОЕ ПОЛЕ }
    'h','H': Selection.Text := fData.CustomSelS('TB_UWORK',Copy(Selection.Text,2,Length(Selection.Text)),'where USR='+IntToStr(UserID));
    { ДАТА }
    'g','G': begin
              s:=fData.CustomSelS('TB_UWORK',Copy(Selection.Text,2,Length(Selection.Text)),'where USR='+IntToStr(UserID));
              i:=pos(' ',s);
              delete(s,i,length(s));
              Selection.Text:=s;
             end;
    { ПРИМЕЧАНИЕ или ТАБЛИЦА ВЛОЖЕННАЯ. ЕСЛИ ДЛИНА > 0 }
    'v','V': case Selection.Text[2] of
              '0': begin
                    s := fData.CustomSelS('TB_UWORK',Copy(Selection.Text,3,Length(Selection.Text)),'where USR='+IntToStr(UserID));
                    if (Length(s)>0) then Selection.Text := ('Примечание: '+s) else Selection.Text := '';
                   end;
              '1': begin
                    s := fData.CustomSelS('TB_UWORK',Copy(Selection.Text,3,Length(Selection.Text)),'where USR='+IntToStr(UserID));
                    if Length(s)>0 then
                    begin
                     Selection.Text := '';
                     Inc(loctabs);
                    end else
                    begin
                     Selection.Text := '';
                     WordA.Selection.Delete(EmptyParam,EmptyParam);
                     WordA.ActiveDocument.Tables.Item(tables-1).Tables.Item(loctabs).Delete;
                    end;
                   end;
              'A','a': Selection.Text := 'Автор сего чуда, в точности, программы Кучеренко Вадим Владимирович :) Связь с автором: drago_magic@mail.ru ;)';
             end;
    { ПЕРЕКЛЮЧАТЕЛЬ }
    'x','X': begin
              s := Copy(Selection.Text,2,Length(Selection.Text));
              Selection.Text := '';
              Selection.NextField;
              case fData.CustomSelI('TB_UWORK',s,'where USR='+IntToStr(UserID)) of
               0: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := FALSE;
               1: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := TRUE;
              end;
              Inc(cur);
             end;
        '2': case fData.CustomSelI('TB_UWORK',Copy(Selection.Text,2,Length(Selection.Text)),'where USR='+IntToStr(UserID)) of
               0: begin
                   Selection.Text := '';
                   WordA.Selection.Delete(EmptyParam,EmptyParam);
                   WordA.ActiveDocument.Tables.Item(tables-1).Tables.Item(loctabs).Delete;
                  end;
               1: begin
                   Selection.Text := '';
                   Inc(loctabs);
                  end;
              end;
   { ФОРМИРОВАНИЕ НАЗВАНИЯ }
    'z','Z': begin
              i:=fData.CustomSelI('TB_UWORK',Copy(Selection.Text,2,Length(Selection.Text)),'where USR='+IntToStr(UserID));
              case Selection.Text[2] of
               't','T': case i of
                         0: Selection.Text:='Частное предприятие';
                         1: Selection.Text:='Частная компания';
                         2: Selection.Text:='Государственная компания';
                        end;
               'd','D': case i of
                         0: Selection.Text:='Владелец';
                         1: Selection.Text:='Директор / Управляющий';
                         2: Selection.Text:='Начальник отдела';
                         3: Selection.Text:='Сотрудник';
                         4: Selection.Text:='Технический персонал';
                         5: Selection.Text:='Другое';
                        end;
               'o','O',
               'w','W': case i of
                         0: Selection.Text:='Да';
                         1: Selection.Text:='Нет';
                        end;
              end;
             end;

    { *********************************** }
    {              ПОРУЧИТЕЛЬ             }
    { *********************************** }

    { ТЕКСТОВОЕ ПОЛЕ }
    'f','F': Selection.Text := fData.CustomSelS('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=0)and(USR='+IntToStr(UserID)+')');
    { ДАТА }
    'a','A': begin
              s:=fData.CustomSelS('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=0)and(USR='+IntToStr(UserID)+')');
              i:=pos(' ',s);
              delete(s,i,length(s));
              Selection.Text:=s;
             end;
    { ПРИМЕЧАНИЕ. ЕСЛИ ДЛИНА > 0 }
    'b','B': begin
              s := fData.CustomSelS('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=0)and(USR='+IntToStr(UserID)+')');
              if (Length(s)>0) then Selection.Text := ('Примечание: '+s) else
              begin
               Selection.Text := '';
//               WordA.Selection.Delete(EmptyParam,EmptyParam);
              end;
             end;
    { ПЕРЕКЛЮЧАТЕЛЬ }
    'j','J': begin
              s := Copy(Selection.Text,2,Length(Selection.Text));
              Selection.Text := '';
              Selection.NextField;
              case fData.CustomSelI('TB_UHUM',s,'where (SFAMILY=0)and(USR='+IntToStr(UserID)+')') of
               0: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := FALSE;
               1: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := TRUE;
              end;
              Inc(cur);
             end;
    { ТАБЛИЦА }
    'l','L': case fData.CustomSelI('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=0)and(USR='+IntToStr(UserID)+')') of
              1: begin
                  Selection.Text := '';
                  WordA.ActiveDocument.Tables.Item(tables-1).Tables.Item(1).Delete;
                  WordA.Selection.Delete(EmptyParam,EmptyParam);
                 end;
              0: begin
                  Selection.Text := '';
                  Inc(tables);
                 end;
             end;
    { ФОРМИРОВАНИЕ НАЗВАНИЯ }
    'k','K': begin
              i:=fData.CustomSelI('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=0)and(USR='+IntToStr(UserID)+')');
              case Selection.Text[2] of
               's','S': case i of
                         0: Selection.Text:='мужской';
                         1: Selection.Text:='женский';
                        end;
               'h','H',
               'l','L': case i of
                         0: Selection.Text:='город';
                         1: Selection.Text:='село';
                         2: Selection.Text:='поселок';
                         3: Selection.Text:='другое';
                        end;
               'w','W': case i of
                         0: Selection.Text:='Частный предприниматель';
                         1: Selection.Text:='Наемный работник';
                         2: Selection.Text:='Домохозяин(ка)';
                         3: Selection.Text:='Студент(ка)';
                         4: Selection.Text:='Пенсионер(ка)';
                        end;
              end;
             end;

    { *********************************** }
    {                СЕМЬЯ                }
    { *********************************** }

    { ТЕКСТОВОЕ ПОЛЕ }
    'r','R': Selection.Text := fData.CustomSelS('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=1)and(USR='+IntToStr(UserID)+')');
    { ДАТА }
    's','S': begin
              s:=fData.CustomSelS('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=1)and(USR='+IntToStr(UserID)+')');
              i:=pos(' ',s);
              delete(s,i,length(s));
              Selection.Text:=s;
             end;
    { ПРИМЕЧАНИЕ. ЕСЛИ ДЛИНА > 0 }
    'e','E': begin
              s := fData.CustomSelS('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=1)and(USR='+IntToStr(UserID)+')');
              if (Length(s)>0) then Selection.Text := ('Примечание: '+s) else
              begin
               Selection.Text := '';
//              WordA.Selection.Delete(EmptyParam,EmptyParam);
              end;
             end;
    { ПЕРЕКЛЮЧАТЕЛЬ }
    'y','Y': begin
              s := Copy(Selection.Text,2,Length(Selection.Text));
              Selection.Text := '';
              Selection.NextField;
              case fData.CustomSelI('TB_UHUM',s,'where (SFAMILY=1)and(USR='+IntToStr(UserID)+')') of
               0: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := FALSE;
               1: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := TRUE;
              end;
              Inc(cur);
             end;
    { ТАБЛИЦА }
    'w','W': case fData.CustomSelI('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=1)and(USR='+IntToStr(UserID)+')') of
              1: begin
                  Selection.Text := '';
                  WordA.ActiveDocument.Tables.Item(tables-1).Tables.Item(1).Delete;
                  WordA.Selection.Delete(EmptyParam,EmptyParam);
                 end;
              0: begin
                  Selection.Text := '';
                  Inc(tables);
                 end;
             end;
    { ФОРМИРОВАНИЕ НАЗВАНИЯ }
    'o','O': begin
              i:=fData.CustomSelI('TB_UHUM',Copy(Selection.Text,2,Length(Selection.Text)),'where (SFAMILY=1)and(USR='+IntToStr(UserID)+')');
              case Selection.Text[2] of
               's','S': case i of
                         0: Selection.Text:='мужской';
                         1: Selection.Text:='женский';
                        end;
               'h','H',
               'l','L': case i of
                         0: Selection.Text:='город';
                         1: Selection.Text:='село';
                         2: Selection.Text:='поселок';
                         3: Selection.Text:='другое';
                        end;
               'w','W': case i of
                         0: Selection.Text:='Частный предприниматель';
                         1: Selection.Text:='Наемный работник';
                         2: Selection.Text:='Домохозяин(ка)';
                         3: Selection.Text:='Студент(ка)';
                         4: Selection.Text:='Пенсионер(ка)';
                        end;
              end;
             end;

    { *********************************** }
    {            ДОП. ТАБЛИЦА             }
    { *********************************** }

    { ТЕКСТОВОЕ ПОЛЕ }
    'u','U': Selection.Text := fData.CustomSelS(sTable,Copy(Selection.Text,2,Length(Selection.Text)),'where USR='+IntToStr(UserID));
    { ПРИМЕЧАНИЕ. ЕСЛИ ДЛИНА > 0 }
        '9': begin
              s := fData.CustomSelS(sTable,Copy(Selection.Text,2,Length(Selection.Text)),'where USR='+IntToStr(UserID));
              if (Length(s)>0) then Selection.Text := ('Примечание: '+s) else
              begin
               Selection.Text := '';
//               WordA.Selection.Delete(EmptyParam,EmptyParam);
              end;
             end;
    { ПЕРЕКЛЮЧАТЕЛЬ }
        '0': begin
              s := Copy(Selection.Text,2,Length(Selection.Text));
              Selection.Text := '';
              Selection.NextField;
              case fData.CustomSelI(sTable,s,'where USR='+IntToStr(UserID)) of
               0: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := FALSE;
               1: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := TRUE;
              end;
              Inc(cur);
             end;
    { ТАБЛИЦА }
        '3': case fData.CustomSelI(sTable,Copy(Selection.Text,2,Length(Selection.Text)),'where USR='+IntToStr(UserID)) of
              0: begin
                  Selection.Text := '';
                  WordA.ActiveDocument.Tables.Item(tables).Delete;
                  WordA.Selection.Delete(EmptyParam,EmptyParam);
                 end;
              1: begin
                  Selection.Text := '';
                  Inc(tables);
                 end;
             end;
    { ФОРМИРОВАНИЕ НАЗВАНИЯ }
    'p','P': begin
              i:=fData.CustomSelI(sTable,Copy(Selection.Text,2,Length(Selection.Text)),'where USR='+IntToStr(UserID));
              case sTable[5] of
               'A': case Selection.Text[2] of
                     't','T': case i of
                               0: Selection.Text:='Легковое';
                               1: Selection.Text:='Грузопассажирское';
                               2: Selection.Text:='Грузовое';
                               3: Selection.Text:='Другое';
                              end;
                     'n','N': case i of
                               0: Selection.Text:='Новое';
                               1: Selection.Text:='б/у';
                              end;
                     'd','D': case i of
                               0: Selection.Text:='Иностранного пр-во';
                               1: Selection.Text:='Китай Индия';
                               2: Selection.Text:='Азия';
                               3: Selection.Text:='СНГ';
                               4: Selection.Text:='Украина';
                               5: Selection.Text:='Другое';
                              end;
                    end;
               'B': case Selection.Text[3] of
                     'y','Y': case i of
                               0: Selection.Text:='Квартира';
                               1: Selection.Text:='Дом';
                               2: Selection.Text:='Часть дома';
                               3: Selection.Text:='Другое';
                              end;
                     'r','R': case i of
                               0: Selection.Text:='первичный';
                               1: Selection.Text:='вторичный';
                              end;
                    end;
               'E': case i of
                     0: Selection.Text:='Сельхоз нужды';
                     1: Selection.Text:='Строительство';
                     2: Selection.Text:='Другое';
                    end;
               'Z': case i of
                     0: Selection.Text:='Недвижимость';
                     1: Selection.Text:='Авто';
                     2: Selection.Text:='Земля';
                     3: Selection.Text:='Депозит';
                     4: Selection.Text:='Другое';
                    end;


              end;
             end;
   'q','Q': begin
             WordA.Selection.Text := '';
             break;
            end;




   end;
   Selection.NextField;
  end;

end;
  WordA.Selection.Text := '';
  WordA.Selection.Delete(EmptyParam,EmptyParam);
  fWait.Close();
  fMain.Enabled := TRUE;
 except
  fWait.Close();
  fMain.Enabled := TRUE;
  MessageBox(0,'Произошла ошибка при выводе в Microsoft Word. Попробуйте повторить попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bUAprintClick(Sender: TObject);
var c: OleVariant; t,lt,vt:integer;
begin
 t:=1; c:=1; lt:=1; vt:=1;
 if UPrintPrepare('A')=0 then
 begin
  UPrint('TB_USER','where ID='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])),integer(lbUA.Items.Objects[lbUA.ItemIndex]),t,lt,vt,c);
  Clearing();
  fWait.Close();
  fMain.Enabled := TRUE;
 end;
end;

procedure TfMain.bUBprintClick(Sender: TObject);
var c: OleVariant; t,lt,vt:integer;
begin
 t:=1; c:=1; lt:=1; vt:=1;
 if UPrintPrepare('B')=0 then
 begin
  UPrint('TB_USER','where ID='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])),integer(lbUB.Items.Objects[lbUB.ItemIndex]),t,lt,vt,c);
  Clearing();
  fWait.Close();
  fMain.Enabled := TRUE;
 end;
end;

procedure TfMain.bUEprintClick(Sender: TObject);
var c: OleVariant; t,lt,vt:integer;
begin
 t:=1; c:=1; lt:=1; vt:=1;
 if UPrintPrepare('E')=0 then
 begin
  UPrint('TB_USER','where ID='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])),integer(lbUE.Items.Objects[lbUE.ItemIndex]),t,lt,vt,c);
  Clearing();
  fWait.Close();
  fMain.Enabled := TRUE;
 end;
end;

procedure TfMain.bUZprintClick(Sender: TObject);
var c: OleVariant; t,lt,vt:integer;
begin
 t:=1; c:=1; lt:=1; vt:=1;
 if UPrintPrepare('Z')=0 then
 begin
  UPrint('TB_USER','where ID='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])),integer(lbUZ.Items.Objects[lbUZ.ItemIndex]),t,lt,vt,c);
  Clearing();
  fWait.Close();
  fMain.Enabled := TRUE;
 end;
end;

procedure TfMain.bUNprintClick(Sender: TObject);
var c: OleVariant; t,lt,vt:integer;
begin
 t:=1; c:=1; lt:=1; vt:=1;
 if UPrintPrepare('N')=0 then
 begin
  lvt:=-1;
  UPrint('TB_USER','where ID='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])),integer(lbUN.Items.Objects[lbUN.ItemIndex]),t,lt,vt,c);
  Clearing();
  fWait.Close();
  fMain.Enabled := TRUE;
 end;
end;

procedure TfMain.uAutoEnter(Sender: TObject);
var Order: string;
begin
 try
  case rguA.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUA,'TB_USER','where TUSER=0',Order)=2 then
  begin
   bUAEdit.Enabled  := FALSE;
   bUAdel.Enabled   := FALSE;
   bUAprint.Enabled := FALSE;
   bUAlock.Enabled  := FALSE;
   bFindBankA.Enabled:=FALSE;
   bUAExport.Enabled :=FALSE;
  end else
  begin
   bUAEdit.Enabled  := TRUE;
   bUAdel.Enabled   := TRUE;
   bUAprint.Enabled := TRUE;
   bUAlock.Enabled  := TRUE;
   bFindBankA.Enabled:=TRUE;
   bUAExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.uBuildEnter(Sender: TObject);
var Order: string;
begin
 try
  case rguB.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUB,'TB_USER','where TUSER=1',Order)=2 then
  begin
   bUBEdit.Enabled  := FALSE;
   bUBdel.Enabled   := FALSE;
   bUBprint.Enabled := FALSE;
   bUBlock.Enabled  := FALSE;
   bFindBankB.Enabled:=FALSE;
   bUBExport.Enabled :=FALSE;
  end else
  begin
   bUBEdit.Enabled  := TRUE;
   bUBdel.Enabled   := TRUE;
   bUBprint.Enabled := TRUE;
   bUBlock.Enabled  := TRUE;
   bFindBankB.Enabled:=TRUE;
   bUBExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.BankPrint(Table: string; BankID: integer; sTable: string);
var FileName, cur: OleVariant;
    i, count, c, tables, w_del,lv:integer;
    tt: array [0..9] of integer;
    s, av, tav: string;
    vt, // указатель на вложенную таблицу
    vn, // количество ПУСТЫХ вложенных таблиц
    vc: integer; // количество вложенных таблиц
begin
 try
  Application.CreateForm(TfWait, fWait);
  fWait.ParentWindow := fMain.Handle;
  fWait.pb.Position := 0;
  fWait.Show();
  fMain.Enabled := FALSE;
  if Length(Table)<7 then s:='BankNon' else
  case Table[8] of
   'A': s:='BankAuto';
   'B': s:='BankBuild';
   'E': s:='BankEarth';
   'Z': s:='BankZalog';
   'N': s:='BankNon';
  end;
  FileName:=GetCurrentDir+'\BASE\'+s+'.dot';
 try  // Word не запущен, запустить
  WordA.Disconnect;
  WordA.Connect;
  WordA.Visible := TRUE;
//  WordA.Visible := FALSE;
 except
  WordA.Disconnect;
  fWait.Close();
  fMain.Enabled := TRUE;
  MessageBox(0,'Произошла ошибка! Не удается найти Microsoft Word. Установка этого приложения исправит проблему.'+#10#13+'Или произошла ошибка на уровне Microsoft Word. Закройте MS Word и попробуйте повторить попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
  Exit;
 end;
 with WordA do
 begin
  WordA.Documents.Open(FileName,EmptyParam,EmptyParam,EmptyParam,
                          EmptyParam,EmptyParam,EmptyParam,
	                  EmptyParam,EmptyParam,EmptyParam,
	                  EmptyParam,EmptyParam);
  SelectFirst;
  Selection.NextField;
  cur := 1; tables := 1; vt:=1; vc:=0; vn:=0; w_del:=0;
  av  := ''; tav := '';
  while (Selection.Text <> 'q')or(Selection.Text <> 'Q') do
  begin
   fWait.pb.StepIt;
   case Selection.Text[1] of
    { ТЕКСТОВОЕ ПОЛЕ }
    't','T': Selection.Text := fData.CustomSelS(Table,Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(BankID));
    { ПЕРЕКЛЮЧАТЕЛЬ }
    'c','C': begin
              s := Copy(Selection.Text,2,Length(Selection.Text));
              Selection.Text := '';
              Selection.NextField;
              case fData.CustomSelI(Table,s,'where ID='+IntToStr(BankID)) of
               0: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := FALSE;
               1: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := TRUE;
              end;
              Inc(cur);
             end;
    {    !!!   *********   !!!    }
    { ---***--- ТАБЛИЦЫ ---***--- }
    {    !!!   *********   !!!    }
    { ТЕКСТ }
    'i','I': begin
              s := fData.CustomSelS(Table,Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(BankID));
              if Length(s)>0 then Selection.Text := ''
              else TabDel(lv,tt);
             end;
    { BOOLEAN }
    'n','N': if Selection.Text[2]='0' then { ФОРМИРУЕМ НАЗВАНИЕ ДЛЯ ЗАГОЛОВКА ТАБЛИЦЫ }
             begin
              s:='';
              case Selection.Text[8] of
               'L': s := 'Легковые авто';
               'M': s := 'Грузопассажирские авто';
               'H': s := 'Грузовые авто';
               'E': begin
                     s := 'Другие авто';
                     case Selection.Text[11] of
                      'N': s := s + ' новые';
                      'O': s := s + ' б/у';
                      end;
                    end;
              end;
              case Selection.Text[10] of
               'N': s := s + ' новые';
               'O': s := s + ' б/у';
              end;
              Selection.Text := '';
              av := s;
             { ОБЫЧНАЯ ТАБЛИЦА }
             end else case fData.CustomSelI(Table,Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(BankID)) of
              0: begin
                  Selection.Text := '';
                  TabDel(lv,tt);
                 end;
              1: Selection.Text := '';
             end;
    { ПРОПИСКА }
    'p','P': case fData.CustomSelI(Table,Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(BankID)) of
              1: Selection.Text := 'Район';
              2: Selection.Text := 'Область';
              3: Selection.Text := 'Другое';
             end;
    { ФЛАГ О ВЛОЖЕННЫХ ТАБЛИЦАХ }
    'z','Z': case Selection.Text[2] of
             'n','N': begin
                       lv:=-1;
                       s:=copy(Selection.Text,3,Length(Selection.Text));
                       while Length(s)>0 do
                       begin
                        Inc(lv);
                        i:=pos('t',s);
                        tt[lv]:=StrToInt(copy(s,1,i-1));
                        delete(s,1,i);
                       end;
                       Selection.Text:='';
                      end;
             'i','I': begin
                       inc(tt[StrToInt(Selection.Text[3])]);
                       Selection.Text:='';
                      end;
             's','S': begin lv:=StrToInt(Selection.Text[3]); Selection.Text:=''; end;
             'z','Z': begin tt[StrToInt(Selection.Text[3])]:=StrToInt(Selection.Text[4]); Selection.Text:=''; end;
             end;
    { ВЛОЖЕННЫЕ ТАБЛИЦЫ }
    'v','V': case fData.CustomSelI(Table,Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(BankID)) of
              0: TabDel(lv,tt);
              1: Selection.Text := '';
             end;
    { ФОРМИРОВАНИЕ НАЗВАНИЯ ДЛЯ АВТО }
    'a','A': case fData.CustomSelI(Table,Copy(Selection.Text,2,Length(Selection.Text)),'where ID='+IntToStr(BankID)) of
              0: begin
                  Selection.Text := '';
                  TabDel(lv,tt);
                 end;
              1: begin
                  tav := Copy(Selection.Text,7,Length(Selection.Text));
                  if Length(tav)=5 then
                  case Selection.Text[11] of
                   'F': Selection.Text := 'иностранного пр-ва';
                   'J': Selection.Text := 'Китай, Индия';
                   'A': Selection.Text := 'Азия';
                   'S': Selection.Text := 'СНГ';
                   'U': Selection.Text := 'Украина';
                   'E': Selection.Text := 'другие';
                  end else
                  case Selection.Text[12] of
                   'F': Selection.Text := 'иностранного пр-ва';
                   'J': Selection.Text := 'Китай, Индия';
                   'A': Selection.Text := 'Азия';
                   'S': Selection.Text := 'СНГ';
                   'U': Selection.Text := 'Украина';
                   'E': Selection.Text := 'другие';
                  end;
                  delete(tav,Pos('_',tav),1);
                  delete(tav,Pos('_',tav),1);
                  if (Length(tav) > 3) then delete(tav,2,1);
                  Selection.Text := av+' '+Selection.Text;
                 end;
             end;
    { ТЕКСТ НА ВЫБОР: ДА/НЕТ или НА_ОСТ/НА_СУМ или %/грн}
    'b','B': case Selection.Text[2] of
              '0': case fData.CustomSelI(Table,Copy(Selection.Text,3,Length(Selection.Text)),'where ID='+IntToStr(BankID)) of
                    0: Selection.Text := 'Да';
                    1: Selection.Text := 'Нет';
                   end;
              '1': case fData.CustomSelI(Table,Copy(Selection.Text,3,Length(Selection.Text)),'where ID='+IntToStr(BankID)) of
                    0: Selection.Text := 'на ост.';
                    1: Selection.Text := 'на сум.';
                   end;
              '2': case fData.CustomSelI(Table,Copy(Selection.Text,3,Length(Selection.Text)),'where ID='+IntToStr(BankID)) of
                    0: Selection.Text := '%';
                    1: Selection.Text := 'грн.';
                   end;
             end;
    

    {!----------------------!}
    { ДОПОЛНИТЕЛЬНАЯ ТАБЛИЦА }
    {!----------------------!}

    { ПЕРЕКЛЮЧАТЕЛЬ }
    'k','K': begin
              s := Copy(Selection.Text,2,Length(Selection.Text));
              Selection.Text := '';
              Selection.NextField;
              case fData.CustomSelI(sTable,s,'where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='''+UpperCase(tav)+'''))') of
               0: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := FALSE;
               1: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := TRUE;
              end;
              Inc(cur);
             end;
    { ПРИМЕЧАНИЕ }
    'y','Y': begin
              s := fData.CustomSelS(sTable,Copy(Selection.Text,2,Length(Selection.Text)),'where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='''+UpperCase(tav)+'''))');
              if Length(s)>0 then Selection.Text:=('Примечание: '+s) else Selection.Text:='';
             end;
    { ТЕКСТОВОЕ ПОЛЕ ДЛЯ ТАБЛИЦЫ }
    'u','U': if (Selection.Text[2]='0') then
             case fData.CustomSelI(sTable,Copy(Selection.Text,3,Length(Selection.Text)),'where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='''+UpperCase(tav)+'''))') of
              0: Selection.Text := '%';
              1: Selection.Text := 'грн';
             end else
             if (Selection.Text[2]='1') then
             case fData.CustomSelI(sTable,Copy(Selection.Text,3,Length(Selection.Text)),'where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='''+UpperCase(tav)+'''))') of
              0: Selection.Text := 'на ост.';
              1: Selection.Text := 'на сум.';
             end else Selection.Text := fData.CustomSelS(sTable,Copy(Selection.Text,2,Length(Selection.Text)),'where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='''+UpperCase(tav)+'''))');
    { ВЛОЖЕННЫЕ ТАБЛИЦЫ }
    'w','W': case fData.CustomSelI(sTable,Copy(Selection.Text,2,Length(Selection.Text)),'where ((BANK='+IntToStr(BankID)+')and(UPPER(AUTO_T)='''+UpperCase(tav)+'''))') of
              0: begin
                  Selection.Text := '';
                  TabDel(lv,tt);
                 end;
              1: Selection.Text := '';
             end;
    'q','Q': break;


   end;
   Selection.NextField;
  end;
  { ПРИВЕДЕНИЕ ДОКУМЕНТА В БОЖЕСКИЙ ВИД :) }
   Clearing();
end;
  WordA.Selection.Text := '';
  WordA.Selection.Delete(EmptyParam,EmptyParam);
  fWait.Close();
  fMain.Enabled := TRUE;
 except
  fWait.Close();
  fMain.Enabled := TRUE;
  MessageBox(0,'Произошла ошибка при выводе в Microsoft Word. Попробуйте повторить попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;


end;

procedure TfMain.bBBuildPrintClick(Sender: TObject);
begin
 BankPrint('TB_BANKBUILD',integer(lbBBuild.Items.Objects[lbBBuild.ItemIndex]));
end;

procedure TfMain.bBEarthPrintClick(Sender: TObject);
begin
 BankPrint('TB_BANKEARTH',integer(lbBEarth.Items.Objects[lbBEarth.ItemIndex]));
end;

procedure TfMain.bBZalogPrintClick(Sender: TObject);
begin
 BankPrint('TB_BANKZALOG',integer(lbBZalog.Items.Objects[lbBZalog.ItemIndex]));
end;

procedure TfMain.bBNonPrintClick(Sender: TObject);
begin
 BankPrint('TB_BANKNON',integer(lbBNon.Items.Objects[lbBNon.ItemIndex]));
end;

function TfMain.UPrint(Table: string; Where: string; UID: integer; var tables,loctabs,vt: integer; var cur: OleVariant): byte;
var i, lv: integer; s :string; b: boolean; tt: array [0..9] of integer;
begin
 try
 Result := 0; b := TRUE;
 if (lvt<>-1) then
 begin
  lv:=lvt;
  for i:=0 to 9 do
   tt[i]:=ttt[i];
 end;
 with WordA do
 begin
//  Selection.NextField;
  while (Selection.Text <> 'q')or(Selection.Text <> 'Q') do
  begin
   fWait.pb.StepIt;
   case Selection.Text[1] of
   { ТЕКСТОВОЕ ПОЛЕ }
    't','T': Selection.Text := fData.CustomSelS(Table,Copy(Selection.Text,2,Length(Selection.Text)),Where);
   { ПЕРЕКЛЮЧАТЕЛЬ }
    'c','C': begin
              s := Copy(Selection.Text,2,Length(Selection.Text));
              Selection.Text := '';
              Selection.NextField;
              case fData.CustomSelI(Table,s,Where) of
               0: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := FALSE;
               1: WordA.ActiveDocument.FormFields.Item(cur).CheckBox.Value := TRUE;
              end;
              Inc(cur);
             end;
   { ТАБЛИЦА }
    'i','I': case Selection.Text[2] of
             { ПО ДЛИНЕ ТЕКСТА }
             '0': begin
                   s := fData.CustomSelS(Table,Copy(Selection.Text,4,Length(Selection.Text)),Where);
                   if Length(s)>0 then Selection.Text := '' { ДЛИНА БОЛЬШЕ 0. ОСТАВЛЯЕМ ЖИТЬ }
                   else TabDel(lv,tt);
                   Selection.Text := '';
                  end;
             { ПО ЗНАЧЕНИЮ В БД: 0/1 }
             '1': case fData.CustomSelI(Table,Copy(Selection.Text,4,Length(Selection.Text)),Where) of
                   1: Selection.Text := '';
                   0: begin
                       Selection.Text := '';
                       TabDel(lv,tt);
                      end;
                  end;
             end;
    { ТАБЛИЦА СПЕЦИАЛИЗИРОВАННАЯ }
    'v','V': begin
             case Selection.Text[3] of
              'w','W': case fData.CustomSelI(Table,Copy(Selection.Text,3,Length(Selection.Text)),Where) of
                          0,1: Selection.Text:='';
                        2,3,4: TabDel(lv,tt);
                       end;
              'l','L': case fData.CustomSelI(Table,Copy(Selection.Text,3,Length(Selection.Text)),Where) of
                        0: Selection.Text:='';
                        1: TabDel(lv,tt);
                       end;
              'f','F': case fData.CustomSelI(Table,Copy(Selection.Text,3,Length(Selection.Text)),Where) of
                        1,2: Selection.Text:='';
                        0,3: TabDel(lv,tt);
                       end;
             end;
             Selection.Text:='';
             end;
   { ФОРМИРОВАНИЕ НАЗВАНИЯ ЮЗЕР }
    'n','N': begin
             i:=fData.CustomSelI(Table,Copy(Selection.Text,2,Length(Selection.Text)),Where);
             case Table[5] of
              {TB_UAUTO}
              'a','A': case Selection.Text[2] of
                        't','T': case i of
                                  0: Selection.Text:='Легковое';
                                  1: Selection.Text:='Грузопассажирское';
                                  2: Selection.Text:='Грузовое';
                                  3: Selection.Text:='Другое';
                                 end;
                        'n','N': case i of
                                  0: Selection.Text:='Новое';
                                  1: Selection.Text:='б/у';
                                 end;
                        'd','D': case i of
                                  0: Selection.Text:='Иностранного пр-во';
                                  1: Selection.Text:='Китай Индия';
                                  2: Selection.Text:='Азия';
                                  3: Selection.Text:='СНГ';
                                  4: Selection.Text:='Украина';
                                  5: Selection.Text:='Другое';
                                 end;
                        'm','M': case i of
                                  0: Selection.Text:='грн';
                                  1: Selection.Text:='$';
                                  2: Selection.Text:='eur';
                                  3: Selection.Text:='др';
                                 end;
                       end;
              {TB_UBUILD}
              'b','B': case Selection.Text[3] of
                        'y','Y': case i of
                                  0: Selection.Text:='Квартира';
                                  1: Selection.Text:='Дом';
                                  2: Selection.Text:='Часть дома';
                                  3: Selection.Text:='Другое';
                                 end;
                        'r','R': case i of
                                  0: Selection.Text:='первичный';
                                  1: Selection.Text:='вторичный';
                                 end;
                        'n','N': case i of
                                  0: Selection.Text:='грн';
                                  1: Selection.Text:='$';
                                  2: Selection.Text:='eur';
                                  3: Selection.Text:='др';
                                 end;
                       end;
              {TB_UEARTH}
              'e','E': case Selection.Text[2] of
                        't','T': case i of
                                  0: Selection.Text:='Сельхоз нужды';
                                  1: Selection.Text:='Строительство';
                                  2: Selection.Text:='Другое';
                                 end;
                        'm','M': case i of
                                   0: Selection.Text:='грн';
                                   1: Selection.Text:='$';
                                   2: Selection.Text:='eur';
                                   3: Selection.Text:='др';
                                  end;
                       end;
              {TB_UZALOG}
              'z','Z': case i of
                        0: Selection.Text:='грн';
                        1: Selection.Text:='$';
                        2: Selection.Text:='eur';
                        3: Selection.Text:='др';
                       end;
              {TB_UNON}
              'n','N': case i of
                        0: Selection.Text:='грн';
                        1: Selection.Text:='$';
                        2: Selection.Text:='eur';
                        3: Selection.Text:='др';
                       end;
              {TB_USER}
              's','S': case Selection.Text[2] of
                        's','S': case i of
                                  0: Selection.Text:='мужской';
                                  1: Selection.Text:='женский';
                                 end;
                        'k','K': case i of
                                  0: Selection.Text:='начальное';
                                  1: Selection.Text:='среднее';
                                  2: Selection.Text:='среднее специальное / среднее техническое';
                                  3: Selection.Text:='незаконченное высшее';
                                  4: Selection.Text:='высшее';
                                  5: Selection.Text:='два высших / ученая степень';
                                 end;
                        'f','F': case i of
                                  0: Selection.Text:='не женат / не замужем';
                                  1: Selection.Text:='женат / замужем';
                                  2: Selection.Text:='гражданский брак';
                                  3: Selection.Text:='разведен(а)';
                                 end;
                        'l','L': case i of
                                  0: Selection.Text:='город';
                                  1: Selection.Text:='село';
                                  2: Selection.Text:='поселок';
                                  3: Selection.Text:='другое';
                                 end;
                        'w','W': case Selection.Text[3] of
                                  'a','A': case i of
                                            0: Selection.Text:='не военнообязан';
                                            1: Selection.Text:='альтернативная служба';
                                            2: Selection.Text:='служил / в запасе';
                                            3: Selection.Text:='не служил (военнообязан)';
                                            4: Selection.Text:='служу';
                                           end;
                                  'o','O': case i of
                                            0: Selection.Text:='Частный предприниматель';
                                            1: Selection.Text:='Наемный рабочий';
                                            2: Selection.Text:='Временно безработный';
                                            3: Selection.Text:='Пенсионер';
                                            4: Selection.Text:='Студент';
                                           end;
                                 end;
                        'h','H': case Selection.Text[3] of
                                  'p','P': case i of
                                            0: Selection.Text:='район';
                                            1: Selection.Text:='область';
                                            2: Selection.Text:='другое';
                                           end;
                                  't','T': case i of
                                            0: Selection.Text:='город';
                                            1: Selection.Text:='село';
                                            2: Selection.Text:='поселок';
                                            3: Selection.Text:='другое';
                                           end;
                                  'o','O': case i of
                                            0: Selection.Text:='Владелец';
                                            1: Selection.Text:='Владелец части';
                                            2: Selection.Text:='Орендатор';
                                            3: Selection.Text:='Живу с родителями';
                                            4: Selection.Text:='Другое';
                                           end;

                                 end;
                       end;
              {TB_UHUM}
              'h','H': case Selection.Text[2] of
                        's','S': case i of
                                  0: Selection.Text:='мужской';
                                  1: Selection.Text:='женский';
                                 end;
                        'h','H',
                        'l','L': case i of
                                  0: Selection.Text:='город';
                                  1: Selection.Text:='село';
                                  2: Selection.Text:='поселок';
                                  3: Selection.Text:='другое';
                                 end;
                        'w','W': case i of
                                  0: Selection.Text:='Частный предприниматель';
                                  1: Selection.Text:='Наемный работник';
                                  2: Selection.Text:='Домохозяин(ка)';
                                  3: Selection.Text:='Студент(ка)';
                                  4: Selection.Text:='Пенсионер(ка)';
                                 end;
                       end;
              {TB_UWORK}
              'w','W': begin
                        i:=fData.CustomSelI(Table,Copy(Selection.Text,2,Length(Selection.Text)),Where);
                        case Selection.Text[2] of
                         't','T': case i of
                                   0: Selection.Text:='Частное предприятие';
                                   1: Selection.Text:='Частная компания';
                                   2: Selection.Text:='Государственная компания';
                                  end;
                         'd','D': case i of
                                   0: Selection.Text:='Владелец';
                                   1: Selection.Text:='Директор / Управляющий';
                                   2: Selection.Text:='Начальник отдела';
                                   3: Selection.Text:='Сотрудник';
                                   4: Selection.Text:='Технический персонал';
                                   5: Selection.Text:='Другое';
                                  end;
                         'o','O',
                         'w','W': case i of
                                   0: Selection.Text:='Да';
                                   1: Selection.Text:='Нет';
                                  end;
                        end;
                       end;
             end;
             end;
   { ЗАПОЛНЕНИЕ НАЗВАНИЯ ИЛИ УДАЛЕНИЕ ТАБЛИЦЫ }
    'm','M': begin
              lvt:=lv;
              for i:=0 to 9 do ttt[i]:=tt[i];
              s:=Selection.Text; Selection.Text:='';
              case s[2] of
               'a','A': Result:=UPrint('TB_UAUTO', 'where USR='+IntToStr(UID),UID,tables,loctabs,vt,cur);
               'b','B': Result:=UPrint('TB_UBUILD','where USR='+IntToStr(UID),UID,tables,loctabs,vt,cur);
               'e','E': Result:=UPrint('TB_UEARTH','where USR='+IntToStr(UID),UID,tables,loctabs,vt,cur);
               'n','N': Result:=UPrint('TB_UNON',  'where USR='+IntToStr(UID),UID,tables,loctabs,vt,cur);
               'z','Z': Result:=UPrint('TB_UZALOG','where USR='+IntToStr(UID),UID,tables,loctabs,vt,cur);
               's','S': Result:=UPrint('TB_UAUTO', 'where ID='+IntToStr(UID), UID,tables,loctabs,vt,cur);
               'w','W': Result:=UPrint('TB_UWORK', 'where USR='+IntToStr(UID),UID,tables,loctabs,vt,cur);
               'h','H': Result:=UPrint('TB_UHUM',  'where (SFAMILY='+s[3]+')and(USR='+IntToStr(UID)+')',UID,tables,loctabs,vt,cur);
              end;
             end;

   { ДАТА }
    'd','D': begin
              s:=fData.CustomSelS(Table,Copy(Selection.Text,2,Length(Selection.Text)),Where);
              i:=pos(' ',s);
              delete(s,i,length(s));
              Selection.Text:=s;
             end;
    'z','Z': case Selection.Text[2] of
             'n','N': begin
                       lv:=-1;
                       s:=copy(Selection.Text,3,Length(Selection.Text));
                       while Length(s)>0 do
                       begin
                        Inc(lv);
                        i:=pos('t',s);
                        tt[lv]:=StrToInt(copy(s,1,i-1));
                        delete(s,1,i);
                       end;
                       Selection.Text:='';
                      end;
             'i','I': begin
                       inc(tt[StrToInt(Selection.Text[3])]);
                       Selection.Text:='';
                      end;
             'p','P': begin Inc(lv); Selection.Text:=''; end;
             'm','M': begin Dec(lv); Selection.Text:=''; end;
             'z','Z': begin lv:=StrToInt(Selection.Text[3]); Selection.Text:=''; end;
             's','S': begin tt[StrToInt(Selection.Text[3])]:=StrToInt(Selection.Text[4]); Selection.Text:=''; end;
             end;

   'q','Q': begin
             WordA.Selection.Text := '';
             exit;
            end;
   end;
   Selection.NextField;
  end;

end;
  WordA.Selection.Text := '';
 except
  Result:=1;
  MessageBox(0,'Произошла ошибка при выводе в Microsoft Word. Попробуйте повторить попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

function TfMain.UPrintPrepare(typ: string): byte;
var FileName: OleVariant;
    s: string;
begin
 try
  Result:=0;
  Application.CreateForm(TfWait, fWait);
  fWait.ParentWindow := fMain.Handle;
  fWait.pb.Position := 0;
  fWait.Show();
  fMain.Enabled := FALSE;
  case typ[1] of
   'A': s:='UAuto';
   'B': s:='UBuild';
   'E': s:='UEarth';
   'Z': s:='UZalog';
   'N': s:='UNon';
  end;
  FileName:=GetCurrentDir+'\BASE\'+s+'.dot';
 try  // Word не запущен, запустить
  WordA.Disconnect;
  WordA.Connect;
  WordA.Visible := TRUE;
//  WordA.Visible := FALSE;
 except
  Result:=1;
  WordA.Disconnect;
  fWait.Close();
  fMain.Enabled := TRUE;
  MessageBox(0,'Произошла ошибка! Не удается найти Microsoft Word. Установка этого приложения исправит проблему.'+#10#13+'Или произошла ошибка на уровне Microsoft Word. Закройте MS Word и попробуйте повторить попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
  Exit;
 end;
 with WordA do
 begin
  WordA.Documents.Open(FileName,EmptyParam,EmptyParam,EmptyParam,
                          EmptyParam,EmptyParam,EmptyParam,
	                  EmptyParam,EmptyParam,EmptyParam,
	                  EmptyParam,EmptyParam);
  SelectFirst;
 end;
 except
  Result:=1;
  fWait.Close();
  fMain.Enabled := TRUE;
  MessageBox(0,'Произошла ошибка при выводе в Microsoft Word. Попробуйте повторить попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bUAbpClick(Sender: TObject);
begin
 BankPrint('TB_BANKAUTO',integer(lbUAbank.Items.Objects[lbUAbank.ItemIndex]),'TB_AUTO');
end;

procedure TfMain.bUBbpClick(Sender: TObject);
begin
 BankPrint('TB_BANKBUILD',integer(lbUBbank.Items.Objects[lbUBbank.ItemIndex]));
end;

procedure TfMain.bUEbpClick(Sender: TObject);
begin
 BankPrint('TB_BANKEARTH',integer(lbUEbank.Items.Objects[lbUEbank.ItemIndex]));
end;

procedure TfMain.bUZbpClick(Sender: TObject);
begin
 BankPrint('TB_BANKZALOG',integer(lbUZbank.Items.Objects[lbUZbank.ItemIndex]));
end;

function TfMain.Clearing: byte;
type TFind = record
      oFindText          : OleVariant;
      oMatchCase         : OleVariant;
      oMatchWholeWord    : OleVariant;
      oMatchWildcards    : OleVariant;
      oMatchSoundsLike   : OleVariant;
      oMatchAllWordForms : OleVariant;
      oForward           : OleVariant;
      oWrap              : OleVariant;
      oFormat            : OleVariant;
      oReplaceWith       : OleVariant;
      oReplace           : OleVariant;
     end;
var WFind: TFind;
    i: integer;
begin
{ FIRST: '_^p' }
 try
  Result := 0;
  WFind.oFindText := ' ^p';
  WFind.oMatchCase := 0;
  WFind.oMatchWholeWord := FALSE;
  WFind.oMatchWildcards := EmptyParam;
  WFind.oMatchSoundsLike := FALSE;
  WFind.oMatchAllWordForms := FALSE;
  WFind.oForward := TRUE;
  WFind.oWrap := 1;
  WFind.oFormat := FALSE;
  WFind.oReplaceWith := '^p';
  WFind.oReplace := 2;
  for i := 0 to 3 do
   WordA.Selection.Find.ExecuteOld(WFind.oFindText,WFind.oMatchCase,WFind.oMatchWholeWord,
                                   WFind.oMatchWildcards,WFind.oMatchSoundsLike,WFind.oMatchAllWordForms,
                                   WFind.oForward,WFind.oWrap,WFind.oFormat,WFind.oReplaceWith,
                                   WFind.oReplace);
 except
  Result := 1;
 end;
{ SECOND: '^p^p' }
 try
  Result := 0;
  WFind.oFindText := '^p^p';
  WFind.oMatchCase := 0;
  WFind.oMatchWholeWord := FALSE;
  WFind.oMatchWildcards := EmptyParam;
  WFind.oMatchSoundsLike := FALSE;
  WFind.oMatchAllWordForms := FALSE;
  WFind.oForward := TRUE;
  WFind.oWrap := 1;
  WFind.oFormat := FALSE;
  WFind.oReplaceWith := '^p';
  WFind.oReplace := 2;
  for i := 0 to 3 do
   WordA.Selection.Find.ExecuteOld(WFind.oFindText,WFind.oMatchCase,WFind.oMatchWholeWord,
                                   WFind.oMatchWildcards,WFind.oMatchSoundsLike,WFind.oMatchAllWordForms,
                                   WFind.oForward,WFind.oWrap,WFind.oFormat,WFind.oReplaceWith,
                                   WFind.oReplace);
 except
  Result := 1;
 end;
end;

procedure TfMain.TabDel(lev: integer; dats: array of integer);
begin
 case lev of
  -1: exit;
  0: WordA.ActiveDocument.Tables.Item(dats[0]).Delete;
  1: WordA.ActiveDocument.Tables.Item(dats[0]).Tables.Item(dats[1]).Delete;
  2: WordA.ActiveDocument.Tables.Item(dats[0]).Tables.Item(dats[1]).Tables.Item(dats[2]).Delete;
  3: WordA.ActiveDocument.Tables.Item(dats[0]).Tables.Item(dats[1]).Tables.Item(dats[2]).Tables.Item(dats[3]).Delete;
  4: WordA.ActiveDocument.Tables.Item(dats[0]).Tables.Item(dats[1]).Tables.Item(dats[2]).Tables.Item(dats[3]).Tables.Item(dats[4]).Delete;
  5: WordA.ActiveDocument.Tables.Item(dats[0]).Tables.Item(dats[1]).Tables.Item(dats[2]).Tables.Item(dats[3]).Tables.Item(dats[4]).Tables.Item(dats[5]).Delete;
 end;
end;

procedure TfMain.LauthorClick(Sender: TObject);
begin
 MessageBox(fMain.Handle,'Автор: Кучеренко Вадим Владимирович drago_magic@mail.ru','Связь с автором ;)',MB_ICONINFORMATION or MB_OK);
end;

procedure TfMain.rguAClick(Sender: TObject);
begin
 uAutoShow(self);
end;

procedure TfMain.rguBClick(Sender: TObject);
begin
 uBuildShow(self);
end;

procedure TfMain.rguEClick(Sender: TObject);
begin
 uEarthShow(self);
end;

procedure TfMain.rguZClick(Sender: TObject);
begin
 uZalogShow(self);
end;

procedure TfMain.rguNClick(Sender: TObject);
begin
 uNonShow(self);
end;

procedure TfMain.uEarthEnter(Sender: TObject);
var Order: string;
begin
 try
  case rguE.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUE,'TB_USER','where TUSER=2',Order)=2 then
  begin
   bUEEdit.Enabled  := FALSE;
   bUEdel.Enabled   := FALSE;
   bUEprint.Enabled := FALSE;
   bUElock.Enabled  := FALSE;
   bFindBankE.Enabled:=FALSE;
   bUEExport.Enabled :=FALSE;
  end else
  begin
   bUEEdit.Enabled  := TRUE;
   bUEdel.Enabled   := TRUE;
   bUEprint.Enabled := TRUE;
   bUElock.Enabled  := TRUE;
   bFindBankE.Enabled:=TRUE;
   bUEExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;

end;

procedure TfMain.uZalogEnter(Sender: TObject);
var Order: string;
begin
 try
  case rguZ.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUZ,'TB_USER','where TUSER=3',Order)=2 then
  begin
   bUZEdit.Enabled  := FALSE;
   bUZdel.Enabled   := FALSE;
   bUZprint.Enabled := FALSE;
   bUZlock.Enabled  := FALSE;
   bFindBankZ.Enabled:=FALSE;
   bUZExport.Enabled :=FALSE;
  end else
  begin
   bUZEdit.Enabled  := TRUE;
   bUZdel.Enabled   := TRUE;
   bUZprint.Enabled := TRUE;
   bUZlock.Enabled  := TRUE;
   bFindBankZ.Enabled:=TRUE;
   bUZExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.uNonEnter(Sender: TObject);
var Order: string;
begin
 try
  case rguN.ItemIndex of
   0: Order:='FAM,NAME,SNAME';
   1: Order:='DENTER';
  end;
  if fData.FillLB_users(lbUN,'TB_USER','where TUSER=4',Order)=2 then
  begin
   bUNEdit.Enabled  := FALSE;
   bUNdel.Enabled   := FALSE;
   bUNprint.Enabled := FALSE;
   bUNlock.Enabled  := FALSE;
   bFindBankN.Enabled:=FALSE;
   bUNExport.Enabled :=FALSE;
  end else
  begin
   bUNEdit.Enabled  := TRUE;
   bUNdel.Enabled   := TRUE;
   bUNprint.Enabled := TRUE;
   bUNlock.Enabled  := TRUE;
   bFindBankN.Enabled:=TRUE;
   bUNExport.Enabled :=TRUE;
  end;
 except
  MessageBox(0,'Ошибка!','Ошибка.',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.lbUNClick(Sender: TObject);
var str: string;
begin
 str:=lbUN.Items[lbUN.ItemIndex];
 lbUN.Hint:=copy(str,1,pos(' ',str));
 delete(str,1,pos(' ',str));
 lbUN.Hint:=lbUN.Hint+#10#13+copy(str,1,pos('. ',str));
 delete(str,1,pos('. ',str));
 lbUN.Hint:=lbUN.Hint+#10#13+str;
 lbUN.ShowHint := TRUE;
end;

procedure TfMain.lbUZClick(Sender: TObject);
var str: string;
begin
 str:=lbUZ.Items[lbUZ.ItemIndex];
 lbUZ.Hint:=copy(str,1,pos(' ',str));
 delete(str,1,pos(' ',str));
 lbUZ.Hint:=lbUZ.Hint+#10#13+copy(str,1,pos('. ',str));
 delete(str,1,pos('. ',str));
 lbUZ.Hint:=lbUZ.Hint+#10#13+str;
 lbUZ.ShowHint := TRUE;
end;

procedure TfMain.lbUEClick(Sender: TObject);
var str: string;
begin
 str:=lbUE.Items[lbUE.ItemIndex];
 lbUE.Hint:=copy(str,1,pos(' ',str));
 delete(str,1,pos(' ',str));
 lbUE.Hint:=lbUE.Hint+#10#13+copy(str,1,pos('. ',str));
 delete(str,1,pos('. ',str));
 lbUE.Hint:=lbUE.Hint+#10#13+str;
 lbUE.ShowHint := TRUE;
end;

procedure TfMain.lbUAClick(Sender: TObject);
var str: string;
begin
 str:=lbUA.Items[lbUA.ItemIndex];
 lbUA.Hint:=copy(str,1,pos(' ',str));
 delete(str,1,pos(' ',str));
 lbUA.Hint:=lbUA.Hint+#10#13+copy(str,1,pos('. ',str));
 delete(str,1,pos('. ',str));
 lbUA.Hint:=lbUA.Hint+#10#13+str;
 lbUA.ShowHint := TRUE;
end;

procedure TfMain.lbUBClick(Sender: TObject);
var str: string;
begin
 str:=lbUB.Items[lbUB.ItemIndex];
 lbUB.Hint:=copy(str,1,pos(' ',str));
 delete(str,1,pos(' ',str));
 lbUB.Hint:=lbUB.Hint+#10#13+copy(str,1,pos('. ',str));
 delete(str,1,pos('. ',str));
 lbUB.Hint:=lbUB.Hint+#10#13+str;
 lbUB.ShowHint := TRUE;
end;

procedure TfMain.bUNExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Беззал_'+fData.CustomSelS('TB_USER','FAM','where ID='+IntToStr(integer(lbUN.Items.Objects[lbUN.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_UNON',integer(lbUN.Items.Objects[lbUN.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bUZExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Залог_'+fData.CustomSelS('TB_USER','FAM','where ID='+IntToStr(integer(lbUZ.Items.Objects[lbUZ.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_UZALOG',integer(lbUZ.Items.Objects[lbUZ.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bUEExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Земля_'+fData.CustomSelS('TB_USER','FAM','where ID='+IntToStr(integer(lbUE.Items.Objects[lbUE.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_UEARTH',integer(lbUE.Items.Objects[lbUE.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bUBExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Недвиж_'+fData.CustomSelS('TB_USER','FAM','where ID='+IntToStr(integer(lbUB.Items.Objects[lbUB.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_UBUILD',integer(lbUB.Items.Objects[lbUB.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bUAExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Авто_'+fData.CustomSelS('TB_USER','FAM','where ID='+IntToStr(integer(lbUA.Items.Objects[lbUA.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_UAUTO',integer(lbUA.Items.Objects[lbUA.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bBAExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Авто_'+fData.CustomSelS('TB_BANKAUTO','NAME','where ID='+IntToStr(integer(lbBAuto.Items.Objects[lbBAuto.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_BANKAUTO',integer(lbBAuto.Items.Objects[lbBAuto.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bBBExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Недвиж_'+fData.CustomSelS('TB_BANKBUILD','NAME','where ID='+IntToStr(integer(lbBBuild.Items.Objects[lbBBuild.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_BANKBUILD',integer(lbBBuild.Items.Objects[lbBBuild.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;

end;

procedure TfMain.bBEExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Земля_'+fData.CustomSelS('TB_BANKEARTH','NAME','where ID='+IntToStr(integer(lbBEarth.Items.Objects[lbBEarth.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_BANKEARTH',integer(lbBEarth.Items.Objects[lbBEarth.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;

end;

procedure TfMain.bBZExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Залог_'+fData.CustomSelS('TB_BANKZALOG','NAME','where ID='+IntToStr(integer(lbBZalog.Items.Objects[lbBZalog.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_BANKZALOG',integer(lbBZalog.Items.Objects[lbBZalog.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfMain.bBNExportClick(Sender: TObject);
begin
 SaveD.InitialDir := ExtractFileDir(Application.ExeName);
 { Для красоты формируем будущее имя файла :) }
 SaveD.FileName := 'Беззал_'+fData.CustomSelS('TB_BANKNON','NAME','where ID='+IntToStr(integer(lbBNon.Items.Objects[lbBNon.ItemIndex])));
 if SaveD.Execute() then
 if Length(SaveD.FileName)>0 then
 case fData.fExport(SaveD.FileName,'TB_BANKNON',integer(lbBNon.Items.Objects[lbBNon.ItemIndex])) of
  0: MessageBox(fMain.Handle,'Данные успешно экспортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Проверьте данные и повторите попытку.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;

end;

procedure TfMain.bImportClick(Sender: TObject);
begin
 OpenD.InitialDir := ExtractFileDir(Application.ExeName);
 OpenD.Execute();
 if Length(OpenD.FileName)>0 then
 case fData.fImport(OpenD.FileName) of
  0: MessageBox(fMain.Handle,'Данные успешно импортированы.','Выполнено!',MB_ICONINFORMATION or MB_OK);
  1: MessageBox(fMain.Handle,'Произошла ошибка. Возможно такая запись уже существует.','Ошибка!',MB_ICONWARNING or MB_OK);
 end;
end;

end.
