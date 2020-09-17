program CreditBroker;

uses
  Forms,
  uMain in 'uMain.pas' {fMain},
  uData in 'uData.pas' {fData: TDataModule},
  uBAuto in 'uBAuto.pas' {fBAuto},
  uBAutoEdit in 'uBAutoEdit.pas' {fBAutoEdit},
  uBankCreate in 'uBankCreate.pas' {fBankCreate},
  uWait in 'uWait.pas' {fWait},
  uBBuild in 'uBBuild.pas' {fBBuild},
  uBEarth in 'uBEarth.pas' {fBEarth},
  uBZalog in 'uBZalog.pas' {fBZalog},
  uBNon in 'uBNon.pas' {fBNon},
  uUAuto in 'uUAuto.pas' {fUAuto},
  uUBuild in 'uUBuild.pas' {fUBuild},
  uUEarth in 'uUEarth.pas' {fUEarth},
  uUZalog in 'uUZalog.pas' {fUZalog},
  uUNon in 'uUNon.pas' {fUNon},
  uUWork in 'uUWork.pas' {fUWork},
  uUShum in 'uUShum.pas' {fUShum},
  uUserCreate in 'uUserCreate.pas' {fUserCreate},
  uAutoDoub in 'uAutoDoub.pas' {fAutoDoub},
  uSplash in 'uSplash.pas' {fSplash};

{$R *.res}

begin
  Application.Initialize;
  fSplash := TfSplash.Create(Application);
  fSplash.Show;

  fSplash.Update;
  while fSplash.Timer1.Enabled do
    Application.ProcessMessages;

  Application.Title := 'Кредитный брокер';
  fSplash.Hide;
  fSplash.Free;
  Application.CreateForm(TfData, fData);
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
