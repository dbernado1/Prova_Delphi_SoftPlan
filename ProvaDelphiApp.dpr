program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufProvaDelphiApp in 'ufProvaDelphiApp.pas' {fProvaDelphiApp},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3},
  ufrmBemVindo in 'ufrmBemVindo.pas' {frmBemVindo},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfProvaDelphiApp, fProvaDelphiApp);
  Application.Run;
end.
