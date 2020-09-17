unit uBAuto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons, ExtCtrls, OleServer, Word2000;

type
  TfBAuto = class(TForm)
    EName: TEdit;
    LName: TLabel;
    chTC_ST: TCheckBox;
    chTC_AM: TCheckBox;
    chTC_EL: TCheckBox;
    ETC_EL: TEdit;
    LTC: TLabel;
    Liwork: TLabel;
    cbiwork: TComboBox;
    Liwbook: TLabel;
    cbiwbook: TComboBox;
    Limoney: TLabel;
    cbimoney: TComboBox;
    Lage: TLabel;
    Lagemb: TLabel;
    Lagefb: TLabel;
    Lageme: TLabel;
    Lagefe: TLabel;
    Lagem: TLabel;
    Lagef: TLabel;
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
    Lihome: TLabel;
    Lshum: TLabel;
    cbshum: TComboBox;
    chshumf: TCheckBox;
    chshumi: TCheckBox;
    chshume: TCheckBox;
    eshume: TEdit;
    Lzalog: TLabel;
    chzalogn: TCheckBox;
    chzalogtc: TCheckBox;
    chzalogel: TCheckBox;
    ezalogel: TEdit;
    Lsummin: TLabel;
    Lsummax: TLabel;
    Lsumc1: TLabel;
    Lsumc2: TLabel;
    Esummin: TEdit;
    Esummax: TEdit;
    gbLight: TGroupBox;
    chLn: TCheckBox;
    chLnF: TCheckBox;
    chLnJ: TCheckBox;
    chLnA: TCheckBox;
    chLnS: TCheckBox;
    chLnU: TCheckBox;
    chLnE: TCheckBox;
    ELnE: TEdit;
    chLo: TCheckBox;
    chLoF: TCheckBox;
    chLoJ: TCheckBox;
    chLoA: TCheckBox;
    chLoS: TCheckBox;
    chLoU: TCheckBox;
    chLoE: TCheckBox;
    ELoE: TEdit;
    ELo: TEdit;
    gbMedium: TGroupBox;
    chMn: TCheckBox;
    chMnF: TCheckBox;
    chMnJ: TCheckBox;
    chMnA: TCheckBox;
    chMnS: TCheckBox;
    chMnU: TCheckBox;
    chMnE: TCheckBox;
    EMnE: TEdit;
    chMo: TCheckBox;
    chMoF: TCheckBox;
    chMoJ: TCheckBox;
    chMoA: TCheckBox;
    chMoS: TCheckBox;
    chMoU: TCheckBox;
    chMoE: TCheckBox;
    EMoE: TEdit;
    EMo: TEdit;
    gbHard: TGroupBox;
    chHn: TCheckBox;
    chHnF: TCheckBox;
    chHnJ: TCheckBox;
    chHnA: TCheckBox;
    chHnS: TCheckBox;
    chHnU: TCheckBox;
    chHnE: TCheckBox;
    EHnE: TEdit;
    chHo: TCheckBox;
    chHoF: TCheckBox;
    chHoJ: TCheckBox;
    chHoA: TCheckBox;
    chHoS: TCheckBox;
    chHoU: TCheckBox;
    chHoE: TCheckBox;
    EHoE: TEdit;
    EHo: TEdit;
    gbElse: TGroupBox;
    chEn: TCheckBox;
    chEnF: TCheckBox;
    chEnJ: TCheckBox;
    chEnA: TCheckBox;
    chEnS: TCheckBox;
    chEnU: TCheckBox;
    chEnE: TCheckBox;
    EEnE: TEdit;
    chEo: TCheckBox;
    chEoF: TCheckBox;
    chEoJ: TCheckBox;
    chEoA: TCheckBox;
    chEoS: TCheckBox;
    chEoU: TCheckBox;
    chEoE: TCheckBox;
    EEoE: TEdit;
    EEo: TEdit;
    LelseName: TLabel;
    EelseName: TEdit;
    Lstrax: TLabel;
    chkasko: TCheckBox;
    chocago: TCheckBox;
    Lprim: TLabel;
    Eprim: TMemo;
    chSADDCR: TCheckBox;
    ESADDCR: TMemo;
    LSADDCR: TLabel;
    Eelsem: TMemo;
    Lelsem: TLabel;
    Eneeddoc: TMemo;
    Lneeddoc: TLabel;
    Eakcia: TMemo;
    Lakcia: TLabel;
    Econtact: TMemo;
    Lcontact: TLabel;
    Eelseprim: TMemo;
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
    Bevel10: TBevel;
    WordA: TWordApplication;
    ELn: TEdit;
    EMn: TEdit;
    EHn: TEdit;
    EEn: TEdit;
    bdLnF: TSpeedButton;
    SpeedButton1: TSpeedButton;
    bdLnA: TSpeedButton;
    bdLnE: TSpeedButton;
    bdLnS: TSpeedButton;
    bdLnU: TSpeedButton;
    bdLnJ: TSpeedButton;
    bdLoE: TSpeedButton;
    bdLoU: TSpeedButton;
    bdLoS: TSpeedButton;
    bdLoA: TSpeedButton;
    bdLoJ: TSpeedButton;
    bdLoF: TSpeedButton;
    bdMnE: TSpeedButton;
    bdMnU: TSpeedButton;
    bdMnS: TSpeedButton;
    bdMnA: TSpeedButton;
    bdMnJ: TSpeedButton;
    bdMnF: TSpeedButton;
    bdMoE: TSpeedButton;
    bdMoU: TSpeedButton;
    bdMoS: TSpeedButton;
    bdMoA: TSpeedButton;
    bdMoJ: TSpeedButton;
    bdMoF: TSpeedButton;
    bdHoE: TSpeedButton;
    bdHoU: TSpeedButton;
    bdHoS: TSpeedButton;
    bdHoA: TSpeedButton;
    bdHoJ: TSpeedButton;
    bdHoF: TSpeedButton;
    bdEoE: TSpeedButton;
    bdEoU: TSpeedButton;
    bdEoS: TSpeedButton;
    bdEoA: TSpeedButton;
    bdEoJ: TSpeedButton;
    bdEoF: TSpeedButton;
    bdHnE: TSpeedButton;
    bdHnU: TSpeedButton;
    bdHnS: TSpeedButton;
    bdHnA: TSpeedButton;
    bdHnJ: TSpeedButton;
    bdHnF: TSpeedButton;
    bdEnE: TSpeedButton;
    bdEnU: TSpeedButton;
    bdEnS: TSpeedButton;
    bdEnA: TSpeedButton;
    bdEnJ: TSpeedButton;
    bdEnF: TSpeedButton;
    Lslife: TLabel;
    cbSLife: TComboBox;
    bADouble: TSpeedButton;
    procedure chTC_ELClick(Sender: TObject);
    procedure chzalognClick(Sender: TObject);
    procedure chzalogtcClick(Sender: TObject);
    procedure chzalogelClick(Sender: TObject);
    procedure chLnClick(Sender: TObject);
    procedure chLoClick(Sender: TObject);
    procedure chMnClick(Sender: TObject);
    procedure chMoClick(Sender: TObject);
    procedure chHnClick(Sender: TObject);
    procedure chHoClick(Sender: TObject);
    procedure chEnClick(Sender: TObject);
    procedure chEoClick(Sender: TObject);
    procedure chihome1Click(Sender: TObject);
    procedure chihome2Click(Sender: TObject);
    procedure chihome3Click(Sender: TObject);
    procedure chshumeClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chHnEClick(Sender: TObject);
    procedure chLoEClick(Sender: TObject);
    procedure chLnEClick(Sender: TObject);
    procedure chMnEClick(Sender: TObject);
    procedure chEnEClick(Sender: TObject);
    procedure chEoEClick(Sender: TObject);
    procedure chHoEClick(Sender: TObject);
    procedure chMoEClick(Sender: TObject);
    procedure EelseNameChange(Sender: TObject);
    procedure chLnFClick(Sender: TObject);
    procedure chLnJClick(Sender: TObject);
    procedure chLnAClick(Sender: TObject);
    procedure chLnSClick(Sender: TObject);
    procedure chLnUClick(Sender: TObject);
    procedure chLoFClick(Sender: TObject);
    procedure chLoJClick(Sender: TObject);
    procedure chLoAClick(Sender: TObject);
    procedure chLoSClick(Sender: TObject);
    procedure chLoUClick(Sender: TObject);
    procedure chMnFClick(Sender: TObject);
    procedure chMnJClick(Sender: TObject);
    procedure chMnAClick(Sender: TObject);
    procedure chMnSClick(Sender: TObject);
    procedure chMnUClick(Sender: TObject);
    procedure chMoFClick(Sender: TObject);
    procedure chMoJClick(Sender: TObject);
    procedure chMoAClick(Sender: TObject);
    procedure chMoSClick(Sender: TObject);
    procedure chMoUClick(Sender: TObject);
    procedure chHnFClick(Sender: TObject);
    procedure chHnJClick(Sender: TObject);
    procedure chHnAClick(Sender: TObject);
    procedure chHnSClick(Sender: TObject);
    procedure chHnUClick(Sender: TObject);
    procedure chHoFClick(Sender: TObject);
    procedure chHoJClick(Sender: TObject);
    procedure chHoAClick(Sender: TObject);
    procedure chHoSClick(Sender: TObject);
    procedure chHoUClick(Sender: TObject);
    procedure chEnFClick(Sender: TObject);
    procedure chEnJClick(Sender: TObject);
    procedure chEnAClick(Sender: TObject);
    procedure chEnSClick(Sender: TObject);
    procedure chEnUClick(Sender: TObject);
    procedure chEoFClick(Sender: TObject);
    procedure chEoJClick(Sender: TObject);
    procedure chEoAClick(Sender: TObject);
    procedure chEoSClick(Sender: TObject);
    procedure chEoUClick(Sender: TObject);
    procedure bdLnFClick(Sender: TObject);
    procedure bdLnJClick(Sender: TObject);
    procedure bdLnAClick(Sender: TObject);
    procedure bdLnSClick(Sender: TObject);
    procedure bdLnUClick(Sender: TObject);
    procedure bdLnEClick(Sender: TObject);
    procedure bdLoFClick(Sender: TObject);
    procedure bdLoJClick(Sender: TObject);
    procedure bdLoAClick(Sender: TObject);
    procedure bdLoSClick(Sender: TObject);
    procedure bdLoUClick(Sender: TObject);
    procedure bdLoEClick(Sender: TObject);
    procedure bdMnFClick(Sender: TObject);
    procedure bdMnJClick(Sender: TObject);
    procedure bdMnAClick(Sender: TObject);
    procedure bdMnSClick(Sender: TObject);
    procedure bdMnUClick(Sender: TObject);
    procedure bdMnEClick(Sender: TObject);
    procedure bdHnFClick(Sender: TObject);
    procedure bdHnJClick(Sender: TObject);
    procedure bdHnAClick(Sender: TObject);
    procedure bdHnSClick(Sender: TObject);
    procedure bdHnUClick(Sender: TObject);
    procedure bdHnEClick(Sender: TObject);
    procedure bdEnFClick(Sender: TObject);
    procedure bdEnJClick(Sender: TObject);
    procedure bdEnAClick(Sender: TObject);
    procedure bdEnSClick(Sender: TObject);
    procedure bdEnUClick(Sender: TObject);
    procedure bdEnEClick(Sender: TObject);
    procedure bdMoFClick(Sender: TObject);
    procedure bdMoJClick(Sender: TObject);
    procedure bdMoAClick(Sender: TObject);
    procedure bdMoSClick(Sender: TObject);
    procedure bdMoUClick(Sender: TObject);
    procedure bdMoEClick(Sender: TObject);
    procedure bdHoFClick(Sender: TObject);
    procedure bdHoJClick(Sender: TObject);
    procedure bdHoAClick(Sender: TObject);
    procedure bdHoSClick(Sender: TObject);
    procedure bdHoUClick(Sender: TObject);
    procedure bdHoEClick(Sender: TObject);
    procedure bdEoFClick(Sender: TObject);
    procedure bdEoJClick(Sender: TObject);
    procedure bdEoAClick(Sender: TObject);
    procedure bdEoSClick(Sender: TObject);
    procedure bdEoUClick(Sender: TObject);
    procedure bdEoEClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bADoubleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BPrintClick(Sender: TObject);
  private
    procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
    procedure Add();
    function Update(): byte;
    procedure CheckAuto(ChBox: TCheckBox; OpenMode: byte=0);
    function ADouble(A, P, T: integer): byte;
  public
    FMode: integer;
    BankID  : integer; { ID ·‡ÌÍ‡ ËÁ ¡ƒ. »ÒÔÓÎ¸ÁÛÂÚÒˇ ÔË Â‰‡ÍÚËÓ‚‡ÌËË ‰‡ÌÌ˚ı }
    dA,dP,dT: integer; { ‰Îˇ ‰Û·ÎËÍ‡ˆËË ‡‚ÚÓ. Ò˛‰‡ ÔÂÂ‰‡˛ÚÒˇ ‰‡ÌÌ˚Â ËÁ ÏÂÌ˛ ‚˚·Ó‡ ‰Û·ÎËÍ‡Ú‡ }
    { Public declarations }
  end;

var
  fBAuto: TfBAuto;

implementation

uses uData, uBAutoEdit, uWait, uAutoDoub, uMain;

{$R *.dfm}

procedure TfBAuto.chTC_ELClick(Sender: TObject);
begin
 if chTC_EL.Checked then ETC_EL.Enabled := TRUE else
 begin
  ETC_EL.Enabled := FALSE;
  ETC_EL.Text := '';
 end;
end;

procedure TfBAuto.chzalognClick(Sender: TObject);
begin
 if chzalogn.Checked then
 begin
  chzalogtc.Checked := FALSE;
  chzalogel.Checked := FALSE;
  ezalogel.Text := '';
 end;
end;

procedure TfBAuto.chzalogtcClick(Sender: TObject);
begin
 if chzalogtc.Checked then chzalogn.Checked := FALSE;
end;

procedure TfBAuto.chzalogelClick(Sender: TObject);
begin
 if chzalogel.Checked then chzalogn.Checked := FALSE;
 if chzalogel.Checked then ezalogel.Enabled := TRUE else
 begin
  ezalogel.Enabled := FALSE;
  ezalogel.Text    := '';
 end;
end;

procedure TfBAuto.chLnClick(Sender: TObject);
begin
 if not chLn.Checked then
 { —œ–¿ÿ»¬¿≈Ã, ”¬≈–≈Õ À» ﬁ«≈– }
 if (MessageBox(fBAuto.Handle,'¬˚ ‰ÂÈÒÚ‚ËÚÂÎ¸ÌÓ ıÓÚËÚÂ ÓÚÏÂÌËÚ¸ ‚ÒÂ?','¬˚ Û‚ÂÂÌ˚?',MB_ICONINFORMATION or MB_OKCANCEL) = 2) then
  { ﬁ«≈– œ≈–≈ƒ”Ã¿À }
  begin
   FMode := 0;
   chLn.Checked := TRUE;
   FMode := 1;
  end else
 { ﬁ«≈– ”¬≈–≈Õ. ”ƒ¿Àﬂ≈Ã... }
 begin
  chLnF.Checked := FALSE;
  chLnF.Enabled := FALSE;
  chLnJ.Checked := FALSE;
  chLnJ.Enabled := FALSE;
  chLnA.Checked := FALSE;
  chLnA.Enabled := FALSE;
  chLnS.Checked := FALSE;
  chLnS.Enabled := FALSE;
  chLnU.Checked := FALSE;
  chLnU.Enabled := FALSE;
  chLnE.Checked := FALSE;
  chLnE.Enabled := FALSE;
  ELn.Enabled  := FALSE;
  ELn.Text     := '';
  ELnE.Enabled  := FALSE;
  ELnE.Text  := '';
  chLnF.TabStop := FALSE;
  chLnJ.TabStop := FALSE;
  chLnA.TabStop := FALSE;
  chLnS.TabStop := FALSE;
  chLnU.TabStop := FALSE;
  chLnE.TabStop := FALSE;
  ELn.TabStop   := FALSE;
  ELnE.TabStop  := FALSE;
 end else
 begin
  chLnF.Enabled := TRUE;
  chLnJ.Enabled := TRUE;
  chLnA.Enabled := TRUE;
  chLnS.Enabled := TRUE;
  chLnU.Enabled := TRUE;
  chLnE.Enabled := TRUE;
  ELn.Enabled   := TRUE;

  chLnF.TabStop := TRUE;
  chLnJ.TabStop := TRUE;
  chLnA.TabStop := TRUE;
  chLnS.TabStop := TRUE;
  chLnU.TabStop := TRUE;
  chLnE.TabStop := TRUE;
  ELn.TabStop   := TRUE;
  ELnE.TabStop  := TRUE;
 end;
end;

procedure TfBAuto.chLoClick(Sender: TObject);
begin
 if not chLo.Checked then
 { —œ–¿ÿ»¬¿≈Ã, ”¬≈–≈Õ À» ﬁ«≈– }
 if (MessageBox(fBAuto.Handle,'¬˚ ‰ÂÈÒÚ‚ËÚÂÎ¸ÌÓ ıÓÚËÚÂ ÓÚÏÂÌËÚ¸ ‚ÒÂ?','¬˚ Û‚ÂÂÌ˚?',MB_ICONINFORMATION or MB_OKCANCEL) = 2) then
  { ﬁ«≈– œ≈–≈ƒ”Ã¿À }
  begin
   FMode := 0;
   chLo.Checked := TRUE;
   FMode := 1;
  end else
 { ﬁ«≈– ”¬≈–≈Õ. ”ƒ¿Àﬂ≈Ã... }
 begin
  chLoF.Checked := FALSE;
  chLoF.Enabled := FALSE;
  chLoJ.Checked := FALSE;
  chLoJ.Enabled := FALSE;
  chLoA.Checked := FALSE;
  chLoA.Enabled := FALSE;
  chLoS.Checked := FALSE;
  chLoS.Enabled := FALSE;
  chLoU.Checked := FALSE;
  chLoU.Enabled := FALSE;
  chLoE.Checked := FALSE;
  chLoE.Enabled := FALSE;
  ELo.Enabled   := FALSE;
  ELo.Text      := '';
  ELoE.Enabled  := FALSE;
  ELoE.Text     := '';
  chLoF.TabStop := FALSE;
  chLoJ.TabStop := FALSE;
  chLoA.TabStop := FALSE;
  chLoS.TabStop := FALSE;
  chLoU.TabStop := FALSE;
  chLoE.TabStop := FALSE;
  ELoE.TabStop  := FALSE;
  ELo.TabStop   := FALSE;
 end else
 begin
  chLoF.Enabled := TRUE;
  chLoJ.Enabled := TRUE;
  chLoA.Enabled := TRUE;
  chLoS.Enabled := TRUE;
  chLoU.Enabled := TRUE;
  chLoE.Enabled := TRUE;
  ELo.Enabled   := TRUE;

  chLoF.TabStop := TRUE;
  chLoJ.TabStop := TRUE;
  chLoA.TabStop := TRUE;
  chLoS.TabStop := TRUE;
  chLoU.TabStop := TRUE;
  chLoE.TabStop := TRUE;
  ELoE.TabStop  := TRUE;
  ELo.TabStop   := TRUE;
 end;
end;

procedure TfBAuto.chMnClick(Sender: TObject);
begin
 if not chMn.Checked then
 { —œ–¿ÿ»¬¿≈Ã, ”¬≈–≈Õ À» ﬁ«≈– }
 if (MessageBox(fBAuto.Handle,'¬˚ ‰ÂÈÒÚ‚ËÚÂÎ¸ÌÓ ıÓÚËÚÂ ÓÚÏÂÌËÚ¸ ‚ÒÂ?','¬˚ Û‚ÂÂÌ˚?',MB_ICONINFORMATION or MB_OKCANCEL) = 2) then
  { ﬁ«≈– œ≈–≈ƒ”Ã¿À }
  begin
   FMode := 0;
   chMn.Checked := TRUE;
   FMode := 1;
  end else
 { ﬁ«≈– ”¬≈–≈Õ. ”ƒ¿Àﬂ≈Ã... }
 begin
  chMnF.Checked := FALSE;
  chMnF.Enabled := FALSE;
  chMnJ.Checked := FALSE;
  chMnJ.Enabled := FALSE;
  chMnA.Checked := FALSE;
  chMnA.Enabled := FALSE;
  chMnS.Checked := FALSE;
  chMnS.Enabled := FALSE;
  chMnU.Checked := FALSE;
  chMnU.Enabled := FALSE;
  chMnE.Checked := FALSE;
  chMnE.Enabled := FALSE;
  EMn.Enabled   := FALSE;
  EMn.Text      := '';
  EMnE.Enabled  := FALSE;
  EMnE.Text     := '';
  chMnF.TabStop := FALSE;
  chMnJ.TabStop := FALSE;
  chMnA.TabStop := FALSE;
  chMnS.TabStop := FALSE;
  chMnU.TabStop := FALSE;
  chMnE.TabStop := FALSE;
  EMn.TabStop   := FALSE;
  EMnE.TabStop  := FALSE;
 end else
 begin
  chMnF.Enabled := TRUE;
  chMnJ.Enabled := TRUE;
  chMnA.Enabled := TRUE;
  chMnS.Enabled := TRUE;
  chMnU.Enabled := TRUE;
  chMnE.Enabled := TRUE;
  EMn.Enabled   := TRUE;

  chMnF.TabStop := TRUE;
  chMnJ.TabStop := TRUE;
  chMnA.TabStop := TRUE;
  chMnS.TabStop := TRUE;
  chMnU.TabStop := TRUE;
  chMnE.TabStop := TRUE;
  EMn.TabStop   := TRUE;
  EMnE.TabStop  := TRUE;
 end;
end;

procedure TfBAuto.chMoClick(Sender: TObject);
begin
 if not chMo.Checked then
 { —œ–¿ÿ»¬¿≈Ã, ”¬≈–≈Õ À» ﬁ«≈– }
 if (MessageBox(fBAuto.Handle,'¬˚ ‰ÂÈÒÚ‚ËÚÂÎ¸ÌÓ ıÓÚËÚÂ ÓÚÏÂÌËÚ¸ ‚ÒÂ?','¬˚ Û‚ÂÂÌ˚?',MB_ICONINFORMATION or MB_OKCANCEL) = 2) then
  { ﬁ«≈– œ≈–≈ƒ”Ã¿À }
  begin
   FMode := 0;
   chMo.Checked := TRUE;
   FMode := 1;
  end else
 { ﬁ«≈– ”¬≈–≈Õ. ”ƒ¿Àﬂ≈Ã... }
 begin
  chMoF.Checked := FALSE;
  chMoF.Enabled := FALSE;
  chMoJ.Checked := FALSE;
  chMoJ.Enabled := FALSE;
  chMoA.Checked := FALSE;
  chMoA.Enabled := FALSE;
  chMoS.Checked := FALSE;
  chMoS.Enabled := FALSE;
  chMoU.Checked := FALSE;
  chMoU.Enabled := FALSE;
  chMoE.Checked := FALSE;
  chMoE.Enabled := FALSE;
  EMo.Enabled   := FALSE;
  EMo.Text      := '';
  EMoE.Enabled  := FALSE;
  EMoE.Text  := '';
  chMoF.TabStop := FALSE;
  chMoJ.TabStop := FALSE;
  chMoA.TabStop := FALSE;
  chMoS.TabStop := FALSE;
  chMoU.TabStop := FALSE;
  chMoE.TabStop := FALSE;
  EMoE.TabStop  := FALSE;
  EMo.TabStop   := FALSE;
 end else
 begin
  chMoF.Enabled := TRUE;
  chMoJ.Enabled := TRUE;
  chMoA.Enabled := TRUE;
  chMoS.Enabled := TRUE;
  chMoU.Enabled := TRUE;
  chMoE.Enabled := TRUE;
  EMo.Enabled   := TRUE;

  chMoF.TabStop := TRUE;
  chMoJ.TabStop := TRUE;
  chMoA.TabStop := TRUE;
  chMoS.TabStop := TRUE;
  chMoU.TabStop := TRUE;
  chMoE.TabStop := TRUE;
  EMoE.TabStop  := TRUE;
  EMo.TabStop   := TRUE;
 end;
end;

procedure TfBAuto.chHnClick(Sender: TObject);
begin
 if not chHn.Checked then
 { —œ–¿ÿ»¬¿≈Ã, ”¬≈–≈Õ À» ﬁ«≈– }
 if (MessageBox(fBAuto.Handle,'¬˚ ‰ÂÈÒÚ‚ËÚÂÎ¸ÌÓ ıÓÚËÚÂ ÓÚÏÂÌËÚ¸ ‚ÒÂ?','¬˚ Û‚ÂÂÌ˚?',MB_ICONINFORMATION or MB_OKCANCEL) = 2) then
  { ﬁ«≈– œ≈–≈ƒ”Ã¿À }
  begin
   FMode := 0;
   chHn.Checked := TRUE;
   FMode := 1;
  end else
 { ﬁ«≈– ”¬≈–≈Õ. ”ƒ¿Àﬂ≈Ã... }
 begin
  chHnF.Checked := FALSE;
  chHnF.Enabled := FALSE;
  chHnJ.Checked := FALSE;
  chHnJ.Enabled := FALSE;
  chHnA.Checked := FALSE;
  chHnA.Enabled := FALSE;
  chHnS.Checked := FALSE;
  chHnS.Enabled := FALSE;
  chHnU.Checked := FALSE;
  chHnU.Enabled := FALSE;
  chHnE.Checked := FALSE;
  chHnE.Enabled := FALSE;
  EHn.Enabled   := FALSE;
  EHn.Text      := '';
  EHnE.Enabled  := FALSE;
  EHnE.Text     := '';
  chHnF.TabStop := FALSE;
  chHnJ.TabStop := FALSE;
  chHnA.TabStop := FALSE;
  chHnS.TabStop := FALSE;
  chHnU.TabStop := FALSE;
  chHnE.TabStop := FALSE;
  EHn.TabStop   := FALSE;
  EHnE.TabStop  := FALSE;
 end else
 begin
  chHnF.Enabled := TRUE;
  chHnJ.Enabled := TRUE;
  chHnA.Enabled := TRUE;
  chHnS.Enabled := TRUE;
  chHnU.Enabled := TRUE;
  chHnE.Enabled := TRUE;
  EHn.Enabled   := TRUE;

  chHnF.TabStop := TRUE;
  chHnJ.TabStop := TRUE;
  chHnA.TabStop := TRUE;
  chHnS.TabStop := TRUE;
  chHnU.TabStop := TRUE;
  chHnE.TabStop := TRUE;
  EHn.TabStop   := TRUE;
  EHnE.TabStop  := TRUE;
 end;
end;

procedure TfBAuto.chHoClick(Sender: TObject);
begin
 if not chHo.Checked then
 { —œ–¿ÿ»¬¿≈Ã, ”¬≈–≈Õ À» ﬁ«≈– }
 if (MessageBox(fBAuto.Handle,'¬˚ ‰ÂÈÒÚ‚ËÚÂÎ¸ÌÓ ıÓÚËÚÂ ÓÚÏÂÌËÚ¸ ‚ÒÂ?','¬˚ Û‚ÂÂÌ˚?',MB_ICONINFORMATION or MB_OKCANCEL) = 2) then
  { ﬁ«≈– œ≈–≈ƒ”Ã¿À }
  begin
   FMode := 0;
   chHo.Checked := TRUE;
   FMode := 1;
  end else
 { ﬁ«≈– ”¬≈–≈Õ. ”ƒ¿Àﬂ≈Ã... }
 begin
  chHoF.Checked := FALSE;
  chHoF.Enabled := FALSE;
  chHoJ.Checked := FALSE;
  chHoJ.Enabled := FALSE;
  chHoA.Checked := FALSE;
  chHoA.Enabled := FALSE;
  chHoS.Checked := FALSE;
  chHoS.Enabled := FALSE;
  chHoU.Checked := FALSE;
  chHoU.Enabled := FALSE;
  chHoE.Checked := FALSE;
  chHoE.Enabled := FALSE;
  EHo.Enabled   := FALSE;
  EHo.Text      := '';
  EHoE.Enabled  := FALSE;
  EHoE.Text  := '';
  chHoF.TabStop := FALSE;
  chHoJ.TabStop := FALSE;
  chHoA.TabStop := FALSE;
  chHoS.TabStop := FALSE;
  chHoU.TabStop := FALSE;
  chHoE.TabStop := FALSE;
  EHoE.TabStop  := FALSE;
  EHo.TabStop   := FALSE;
 end else
 begin
  chHoF.Enabled := TRUE;
  chHoJ.Enabled := TRUE;
  chHoA.Enabled := TRUE;
  chHoS.Enabled := TRUE;
  chHoU.Enabled := TRUE;
  chHoE.Enabled := TRUE;
  EHo.Enabled   := TRUE;

  chHoF.TabStop := TRUE;
  chHoJ.TabStop := TRUE;
  chHoA.TabStop := TRUE;
  chHoS.TabStop := TRUE;
  chHoU.TabStop := TRUE;
  chHoE.TabStop := TRUE;
  EHoE.TabStop  := TRUE;
  EHo.TabStop   := TRUE;
 end;
end;

procedure TfBAuto.chEnClick(Sender: TObject);
begin
 if not chEn.Checked then
 { —œ–¿ÿ»¬¿≈Ã, ”¬≈–≈Õ À» ﬁ«≈– }
 if (MessageBox(fBAuto.Handle,'¬˚ ‰ÂÈÒÚ‚ËÚÂÎ¸ÌÓ ıÓÚËÚÂ ÓÚÏÂÌËÚ¸ ‚ÒÂ?','¬˚ Û‚ÂÂÌ˚?',MB_ICONINFORMATION or MB_OKCANCEL) = 2) then
  { ﬁ«≈– œ≈–≈ƒ”Ã¿À }
  begin
   FMode := 0;
   chEn.Checked := TRUE;
   FMode := 1;
  end else
 { ﬁ«≈– ”¬≈–≈Õ. ”ƒ¿Àﬂ≈Ã... }
 begin
  chEnF.Checked := FALSE;
  chEnF.Enabled := FALSE;
  chEnJ.Checked := FALSE;
  chEnJ.Enabled := FALSE;
  chEnA.Checked := FALSE;
  chEnA.Enabled := FALSE;
  chEnS.Checked := FALSE;
  chEnS.Enabled := FALSE;
  chEnU.Checked := FALSE;
  chEnU.Enabled := FALSE;
  chEnE.Checked := FALSE;
  chEnE.Enabled := FALSE;
  EEn.Enabled   := FALSE;
  EEn.Text      := '';
  EEnE.Enabled  := FALSE;
  EEnE.Text     := '';
  chEnF.TabStop := FALSE;
  chEnJ.TabStop := FALSE;
  chEnA.TabStop := FALSE;
  chEnS.TabStop := FALSE;
  chEnU.TabStop := FALSE;
  chEnE.TabStop := FALSE;
  EEn.TabStop   := FALSE;
  EEnE.TabStop  := FALSE;
 end else
 begin
  chEnF.Enabled := TRUE;
  chEnJ.Enabled := TRUE;
  chEnA.Enabled := TRUE;
  chEnS.Enabled := TRUE;
  chEnU.Enabled := TRUE;
  chEnE.Enabled := TRUE;
  EEn.Enabled   := TRUE;

  chEnF.TabStop := TRUE;
  chEnJ.TabStop := TRUE;
  chEnA.TabStop := TRUE;
  chEnS.TabStop := TRUE;
  chEnU.TabStop := TRUE;
  chEnE.TabStop := TRUE;
  EEn.TabStop   := TRUE;
  EEnE.TabStop  := TRUE;
 end;
end;

procedure TfBAuto.chEoClick(Sender: TObject);
begin
 if not chEo.Checked then
 { —œ–¿ÿ»¬¿≈Ã, ”¬≈–≈Õ À» ﬁ«≈– }
 if (MessageBox(fBAuto.Handle,'¬˚ ‰ÂÈÒÚ‚ËÚÂÎ¸ÌÓ ıÓÚËÚÂ ÓÚÏÂÌËÚ¸ ‚ÒÂ?','¬˚ Û‚ÂÂÌ˚?',MB_ICONINFORMATION or MB_OKCANCEL) = 2) then
  { ﬁ«≈– œ≈–≈ƒ”Ã¿À }
  begin
   FMode := 0;
   chEo.Checked := TRUE;
   FMode := 1;
  end else
 { ﬁ«≈– ”¬≈–≈Õ. ”ƒ¿Àﬂ≈Ã... }
 begin
  chEoF.Checked := FALSE;
  chEoF.Enabled := FALSE;
  chEoJ.Checked := FALSE;
  chEoJ.Enabled := FALSE;
  chEoA.Checked := FALSE;
  chEoA.Enabled := FALSE;
  chEoS.Checked := FALSE;
  chEoS.Enabled := FALSE;
  chEoU.Checked := FALSE;
  chEoU.Enabled := FALSE;
  chEoE.Checked := FALSE;
  chEoE.Enabled := FALSE;
  EEo.Enabled   := FALSE;
  EEo.Text      := '';
  EEoE.Enabled  := FALSE;
  EEoE.Text  := '';
  chEoF.TabStop := FALSE;
  chEoJ.TabStop := FALSE;
  chEoA.TabStop := FALSE;
  chEoS.TabStop := FALSE;
  chEoU.TabStop := FALSE;
  chEoE.TabStop := FALSE;
  EEoE.TabStop  := FALSE;
  EEo.TabStop   := FALSE;
 end else
 begin
  chEoF.Enabled := TRUE;
  chEoJ.Enabled := TRUE;
  chEoA.Enabled := TRUE;
  chEoS.Enabled := TRUE;
  chEoU.Enabled := TRUE;
  chEoE.Enabled := TRUE;
  EEo.Enabled   := TRUE;

  chEoF.TabStop := TRUE;
  chEoJ.TabStop := TRUE;
  chEoA.TabStop := TRUE;
  chEoS.TabStop := TRUE;
  chEoU.TabStop := TRUE;
  chEoE.TabStop := TRUE;
  EEoE.TabStop  := TRUE;
  EEo.TabStop   := TRUE;
 end;
end;

procedure TfBAuto.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
with params do
   ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

procedure TfBAuto.chihome1Click(Sender: TObject);
begin
 if chihome1.Checked then
 begin
  chihome2.Checked := FALSE;
  chihome3.Checked := FALSE;
  Eihome.Enabled   := FALSE;
  Eihome.Text      := '';
 end;
end;

procedure TfBAuto.chihome2Click(Sender: TObject);
begin
 if chihome2.Checked then
 begin
  chihome1.Checked := FALSE;
  chihome3.Checked := FALSE;
  Eihome.Enabled   := FALSE;
  Eihome.Text      := '';
 end;
end;

procedure TfBAuto.chihome3Click(Sender: TObject);
begin
 if chihome3.Checked then
 begin
  chihome1.Checked := FALSE;
  chihome2.Checked := FALSE;
  Eihome.Enabled   := TRUE;
 end;
end;

procedure TfBAuto.Add;
var rec, val: string;
begin
 rec:='';
 rec:=rec+'NAME,';
 rec:=rec+'TC_ST,';
 rec:=rec+'TC_AM,';
 rec:=rec+'TC_EL,';
 if (chTC_EL.Checked) then rec:=rec+'TC_EL_E,';
 rec:=rec+'IWORK,';
 rec:=rec+'IMONEY,';
 rec:=rec+'IWBOOK,';
 rec:=rec+'AGE_M_B,';
 rec:=rec+'AGE_M_E,';
 rec:=rec+'AGE_M_EL_E,';
 rec:=rec+'AGE_F_B,';
 rec:=rec+'AGE_F_E,';
 rec:=rec+'AGE_F_EL_E,';
 rec:=rec+'IHOME,';
 if (chihome3.Checked) then rec:=rec+'IHOME_E,';
 rec:=rec+'SHUM,';
 rec:=rec+'SHUM_F,';
 rec:=rec+'SHUM_I,';
 rec:=rec+'SHUM_EL,';
 if (chshume.Checked) then rec:=rec+'SHUM_EL_E,';
 rec:=rec+'ZALOG_N,';
 rec:=rec+'ZALOG_TC,';
 rec:=rec+'ZALOG_EL,';
 if (chzalogel.Checked) then rec:=rec+'ZALOG_EL_E,';
 rec:=rec+'SUMMIN,';
 rec:=rec+'SUMMAX,';
 { À≈√ Œ¬€≈ ¿¬“ŒÃŒ¡»À» ÕŒ¬€≈ }
 rec:=rec+'AUTO_L_N,';
 rec:=rec+'AUTO_L_N_F,';
 rec:=rec+'AUTO_L_N_J,';
 rec:=rec+'AUTO_L_N_A,';
 rec:=rec+'AUTO_L_N_S,';
 rec:=rec+'AUTO_L_N_U,';
 rec:=rec+'AUTO_L_N_EL,';
 if (chLnE.Checked) then rec:=rec+'AUTO_L_N_EL_E,';
 { À≈√ Œ¬€≈ ¿¬“ŒÃŒ¡»À» ¡\” }
 rec:=rec+'AUTO_L_O,';
 if (chLo.Checked) then rec:=rec+'AUTO_L_O_E,';
 rec:=rec+'AUTO_L_O_F,';
 rec:=rec+'AUTO_L_O_J,';
 rec:=rec+'AUTO_L_O_A,';
 rec:=rec+'AUTO_L_O_S,';
 rec:=rec+'AUTO_L_O_U,';
 rec:=rec+'AUTO_L_O_EL,';
 if (chLoE.Checked) then rec:=rec+'AUTO_L_O_EL_E,';
 { √–”«Œœ¿——¿∆»–— »≈ ¿¬“ŒÃŒ¡»À» ÕŒ¬€≈ }
 rec:=rec+'AUTO_M_N,';
 rec:=rec+'AUTO_M_N_F,';
 rec:=rec+'AUTO_M_N_J,';
 rec:=rec+'AUTO_M_N_A,';
 rec:=rec+'AUTO_M_N_S,';
 rec:=rec+'AUTO_M_N_U,';
 rec:=rec+'AUTO_M_N_EL,';
 if (chMnE.Checked) then rec:=rec+'AUTO_M_N_EL_E,';
 { √–”«Œœ¿——¿∆»–— »≈ ¿¬“ŒÃŒ¡»À» ¡\” }
 rec:=rec+'AUTO_M_O,';
 if (chMo.Checked) then rec:=rec+'AUTO_M_O_E,';
 rec:=rec+'AUTO_M_O_F,';
 rec:=rec+'AUTO_M_O_J,';
 rec:=rec+'AUTO_M_O_A,';
 rec:=rec+'AUTO_M_O_S,';
 rec:=rec+'AUTO_M_O_U,';
 rec:=rec+'AUTO_M_O_EL,';
 if (chMoE.Checked) then rec:=rec+'AUTO_M_O_EL_E,';
 { √–”«Œ¬€≈ ¿¬“ŒÃŒ¡»À» ÕŒ¬€≈ }
 rec:=rec+'AUTO_H_N,';
 rec:=rec+'AUTO_H_N_F,';
 rec:=rec+'AUTO_H_N_J,';
 rec:=rec+'AUTO_H_N_A,';
 rec:=rec+'AUTO_H_N_S,';
 rec:=rec+'AUTO_H_N_U,';
 rec:=rec+'AUTO_H_N_EL,';
 if (chHnE.Checked) then rec:=rec+'AUTO_H_N_EL_E,';
 { √–”«Œ¬€≈ ¿¬“ŒÃŒ¡»À» ¡\” }
 rec:=rec+'AUTO_H_O,';
 if (chHo.Checked) then rec:=rec+'AUTO_H_O_E,';
 rec:=rec+'AUTO_H_O_F,';
 rec:=rec+'AUTO_H_O_J,';
 rec:=rec+'AUTO_H_O_A,';
 rec:=rec+'AUTO_H_O_S,';
 rec:=rec+'AUTO_H_O_U,';
 rec:=rec+'AUTO_H_O_EL,';
 if (chHoE.Checked) then rec:=rec+'AUTO_H_O_EL_E,';
 { ƒ–”√»≈ ¿¬“ŒÃŒ¡»À» ÕŒ¬€≈ }
 rec:=rec+'AUTO_EL_E,';
 rec:=rec+'AUTO_EL_N,';
 rec:=rec+'AUTO_EL_N_F,';
 rec:=rec+'AUTO_EL_N_J,';
 rec:=rec+'AUTO_EL_N_A,';
 rec:=rec+'AUTO_EL_N_S,';
 rec:=rec+'AUTO_EL_N_U,';
 rec:=rec+'AUTO_EL_N_EL,';
 if (chEnE.Checked) then rec:=rec+'AUTO_EL_N_EL_E,';
 { ƒ–”√»≈ ¿¬“ŒÃŒ¡»À» ¡\” }
 rec:=rec+'AUTO_EL_O,';
 if (chEo.Checked) then rec:=rec+'AUTO_EL_O_E,';
 rec:=rec+'AUTO_EL_O_F,';
 rec:=rec+'AUTO_EL_O_J,';
 rec:=rec+'AUTO_EL_O_A,';
 rec:=rec+'AUTO_EL_O_S,';
 rec:=rec+'AUTO_EL_O_U,';
 rec:=rec+'AUTO_EL_O_EL,';
 if (chEoE.Checked) then rec:=rec+'AUTO_EL_O_EL_E,';
 { // --- \\ }
 rec:=rec+'KACKO,';
 rec:=rec+'OCAGO,';
 rec:=rec+'S_E,';
 rec:=rec+'SADDCR,';
 rec:=rec+'SADDCR_E,';
 rec:=rec+'ELSEM,';
 rec:=rec+'NEEDDOC,';
 rec:=rec+'AKCIA,';
 rec:=rec+'CONTACT,';
 rec:=rec+'ELSE_PR';

 { «¿œ»—€¬¿≈Ã «Õ¿◊≈Õ»ﬂ œŒÀ≈… }
 val:='';
 val:=val+''''+Trim(EName.Text)+''',';
 if (chTC_ST.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chTC_AM.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chTC_EL.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chTC_EL.Checked) then val:=val+''''+Trim(ETC_EL.Text)+''',';
 val:=val+IntToStr(cbiwork.ItemIndex)+',';
 val:=val+IntToStr(cbimoney.ItemIndex)+',';
 val:=val+IntToStr(cbiwbook.ItemIndex)+',';
 val:=val+IntToStr(Eagemb.Value)+',';
 val:=val+IntToStr(Eageme.Value)+',';
 val:=val+''''+Trim(Eagem.Text)+''',';
 val:=val+IntToStr(Eagefb.Value)+',';
 val:=val+IntToStr(Eagefe.Value)+',';
 val:=val+''''+Trim(Eagef.Text)+''',';
 if (chihome1.Checked) then val:=val+'1,' else
 if (chihome2.Checked) then val:=val+'2,' else
 if (chihome3.Checked) then
 begin
  val:=val+'3,';
  val:=val+''''+Trim(Eihome.Text)+''',';
 end else val:=val+'0,';
 val:=val+IntToStr(cbshum.ItemIndex)+',';
 if (chshumf.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chshumi.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chshume.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chshume.Checked) then val:=val+''''+Trim(eshume.Text)+''',';
 if (chzalogn.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chzalogtc.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chzalogel.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chzalogel.Checked) then val:=val+''''+Trim(ezalogel.Text)+''',';
 val:=val+Trim(Esummin.Text)+',';
 val:=val+Trim(Esummax.Text)+',';
 { À≈√ Œ¬€≈ ¿¬“Œ ÕŒ¬€≈ }
 if (chLn.Checked)  then val:=val+'1,' else val:=val+'0,';
 if (chLnF.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLnJ.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLnA.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLnS.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLnU.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLnE.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLnE.Checked) then val:=val+''''+Trim(ELnE.Text)+''',';
 { À≈√ Œ¬€≈ ¿¬“Œ ¡\” }
 if (chLo.Checked)  then val:=val+'1,' else val:=val+'0,';
 if (chLo.Checked)  then val:=val+''''+Trim(ELo.Text)+''',';
 if (chLoF.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLoJ.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLoA.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLoS.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLoU.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLoE.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chLoE.Checked) then val:=val+''''+Trim(ELOE.Text)+''',';
 { √–”«Œœ¿——¿∆»–— »≈ ¿¬“Œ ÕŒ¬€≈ }
 if (chMn.Checked)  then val:=val+'1,' else val:=val+'0,';
 if (chMnF.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMnJ.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMnA.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMnS.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMnU.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMnE.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMnE.Checked) then val:=val+''''+Trim(EMnE.Text)+''',';
 { √–”«Œœ¿——¿∆»–— »≈ ¿¬“Œ ¡\” }
 if (chMo.Checked)  then val:=val+'1,' else val:=val+'0,';
 if (chMo.Checked)  then val:=val+''''+Trim(EMo.Text)+''',';
 if (chMoF.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMoJ.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMoA.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMoS.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMoU.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMoE.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chMoE.Checked) then val:=val+''''+Trim(EMoE.Text)+''',';
 { √–”«Œ¬€≈ ¿¬“Œ ÕŒ¬€≈ }
 if (chHn.Checked)  then val:=val+'1,' else val:=val+'0,';
 if (chHnF.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHnJ.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHnA.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHnS.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHnU.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHnE.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHnE.Checked) then val:=val+''''+Trim(EHnE.Text)+''',';
 { √–”«Œ¬€≈ ¿¬“Œ ¡\” }
 if (chHo.Checked)  then val:=val+'1,' else val:=val+'0,';
 if (chHo.Checked)  then val:=val+''''+Trim(EHo.Text)+''',';
 if (chHoF.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHoJ.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHoA.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHoS.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHoU.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHoE.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chHoE.Checked) then val:=val+''''+Trim(EHoE.Text)+''',';
 { ƒ–”√»≈ ¿¬“Œ ÕŒ¬€≈ }
 val:=val+''''+Trim(EelseName.Text)+''',';
 if (chEn.Checked)  then val:=val+'1,' else val:=val+'0,';
 if (chEnF.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEnJ.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEnA.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEnS.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEnU.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEnE.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEnE.Checked) then val:=val+''''+Trim(EEnE.Text)+''',';
 { ƒ–”√»≈ ¿¬“Œ ¡\” }
 if (chEo.Checked)  then val:=val+'1,' else val:=val+'0,';
 if (chEo.Checked)  then val:=val+''''+Trim(EEo.Text)+''',';
 if (chEoF.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEoJ.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEoA.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEoS.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEoU.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEoE.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chEoE.Checked) then val:=val+''''+Trim(EEoE.Text)+''',';
 { // --- \\ }
 if (chkasko.Checked) then val:=val+'1,' else val:=val+'0,';
 if (chocago.Checked) then val:=val+'1,' else val:=val+'0,';
 val:=val+''''+Trim(Eprim.Text)+''',';
 if (chSADDCR.Checked) then val:=val+'1,' else val:=val+'0,';
 val:=val+''''+Trim(ESADDCR.Text)+''',';
 val:=val+''''+Trim(Eelsem.Text)+''',';
 val:=val+''''+Trim(Eneeddoc.Text)+''',';
 val:=val+''''+Trim(Eakcia.Text)+''',';
 val:=val+''''+Trim(Econtact.Text)+''',';
 val:=val+''''+Trim(Eelseprim.Text)+'''';
// Eelseprim.Text:=rec;
// Eelseprim.Lines.SaveToFile('standart.txt');
 if (fData.CustomAdd('TB_BANKAUTO',rec,val)=0) then MessageBox(fBAuto.Handle,'ƒ‡ÌÌ˚Â ÛÒÔÂ¯ÌÓ ÒÓı‡ÌÂÌ˚!','—Óı‡ÌÂÌËÂ ÛÒÔÂ¯ÌÓ.',MB_ICONINFORMATION or MB_OK);
end;

procedure TfBAuto.chshumeClick(Sender: TObject);
begin
 if chshume.Checked then eshume.Enabled := TRUE else
 begin
  eshume.Enabled := FALSE;
  eshume.Text    := '';
 end;
end;

procedure TfBAuto.BSaveClick(Sender: TObject);
var z: byte;
begin
 FMode:=1;
 Application.CreateForm(TfWait, fWait);
 fWait.ParentWindow := fBAuto.Handle;
 fWait.pb.Position := 0;
 fWait.Show();
 fBAuto.Enabled := FALSE;
 z := Update();
 if (z = 1) then
 begin
  fWait.Close();
  fBAuto.Enabled := TRUE;
  MessageBox(fBAuto.Handle,'¬Ó ‚ÂÏˇ ÒÓı‡ÌÂÌËˇ ‰‡ÌÌ˚ı ÔÓËÁÓ¯Î‡ Ó¯Ë·Í‡! œÓÔÓ·ÛÈÚÂ ÔÓ‚ÚÓËÚ¸ ÔÓÁ‰ÌÂÂ.','Œ¯Ë·Í‡!',MB_ICONWARNING or MB_OK);
 end else
 begin
//  z := SaveDoc();
  z:=0;
  fWait.Close();
  fBAuto.Enabled := TRUE;
  if (z = 0) then MessageBox(fBAuto.Handle,'ƒ‡ÌÌ˚Â ÛÒÔÂ¯ÌÓ ÒÓı‡ÌÂÌ˚!','—Óı‡ÌÂÌËÂ ÛÒÔÂ¯ÌÓ.',MB_ICONINFORMATION or MB_OK) else
  if (z = 1) then MessageBox(fBAuto.Handle,'¬Ó ‚ÂÏˇ ÒÓı‡ÌÂÌËˇ ‰‡ÌÌ˚ı ‚ Microsoft Word ÔÓËÁÓ¯Î‡ Ó¯Ë·Í‡! œÓÔÓ·ÛÈÚÂ ÔÓ‚ÚÓËÚ¸ ÔÓÁ‰ÌÂÂ.','Œ¯Ë·Í‡!',MB_ICONWARNING or MB_OK);
 end;
end;

procedure TfBAuto.FormShow(Sender: TObject);
begin
 try
  EName.Text := fData.CustomSelS('TB_BANKAUTO','NAME','where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKAUTO','TC_ST','where ID='+IntToStr(BankID)) of
   0: chTC_ST.Checked := FALSE;
   1: chTC_ST.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','TC_AM','where ID='+IntToStr(BankID)) of
   0: chTC_AM.Checked := FALSE;
   1: chTC_AM.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','TC_EL','where ID='+IntToStr(BankID)) of
   0: chTC_EL.Checked := FALSE;
   1: begin
       chTC_EL.Checked := TRUE;
       ETC_EL.Text := fData.CustomSelS('TB_BANKAUTO','TC_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  cbiwork.ItemIndex  := fData.CustomSelI('TB_BANKAUTO','IWORK', 'where ID='+IntToStr(BankID));
  cbimoney.ItemIndex := fData.CustomSelI('TB_BANKAUTO','IMONEY','where ID='+IntToStr(BankID));
  cbiwbook.ItemIndex := fData.CustomSelI('TB_BANKAUTO','IWBOOK','where ID='+IntToStr(BankID));
  Eagemb.Value := fData.CustomSelI('TB_BANKAUTO','AGE_M_B','where ID='+IntToStr(BankID));
  Eageme.Value := fData.CustomSelI('TB_BANKAUTO','AGE_M_E','where ID='+IntToStr(BankID));
  Eagem.Text   := fData.CustomSelS('TB_BANKAUTO','AGE_M_EL_E','where ID='+IntToStr(BankID));
  Eagefb.Value := fData.CustomSelI('TB_BANKAUTO','AGE_F_B','where ID='+IntToStr(BankID));
  Eagefe.Value := fData.CustomSelI('TB_BANKAUTO','AGE_F_E','where ID='+IntToStr(BankID));
  Eagef.Text   := fData.CustomSelS('TB_BANKAUTO','AGE_F_EL_E','where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKAUTO','IHOME','where ID='+IntToStr(BankID)) of
   1: chihome1.Checked := TRUE;
   2: chihome2.Checked := TRUE;
   3: begin
       chihome3.Checked := TRUE;
       Eihome.Text := fData.CustomSelS('TB_BANKAUTO','IHOME_E','where ID='+IntToStr(BankID));
      end;
  end;
  cbshum.ItemIndex  := fData.CustomSelI('TB_BANKAUTO','SHUM', 'where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKAUTO','SHUM_F','where ID='+IntToStr(BankID)) of
   0: chshumf.Checked := FALSE;
   1: chshumf.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','SHUM_I','where ID='+IntToStr(BankID)) of
   0: chshumi.Checked := FALSE;
   1: chshumi.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','SHUM_EL','where ID='+IntToStr(BankID)) of
   0: chshume.Checked := FALSE;
   1: begin
       chshume.Checked := TRUE;
       eshume.Text := fData.CustomSelS('TB_BANKAUTO','SHUM_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKAUTO','ZALOG_N','where ID='+IntToStr(BankID)) of
   0: chzalogn.Checked := FALSE;
   1: chzalogn.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','ZALOG_TC','where ID='+IntToStr(BankID)) of
   0: chzalogtc.Checked := FALSE;
   1: chzalogtc.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','ZALOG_EL','where ID='+IntToStr(BankID)) of
   0: chzalogel.Checked := FALSE;
   1: begin
       chzalogel.Checked := TRUE;
       ezalogel.Text := fData.CustomSelS('TB_BANKAUTO','ZALOG_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  Esummin.Text := fData.CustomSelS('TB_BANKAUTO','SUMMIN','where ID='+IntToStr(BankID));
  Esummax.Text := fData.CustomSelS('TB_BANKAUTO','SUMMAX','where ID='+IntToStr(BankID));
  { À≈√ Œ¬€≈ ÕŒ¬€≈ }
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_N','where ID='+IntToStr(BankID)) of
   0: chLn.Checked := FALSE;
   1: begin
       chLn.Checked := TRUE;
       ELn.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_L_N_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_N_F','where ID='+IntToStr(BankID)) of
   0: chLnF.Checked := FALSE;
   1: chLnF.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_N_J','where ID='+IntToStr(BankID)) of
   0: chLnJ.Checked := FALSE;
   1: chLnJ.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_N_A','where ID='+IntToStr(BankID)) of
   0: chLnA.Checked := FALSE;
   1: chLnA.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_N_S','where ID='+IntToStr(BankID)) of
   0: chLnS.Checked := FALSE;
   1: chLnS.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_N_U','where ID='+IntToStr(BankID)) of
   0: chLnU.Checked := FALSE;
   1: chLnU.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_N_EL','where ID='+IntToStr(BankID)) of
   0: chLnE.Checked := FALSE;
   1: begin
       chLnE.Checked := TRUE;
       ELnE.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_L_N_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  { À≈√ Œ¬€≈ ¡\” }
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_O','where ID='+IntToStr(BankID)) of
   0: chLo.Checked := FALSE;
   1: begin
       chLo.Checked := TRUE;
       ELo.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_L_O_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_O_F','where ID='+IntToStr(BankID)) of
   0: chLoF.Checked := FALSE;
   1: chLoF.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_O_J','where ID='+IntToStr(BankID)) of
   0: chLoJ.Checked := FALSE;
   1: chLoJ.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_O_A','where ID='+IntToStr(BankID)) of
   0: chLoA.Checked := FALSE;
   1: chLoA.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_O_S','where ID='+IntToStr(BankID)) of
   0: chLoS.Checked := FALSE;
   1: chLoS.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_O_U','where ID='+IntToStr(BankID)) of
   0: chLoU.Checked := FALSE;
   1: chLoU.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_L_O_EL','where ID='+IntToStr(BankID)) of
   0: chLoE.Checked := FALSE;
   1: begin
       chLoE.Checked := TRUE;
       ELoE.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_L_O_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  { √–”«Œœ¿——¿∆»–— »≈ ÕŒ¬€≈ }
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_N','where ID='+IntToStr(BankID)) of
   0: chMn.Checked := FALSE;
   1: begin
       chMn.Checked := TRUE;
       EMn.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_M_N_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_N_F','where ID='+IntToStr(BankID)) of
   0: chMnF.Checked := FALSE;
   1: chMnF.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_N_J','where ID='+IntToStr(BankID)) of
   0: chMnJ.Checked := FALSE;
   1: chMnJ.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_N_A','where ID='+IntToStr(BankID)) of
   0: chMnA.Checked := FALSE;
   1: chMnA.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_N_S','where ID='+IntToStr(BankID)) of
   0: chMnS.Checked := FALSE;
   1: chMnS.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_N_U','where ID='+IntToStr(BankID)) of
   0: chMnU.Checked := FALSE;
   1: chMnU.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_N_EL','where ID='+IntToStr(BankID)) of
   0: chMnE.Checked := FALSE;
   1: begin
       chMnE.Checked := TRUE;
       EMnE.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_M_N_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  { √–”«Œœ¿——¿∆»–— »≈ ¡\” }
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_O','where ID='+IntToStr(BankID)) of
   0: chMo.Checked := FALSE;
   1: begin
       chMo.Checked := TRUE;
       EMo.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_M_O_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_O_F','where ID='+IntToStr(BankID)) of
   0: chMoF.Checked := FALSE;
   1: chMoF.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_O_J','where ID='+IntToStr(BankID)) of
   0: chMoJ.Checked := FALSE;
   1: chMoJ.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_O_A','where ID='+IntToStr(BankID)) of
   0: chMoA.Checked := FALSE;
   1: chMoA.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_O_S','where ID='+IntToStr(BankID)) of
   0: chMoS.Checked := FALSE;
   1: chMoS.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_O_U','where ID='+IntToStr(BankID)) of
   0: chMoU.Checked := FALSE;
   1: chMoU.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_M_O_EL','where ID='+IntToStr(BankID)) of
   0: chMoE.Checked := FALSE;
   1: begin
       chMoE.Checked := TRUE;
       EMoE.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_M_O_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  { √–”«Œ¬€≈ ÕŒ¬€≈ }
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_N','where ID='+IntToStr(BankID)) of
   0: chHn.Checked := FALSE;
   1: begin
       chHn.Checked := TRUE;
       EHn.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_H_N_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_N_F','where ID='+IntToStr(BankID)) of
   0: chHnF.Checked := FALSE;
   1: chHnF.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_N_J','where ID='+IntToStr(BankID)) of
   0: chHnJ.Checked := FALSE;
   1: chHnJ.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_N_A','where ID='+IntToStr(BankID)) of
   0: chHnA.Checked := FALSE;
   1: chHnA.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_N_S','where ID='+IntToStr(BankID)) of
   0: chHnS.Checked := FALSE;
   1: chHnS.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_N_U','where ID='+IntToStr(BankID)) of
   0: chHnU.Checked := FALSE;
   1: chHnU.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_N_EL','where ID='+IntToStr(BankID)) of
   0: chHnE.Checked := FALSE;
   1: begin
       chHnE.Checked := TRUE;
       EHnE.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_H_N_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  { √–”«Œ¬€≈ ¡\” }
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_O','where ID='+IntToStr(BankID)) of
   0: chHo.Checked := FALSE;
   1: begin
       chHo.Checked := TRUE;
       EHo.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_H_O_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_O_F','where ID='+IntToStr(BankID)) of
   0: chHoF.Checked := FALSE;
   1: chHoF.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_O_J','where ID='+IntToStr(BankID)) of
   0: chHoJ.Checked := FALSE;
   1: chHoJ.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_O_A','where ID='+IntToStr(BankID)) of
   0: chHoA.Checked := FALSE;
   1: chHoA.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_O_S','where ID='+IntToStr(BankID)) of
   0: chHoS.Checked := FALSE;
   1: chHoS.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_O_U','where ID='+IntToStr(BankID)) of
   0: chHoU.Checked := FALSE;
   1: chHoU.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_H_O_EL','where ID='+IntToStr(BankID)) of
   0: chHoE.Checked := FALSE;
   1: begin
       chHoE.Checked := TRUE;
       EHoE.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_H_O_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  { ƒ–”√»≈ ÕŒ¬€≈ }
  EelseName.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_EL_E','where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_N','where ID='+IntToStr(BankID)) of
   0: chEn.Checked := FALSE;
   1: begin
       chEn.Checked := TRUE;
       EEn.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_EL_N_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_N_F','where ID='+IntToStr(BankID)) of
   0: chEnF.Checked := FALSE;
   1: chEnF.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_N_J','where ID='+IntToStr(BankID)) of
   0: chEnJ.Checked := FALSE;
   1: chEnJ.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_N_A','where ID='+IntToStr(BankID)) of
   0: chEnA.Checked := FALSE;
   1: chEnA.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_N_S','where ID='+IntToStr(BankID)) of
   0: chEnS.Checked := FALSE;
   1: chEnS.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_N_U','where ID='+IntToStr(BankID)) of
   0: chEnU.Checked := FALSE;
   1: chEnU.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_N_EL','where ID='+IntToStr(BankID)) of
   0: chEnE.Checked := FALSE;
   1: begin
       chEnE.Checked := TRUE;
       EEnE.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_EL_N_EL_E','where ID='+IntToStr(BankID));
      end;
  end;
  { ƒ–”√»≈ ¡\” }
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_O','where ID='+IntToStr(BankID)) of
   0: chEo.Checked := FALSE;
   1: begin
       chEo.Checked := TRUE;
       EEo.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_EL_O_E','where ID='+IntToStr(BankID));
      end;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_O_F','where ID='+IntToStr(BankID)) of
   0: chEoF.Checked := FALSE;
   1: chEoF.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_O_J','where ID='+IntToStr(BankID)) of
   0: chEoJ.Checked := FALSE;
   1: chEoJ.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_O_A','where ID='+IntToStr(BankID)) of
   0: chEoA.Checked := FALSE;
   1: chEoA.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_O_S','where ID='+IntToStr(BankID)) of
   0: chEoS.Checked := FALSE;
   1: chEoS.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_O_U','where ID='+IntToStr(BankID)) of
   0: chEoU.Checked := FALSE;
   1: chEoU.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','AUTO_EL_O_EL','where ID='+IntToStr(BankID)) of
   0: chEoE.Checked := FALSE;
   1: begin
       chEoE.Checked := TRUE;
       EEoE.Text := fData.CustomSelS('TB_BANKAUTO','AUTO_EL_O_EL_E','where ID='+IntToStr(BankID));
      end;
  end;

  {  // --- \\ }

  case fData.CustomSelI('TB_BANKAUTO','KACKO','where ID='+IntToStr(BankID)) of
   0: chkasko.Checked := FALSE;
   1: chkasko.Checked := TRUE;
  end;
  case fData.CustomSelI('TB_BANKAUTO','OCAGO','where ID='+IntToStr(BankID)) of
   0: chocago.Checked := FALSE;
   1: chocago.Checked := TRUE;
  end;
  Eprim.Text := fData.CustomSelS('TB_BANKAUTO','S_E','where ID='+IntToStr(BankID));
  case fData.CustomSelI('TB_BANKAUTO','SADDCR','where ID='+IntToStr(BankID)) of
   0: chSADDCR.Checked := FALSE;
   1: chSADDCR.Checked := TRUE;
  end;
  ESADDCR.Text := fData.CustomSelS('TB_BANKAUTO','SADDCR_E','where ID='+IntToStr(BankID));
  cbSLife.ItemIndex := fData.CustomSelI('TB_BANKAUTO','LIFE','where ID='+IntToStr(BankID));
  Eelsem.Text := fData.CustomSelS('TB_BANKAUTO','ELSEM','where ID='+IntToStr(BankID));
  Eneeddoc.Text := fData.CustomSelS('TB_BANKAUTO','NEEDDOC','where ID='+IntToStr(BankID));
  Eakcia.Text := fData.CustomSelS('TB_BANKAUTO','AKCIA','where ID='+IntToStr(BankID));
  Econtact.Text := fData.CustomSelS('TB_BANKAUTO','CONTACT','where ID='+IntToStr(BankID));
  Eelseprim.Text := fData.CustomSelS('TB_BANKAUTO','ELSE_PR','where ID='+IntToStr(BankID));
 except
  MessageBox(fBAuto.Handle,'Œ¯Ë·Í‡! œÓËÁÓ¯Î‡ Ó¯Ë·Í‡ ‚Ó ‚ÂÏˇ ‡·ÓÚ˚ ÔÓ„‡ÏÏ˚. œÓÔÓ·ÛÈÚÂ Á‡Í˚Ú¸ Ë ‚ÌÓ‚¸ ÓÚÍ˚Ú¸ ÚÂÍÛ˘ÂÂ ÓÍÌÓ.','Œ¯Ë·Í‡.',MB_ICONWARNING or MB_OK);
 end;
 FMode := 1;
end;

function TfBAuto.Update(): byte;
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
 { EAAEIAUA AAOIIIAEEE IIAUA }
 rec.Add('AUTO_L_N');
 rec.Add('AUTO_L_N_E');
 rec.Add('AUTO_L_N_F');
 rec.Add('AUTO_L_N_J');
 rec.Add('AUTO_L_N_A');
 rec.Add('AUTO_L_N_S');
 rec.Add('AUTO_L_N_U');
 rec.Add('AUTO_L_N_EL');
 rec.Add('AUTO_L_N_EL_E');
 { EAAEIAUA AAOIIIAEEE A\O }
 rec.Add('AUTO_L_O');
 rec.Add('AUTO_L_O_E');
 rec.Add('AUTO_L_O_F');
 rec.Add('AUTO_L_O_J');
 rec.Add('AUTO_L_O_A');
 rec.Add('AUTO_L_O_S');
 rec.Add('AUTO_L_O_U');
 rec.Add('AUTO_L_O_EL');
 rec.Add('AUTO_L_O_EL_E');
 { A?OCIIANNA?E?NEEA AAOIIIAEEE IIAUA }
 rec.Add('AUTO_M_N');
 rec.Add('AUTO_M_N_E');
 rec.Add('AUTO_M_N_F');
 rec.Add('AUTO_M_N_J');
 rec.Add('AUTO_M_N_A');
 rec.Add('AUTO_M_N_S');
 rec.Add('AUTO_M_N_U');
 rec.Add('AUTO_M_N_EL');
 rec.Add('AUTO_M_N_EL_E');
 { A?OCIIANNA?E?NEEA AAOIIIAEEE A\O }
 rec.Add('AUTO_M_O');
 rec.Add('AUTO_M_O_E');
 rec.Add('AUTO_M_O_F');
 rec.Add('AUTO_M_O_J');
 rec.Add('AUTO_M_O_A');
 rec.Add('AUTO_M_O_S');
 rec.Add('AUTO_M_O_U');
 rec.Add('AUTO_M_O_EL');
 rec.Add('AUTO_M_O_EL_E');
 { A?OCIAUA AAOIIIAEEE IIAUA }
 rec.Add('AUTO_H_N');
 rec.Add('AUTO_H_N_E');
 rec.Add('AUTO_H_N_F');
 rec.Add('AUTO_H_N_J');
 rec.Add('AUTO_H_N_A');
 rec.Add('AUTO_H_N_S');
 rec.Add('AUTO_H_N_U');
 rec.Add('AUTO_H_N_EL');
 rec.Add('AUTO_H_N_EL_E');
 { A?OCIAUA AAOIIIAEEE A\O }
 rec.Add('AUTO_H_O');
 rec.Add('AUTO_H_O_E');
 rec.Add('AUTO_H_O_F');
 rec.Add('AUTO_H_O_J');
 rec.Add('AUTO_H_O_A');
 rec.Add('AUTO_H_O_S');
 rec.Add('AUTO_H_O_U');
 rec.Add('AUTO_H_O_EL');
 rec.Add('AUTO_H_O_EL_E');
 { A?OAEA AAOIIIAEEE IIAUA }
 rec.Add('AUTO_EL_E');
 rec.Add('AUTO_EL_N');
 rec.Add('AUTO_EL_N_E');
 rec.Add('AUTO_EL_N_F');
 rec.Add('AUTO_EL_N_J');
 rec.Add('AUTO_EL_N_A');
 rec.Add('AUTO_EL_N_S');
 rec.Add('AUTO_EL_N_U');
 rec.Add('AUTO_EL_N_EL');
 rec.Add('AUTO_EL_N_EL_E');
 { A?OAEA AAOIIIAEEE A\O }
 rec.Add('AUTO_EL_O');
 rec.Add('AUTO_EL_O_E');
 rec.Add('AUTO_EL_O_F');
 rec.Add('AUTO_EL_O_J');
 rec.Add('AUTO_EL_O_A');
 rec.Add('AUTO_EL_O_S');
 rec.Add('AUTO_EL_O_U');
 rec.Add('AUTO_EL_O_EL');
 rec.Add('AUTO_EL_O_EL_E');
 { // --- \\ }
 rec.Add('KACKO');
 rec.Add('OCAGO');
 rec.Add('LIFE');
 rec.Add('S_E');
 rec.Add('SADDCR');
 rec.Add('SADDCR_E');
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
 val.Add(IntToStr(Eagemb.Value)+'');
 val.Add(IntToStr(Eageme.Value)+'');
 val.Add(''''+Trim(Eagem.Text)+'''');
 val.Add(IntToStr(Eagefb.Value)+'');
 val.Add(IntToStr(Eagefe.Value)+'');
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
 { EAAEIAUA AAOI IIAUA }
 if (chLn.Checked)  then val.Add('1') else val.Add('0');
 if (chLn.Checked)  then val.Add(''''+Trim(ELn.Text)+'''') else val.Add('''''');
 if (chLnF.Checked) then val.Add('1') else val.Add('0');
 if (chLnJ.Checked) then val.Add('1') else val.Add('0');
 if (chLnA.Checked) then val.Add('1') else val.Add('0');
 if (chLnS.Checked) then val.Add('1') else val.Add('0');
 if (chLnU.Checked) then val.Add('1') else val.Add('0');
 if (chLnE.Checked) then val.Add('1') else val.Add('0');
 if (chLnE.Checked) then val.Add(''''+Trim(ELnE.Text)+'''') else val.Add('''''');
 { EAAEIAUA AAOI A\O }
 if (chLo.Checked)  then val.Add('1') else val.Add('0');
 if (chLo.Checked)  then val.Add(''''+Trim(ELo.Text)+'''') else val.Add('''''');
 if (chLoF.Checked) then val.Add('1') else val.Add('0');
 if (chLoJ.Checked) then val.Add('1') else val.Add('0');
 if (chLoA.Checked) then val.Add('1') else val.Add('0');
 if (chLoS.Checked) then val.Add('1') else val.Add('0');
 if (chLoU.Checked) then val.Add('1') else val.Add('0');
 if (chLoE.Checked) then val.Add('1') else val.Add('0');
 if (chLoE.Checked) then val.Add(''''+Trim(ELOE.Text)+'''') else val.Add('''''');
 { A?OCIIANNA?E?NEEA AAOI IIAUA }
 if (chMn.Checked)  then val.Add('1') else val.Add('0');
 if (chMn.Checked)  then val.Add(''''+Trim(EMn.Text)+'''') else val.Add('''''');
 if (chMnF.Checked) then val.Add('1') else val.Add('0');
 if (chMnJ.Checked) then val.Add('1') else val.Add('0');
 if (chMnA.Checked) then val.Add('1') else val.Add('0');
 if (chMnS.Checked) then val.Add('1') else val.Add('0');
 if (chMnU.Checked) then val.Add('1') else val.Add('0');
 if (chMnE.Checked) then val.Add('1') else val.Add('0');
 if (chMnE.Checked) then val.Add(''''+Trim(EMnE.Text)+'''') else val.Add('''''');
 { A?OCIIANNA?E?NEEA AAOI A\O }
 if (chMo.Checked)  then val.Add('1') else val.Add('0');
 if (chMo.Checked)  then val.Add(''''+Trim(EMo.Text)+'''') else val.Add('''''');
 if (chMoF.Checked) then val.Add('1') else val.Add('0');
 if (chMoJ.Checked) then val.Add('1') else val.Add('0');
 if (chMoA.Checked) then val.Add('1') else val.Add('0');
 if (chMoS.Checked) then val.Add('1') else val.Add('0');
 if (chMoU.Checked) then val.Add('1') else val.Add('0');
 if (chMoE.Checked) then val.Add('1') else val.Add('0');
 if (chMoE.Checked) then val.Add(''''+Trim(EMoE.Text)+'''') else val.Add('''''');
 { A?OCIAUA AAOI IIAUA }
 if (chHn.Checked)  then val.Add('1') else val.Add('0');
 if (chHn.Checked)  then val.Add(''''+Trim(EHn.Text)+'''') else val.Add('''''');
 if (chHnF.Checked) then val.Add('1') else val.Add('0');
 if (chHnJ.Checked) then val.Add('1') else val.Add('0');
 if (chHnA.Checked) then val.Add('1') else val.Add('0');
 if (chHnS.Checked) then val.Add('1') else val.Add('0');
 if (chHnU.Checked) then val.Add('1') else val.Add('0');
 if (chHnE.Checked) then val.Add('1') else val.Add('0');
 if (chHnE.Checked) then val.Add(''''+Trim(EHnE.Text)+'''') else val.Add('''''');
 { A?OCIAUA AAOI A\O }
 if (chHo.Checked)  then val.Add('1') else val.Add('0');
 if (chHo.Checked)  then val.Add(''''+Trim(EHo.Text)+'''') else val.Add('''''');
 if (chHoF.Checked) then val.Add('1') else val.Add('0');
 if (chHoJ.Checked) then val.Add('1') else val.Add('0');
 if (chHoA.Checked) then val.Add('1') else val.Add('0');
 if (chHoS.Checked) then val.Add('1') else val.Add('0');
 if (chHoU.Checked) then val.Add('1') else val.Add('0');
 if (chHoE.Checked) then val.Add('1') else val.Add('0');
 if (chHoE.Checked) then val.Add(''''+Trim(EHoE.Text)+'''') else val.Add('''''');
 { A?OAEA AAOI IIAUA }
 val.Add(''''+Trim(EelseName.Text)+'''');
 if (chEn.Checked)  then val.Add('1') else val.Add('0');
 if (chEn.Checked)  then val.Add(''''+Trim(EEn.Text)+'''') else val.Add('''''');
 if (chEnF.Checked) then val.Add('1') else val.Add('0');
 if (chEnJ.Checked) then val.Add('1') else val.Add('0');
 if (chEnA.Checked) then val.Add('1') else val.Add('0');
 if (chEnS.Checked) then val.Add('1') else val.Add('0');
 if (chEnU.Checked) then val.Add('1') else val.Add('0');
 if (chEnE.Checked) then val.Add('1') else val.Add('0');
 if (chEnE.Checked) then val.Add(''''+Trim(EEnE.Text)+'''') else val.Add('''''');
 { A?OAEA AAOI A\O }
 if (chEo.Checked)  then val.Add('1') else val.Add('0');
 if (chEo.Checked)  then val.Add(''''+Trim(EEo.Text)+'''') else val.Add('''''');
 if (chEoF.Checked) then val.Add('1') else val.Add('0');
 if (chEoJ.Checked) then val.Add('1') else val.Add('0');
 if (chEoA.Checked) then val.Add('1') else val.Add('0');
 if (chEoS.Checked) then val.Add('1') else val.Add('0');
 if (chEoU.Checked) then val.Add('1') else val.Add('0');
 if (chEoE.Checked) then val.Add('1') else val.Add('0');
 if (chEoE.Checked) then val.Add(''''+Trim(EEoE.Text)+'''') else val.Add('''''');
 { // --- \\ }
 if (chkasko.Checked) then val.Add('1') else val.Add('0');
 if (chocago.Checked) then val.Add('1') else val.Add('0');
 val.Add(IntToStr(cbSLife.ItemIndex));
 val.Add(''''+Trim(Eprim.Text)+'''');
 if (chSADDCR.Checked) then val.Add('1') else val.Add('0');
 val.Add(''''+Trim(ESADDCR.Text)+'''');
 val.Add(''''+Trim(Eelsem.Text)+'''');
 val.Add(''''+Trim(Eneeddoc.Text)+'''');
 val.Add(''''+Trim(Eakcia.Text)+'''');
 val.Add(''''+Trim(Econtact.Text)+'''');
 val.Add(''''+Trim(Eelseprim.Text)+'''');
 if (fData.CustomUpd('TB_BANKAUTO',rec, val, 'ID='+IntToStr(BankID))=0) then Result:=0 else Result:=1;
 rec.Free; val.Free;
 fWait.pb.Position := fWait.pb.Position + 15;
except
 if Assigned(rec) then rec.Free;
 if Assigned(val) then rec.Free;
 Result:=1;
end;
end;

procedure TfBAuto.chHnEClick(Sender: TObject);
begin
 if (chHnE.Checked) then EHnE.Enabled := TRUE else
 begin
  EHnE.Enabled := FALSE;
  EHnE.Text    := '';
 end;
 CheckAuto(chHnE,0);
end;

procedure TfBAuto.chLoEClick(Sender: TObject);
begin
  if (chLoE.Checked) then ELoE.Enabled := TRUE else
 begin
  ELoE.Enabled := FALSE;
  ELoE.Text    := '';
 end;
 CheckAuto(chLoE);
end;

procedure TfBAuto.chLnEClick(Sender: TObject);
begin
 if (chLnE.Checked) then ELnE.Enabled := TRUE else
 begin
  ELnE.Enabled := FALSE;
  ELnE.Text    := '';
 end;
 CheckAuto(chLnE);
end;

procedure TfBAuto.chMnEClick(Sender: TObject);
begin
 if (chMnE.Checked) then EMnE.Enabled := TRUE else
 begin
  EMnE.Enabled := FALSE;
  EMnE.Text    := '';
 end;
 CheckAuto(chMnE);
end;

procedure TfBAuto.chEnEClick(Sender: TObject);
begin
 if (chEnE.Checked) then EEnE.Enabled := TRUE else
 begin
  EEnE.Enabled := FALSE;
  EEnE.Text    := '';
 end;
 CheckAuto(chEnE);
end;

procedure TfBAuto.chEoEClick(Sender: TObject);
begin
 if (chEoE.Checked) then EEoE.Enabled := TRUE else
 begin
  EEoE.Enabled := FALSE;
  EEoE.Text    := '';
 end;
 CheckAuto(chEoE);
end;

procedure TfBAuto.chHoEClick(Sender: TObject);
begin
 if (chHoE.Checked) then EHoE.Enabled := TRUE else
 begin
  EHoE.Enabled := FALSE;
  EHoE.Text    := '';
 end;
 CheckAuto(chHoE);
end;

procedure TfBAuto.chMoEClick(Sender: TObject);
begin
 if (chMoE.Checked) then EMoE.Enabled := TRUE else
 begin
  EMoE.Enabled := FALSE;
  EMoE.Text    := '';
 end;
 CheckAuto(chMoE);
end;

procedure TfBAuto.EelseNameChange(Sender: TObject);
begin
 if (Length(EelseName.Text)=0) then
 begin
  chEn.Checked := FALSE;
  chEn.Enabled := FALSE;
  chEn.TabStop := FALSE;
  chEo.Checked := FALSE;
  chEo.Enabled := FALSE;
  chEo.TabStop := FALSE;
 end else
 begin
  chEn.Enabled := TRUE;
  chEn.TabStop := TRUE;
  chEo.Enabled := TRUE;
  chEo.TabStop := TRUE;
 end;
end;

procedure TfBAuto.chLnFClick(Sender: TObject);
begin
 CheckAuto(chLnF,0);
end;

procedure TfBAuto.chLnJClick(Sender: TObject);
begin
 CheckAuto(chLnJ);
end;

procedure TfBAuto.chLnAClick(Sender: TObject);
begin
 CheckAuto(chLnA);
end;

procedure TfBAuto.chLnSClick(Sender: TObject);
begin
 CheckAuto(chLnS);
end;

procedure TfBAuto.chLnUClick(Sender: TObject);
begin
 CheckAuto(chLnU);
end;

procedure TfBAuto.chLoFClick(Sender: TObject);
begin
 CheckAuto(chLoF);
end;

procedure TfBAuto.chLoJClick(Sender: TObject);
begin
 CheckAuto(chLoJ);
end;

procedure TfBAuto.chLoAClick(Sender: TObject);
begin
 CheckAuto(chLoA);
end;

procedure TfBAuto.chLoSClick(Sender: TObject);
begin
 CheckAuto(chLoS);
end;

procedure TfBAuto.chLoUClick(Sender: TObject);
begin
 CheckAuto(chLoU);
end;

procedure TfBAuto.CheckAuto(ChBox: TCheckBox; OpenMode: byte);
var i: integer; s, a1, a2: string; Fs,Ss: char;
begin
 s := ''; a1 := ''; a2 := '';
 s := Copy(ChBox.Name, 3,5);
 Fs := ChBox.Name[3];
 Ss := ChBox.Name[4];
 if ((chBox.Checked)and(FMode=1)) then
 begin
  Application.CreateForm(TfBAutoEdit, fBAutoEdit);
  case Fs of
   'L': a1 := gbLight.Caption;
   'M': a1 := gbMedium.Caption;
   'H': a1 := gbHard.Caption;
   'E': a1 := gbElse.Caption;
  end;
  case Ss of
   'n': a2 := 'ÌÓ‚˚Â';
   'o': a2 := '·/Û';
  end;
  fBAutoEdit.Caption  := '¡‡ÌÍ "'+Trim(EName.Text)+'". '+a1+' '+a2+' '+ChBox.Caption;
  fBAutoEdit.BankID   := BankID;
  fBAutoEdit.AutoType := s;
  fBAutoEdit.ChBox    := chBox;
  fBAutoEdit.OpenMode := OpenMode;
  fBAutoEdit.Show;
 end;
 if (not(chBox.Checked)and(FMode=1)) then
 begin
  i := fData.GetCount('TB_AUTO','ID','where ((BANK='+IntToStr(BankID)+') and (AUTO_T = '''+s+'''))');
  if (i > 0) then fData.CustomDel('TB_AUTO', '((BANK='+IntToStr(BankID)+') and (AUTO_T = '''+s+'''))') else
  if (i = -1) then
   begin
    MessageBox(fBAuto.Handle,'œÓËÁÓ¯Î‡ Ó¯Ë·Í‡. œÓÔÓ·ÛÈÚÂ ÔÓ‚ÚÓËÚ¸ ÔÓÔ˚ÚÍÛ ÔÓÁ‰ÌÂÂ.','Œ¯Ë·Í‡!',MB_ICONWARNING or MB_OK);
    FMode := 0;
    chBox.Checked := TRUE;
    FMode := 1;
   end;
 end;
end;

procedure TfBAuto.chMnFClick(Sender: TObject);
begin
 CheckAuto(chMnF);
end;

procedure TfBAuto.chMnJClick(Sender: TObject);
begin
 CheckAuto(chMnJ);
end;

procedure TfBAuto.chMnAClick(Sender: TObject);
begin
 CheckAuto(chMnA);
end;

procedure TfBAuto.chMnSClick(Sender: TObject);
begin
 CheckAuto(chMnS);
end;

procedure TfBAuto.chMnUClick(Sender: TObject);
begin
 CheckAuto(chMnU);
end;

procedure TfBAuto.chMoFClick(Sender: TObject);
begin
 CheckAuto(chMoF);
end;

procedure TfBAuto.chMoJClick(Sender: TObject);
begin
 CheckAuto(chMoJ);
end;

procedure TfBAuto.chMoAClick(Sender: TObject);
begin
 CheckAuto(chMoA);
end;

procedure TfBAuto.chMoSClick(Sender: TObject);
begin
 CheckAuto(chMoS);
end;

procedure TfBAuto.chMoUClick(Sender: TObject);
begin
 CheckAuto(chMoU);
end;

procedure TfBAuto.chHnFClick(Sender: TObject);
begin
 CheckAuto(chHnF);
end;

procedure TfBAuto.chHnJClick(Sender: TObject);
begin
 CheckAuto(chHnJ);
end;

procedure TfBAuto.chHnAClick(Sender: TObject);
begin
 CheckAuto(chHnA);
end;

procedure TfBAuto.chHnSClick(Sender: TObject);
begin
 CheckAuto(chHnS);
end;

procedure TfBAuto.chHnUClick(Sender: TObject);
begin
 CheckAuto(chHnU);
end;

procedure TfBAuto.chHoFClick(Sender: TObject);
begin
 CheckAuto(chHoF);
end;

procedure TfBAuto.chHoJClick(Sender: TObject);
begin
 CheckAuto(chHoJ);
end;

procedure TfBAuto.chHoAClick(Sender: TObject);
begin
 CheckAuto(chHoA);
end;

procedure TfBAuto.chHoSClick(Sender: TObject);
begin
 CheckAuto(chHoS);
end;

procedure TfBAuto.chHoUClick(Sender: TObject);
begin
 CheckAuto(chHoU);
end;

procedure TfBAuto.chEnFClick(Sender: TObject);
begin
 CheckAuto(chEnF);
end;

procedure TfBAuto.chEnJClick(Sender: TObject);
begin
 CheckAuto(chEnJ);
end;

procedure TfBAuto.chEnAClick(Sender: TObject);
begin
 CheckAuto(chEnA);
end;

procedure TfBAuto.chEnSClick(Sender: TObject);
begin
 CheckAuto(chEnS);
end;

procedure TfBAuto.chEnUClick(Sender: TObject);
begin
 CheckAuto(chEnU);
end;

procedure TfBAuto.chEoFClick(Sender: TObject);
begin
 CheckAuto(chEoF);
end;

procedure TfBAuto.chEoJClick(Sender: TObject);
begin
 CheckAuto(chEoJ);
end;

procedure TfBAuto.chEoAClick(Sender: TObject);
begin
 CheckAuto(chEoA);
end;

procedure TfBAuto.chEoSClick(Sender: TObject);
begin
 CheckAuto(chEoS);
end;

procedure TfBAuto.chEoUClick(Sender: TObject);
begin
 CheckAuto(chEoU);
end;

function TfBAuto.ADouble(A, P, T: integer): byte;
var b,e: string; rec,val,s: string;
begin
 try
 except
  MessageBox(fBAuto.Handle,'œÓËÁÓ¯Î‡ Ó¯Ë·Í‡! œÓÔÓ·ÛÈÚÂ ÔÓ‚ÚÓËÚ¸ ÔÓÁ‰ÌÂÂ.','Œ¯Ë·Í‡!',MB_ICONWARNING or MB_OK);
  Result := 1;
  FMode:=1;
 end;
end;

procedure TfBAuto.bdLnFClick(Sender: TObject);
begin
 CheckAuto(chLnF,1);
end;

procedure TfBAuto.bdLnJClick(Sender: TObject);
begin
 CheckAuto(chLnJ,1);
end;

procedure TfBAuto.bdLnAClick(Sender: TObject);
begin
 CheckAuto(chLnA,1);
end;

procedure TfBAuto.bdLnSClick(Sender: TObject);
begin
 CheckAuto(chLnS,1);
end;

procedure TfBAuto.bdLnUClick(Sender: TObject);
begin
 CheckAuto(chLnU,1);
end;

procedure TfBAuto.bdLnEClick(Sender: TObject);
begin
 CheckAuto(chLnE,1);
end;

procedure TfBAuto.bdLoFClick(Sender: TObject);
begin
 CheckAuto(chLoF,1);
end;

procedure TfBAuto.bdLoJClick(Sender: TObject);
begin
 CheckAuto(chLoJ,1);
end;

procedure TfBAuto.bdLoAClick(Sender: TObject);
begin
 CheckAuto(chLoA,1);
end;

procedure TfBAuto.bdLoSClick(Sender: TObject);
begin
 CheckAuto(chLoS,1);
end;

procedure TfBAuto.bdLoUClick(Sender: TObject);
begin
 CheckAuto(chLoU,1);
end;

procedure TfBAuto.bdLoEClick(Sender: TObject);
begin
 CheckAuto(chLoE,1);
end;

procedure TfBAuto.bdMnFClick(Sender: TObject);
begin
 CheckAuto(chMnF,1);
end;

procedure TfBAuto.bdMnJClick(Sender: TObject);
begin
 CheckAuto(chMnJ,1);
end;

procedure TfBAuto.bdMnAClick(Sender: TObject);
begin
 CheckAuto(chMnA,1);
end;

procedure TfBAuto.bdMnSClick(Sender: TObject);
begin
 CheckAuto(chMnS,1);
end;

procedure TfBAuto.bdMnUClick(Sender: TObject);
begin
 CheckAuto(chMnU,1);
end;

procedure TfBAuto.bdMnEClick(Sender: TObject);
begin
 CheckAuto(chMnE,1);
end;

procedure TfBAuto.bdHnFClick(Sender: TObject);
begin
 CheckAuto(chHnF,1);
end;

procedure TfBAuto.bdHnJClick(Sender: TObject);
begin
 CheckAuto(chHnJ,1);
end;

procedure TfBAuto.bdHnAClick(Sender: TObject);
begin
 CheckAuto(chHnA,1);
end;

procedure TfBAuto.bdHnSClick(Sender: TObject);
begin
 CheckAuto(chHnS,1);
end;

procedure TfBAuto.bdHnUClick(Sender: TObject);
begin
 CheckAuto(chHnU,1);
end;

procedure TfBAuto.bdHnEClick(Sender: TObject);
begin
 CheckAuto(chHnE,1);
end;

procedure TfBAuto.bdEnFClick(Sender: TObject);
begin
 CheckAuto(chEnF,1);
end;

procedure TfBAuto.bdEnJClick(Sender: TObject);
begin
 CheckAuto(chEnJ,1);
end;

procedure TfBAuto.bdEnAClick(Sender: TObject);
begin
 CheckAuto(chEnA,1);
end;

procedure TfBAuto.bdEnSClick(Sender: TObject);
begin
 CheckAuto(chEnS,1);
end;

procedure TfBAuto.bdEnUClick(Sender: TObject);
begin
 CheckAuto(chEnU,1);
end;

procedure TfBAuto.bdEnEClick(Sender: TObject);
begin
 CheckAuto(chEnE,1);
end;

procedure TfBAuto.bdMoFClick(Sender: TObject);
begin
 CheckAuto(chMoF,1);
end;

procedure TfBAuto.bdMoJClick(Sender: TObject);
begin
 CheckAuto(chMoJ,1);
end;

procedure TfBAuto.bdMoAClick(Sender: TObject);
begin
 CheckAuto(chMoA,1);
end;

procedure TfBAuto.bdMoSClick(Sender: TObject);
begin
 CheckAuto(chMoS,1);
end;

procedure TfBAuto.bdMoUClick(Sender: TObject);
begin
 CheckAuto(chMoU,1);
end;

procedure TfBAuto.bdMoEClick(Sender: TObject);
begin
 CheckAuto(chMoE,1);
end;

procedure TfBAuto.bdHoFClick(Sender: TObject);
begin
 CheckAuto(chHoF,1);
end;

procedure TfBAuto.bdHoJClick(Sender: TObject);
begin
 CheckAuto(chHoJ,1);
end;

procedure TfBAuto.bdHoAClick(Sender: TObject);
begin
 CheckAuto(chHoA,1);
end;

procedure TfBAuto.bdHoSClick(Sender: TObject);
begin
 CheckAuto(chHoS,1);
end;

procedure TfBAuto.bdHoUClick(Sender: TObject);
begin
 CheckAuto(chHoU,1);
end;

procedure TfBAuto.bdHoEClick(Sender: TObject);
begin
 CheckAuto(chHoE,1);
end;

procedure TfBAuto.bdEoFClick(Sender: TObject);
begin
 CheckAuto(chEoF,1);
end;

procedure TfBAuto.bdEoJClick(Sender: TObject);
begin
 CheckAuto(chEoJ,1);
end;

procedure TfBAuto.bdEoAClick(Sender: TObject);
begin
 CheckAuto(chEoA,1);
end;

procedure TfBAuto.bdEoSClick(Sender: TObject);
begin
 CheckAuto(chEoS,1);
end;

procedure TfBAuto.bdEoUClick(Sender: TObject);
begin
 CheckAuto(chEoU,1);
end;

procedure TfBAuto.bdEoEClick(Sender: TObject);
begin
 CheckAuto(chEoE,1);
end;

procedure TfBAuto.FormCreate(Sender: TObject);
begin
 if (Screen.Height<1024) then
 begin
  fBAuto.AutoSize:=FALSE;
  fBAuto.Width:=700;
  fBAuto.Height:=500;
 end;
 FMode := 0;
end;

procedure TfBAuto.BitBtn1Click(Sender: TObject);
begin
 Application.CreateForm(TfAutoDoub, fAutoDoub);
 fAutoDoub.BankID := BankID;
 fAutoDoub.Show();
end;

procedure TfBAuto.bADoubleClick(Sender: TObject);
begin
 Application.CreateForm(TfAutoDoub, fAutoDoub);
 fAutoDoub.BankID := BankID;
 fAutoDoub.Show();
end;

procedure TfBAuto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fMain.BAutoShow(self);
end;

procedure TfBAuto.BPrintClick(Sender: TObject);
begin
 fMain.BankPrint('TB_BANKAUTO',BankID,'TB_AUTO');
end;

end.
