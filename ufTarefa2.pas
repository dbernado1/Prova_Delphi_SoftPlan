unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.StdCtrls, System.Threading;

type
  TfTarefa2 = class(TForm)
    btnIniciarTrhads: TSpeedButton;
    pbBarraProgresso1: TProgressBar;
    stTempoThread1: TStaticText;
    stPrimeriaThred: TStaticText;
    pbBarraProgresso2: TProgressBar;
    stSegundathred: TStaticText;
    stProgressoTred1: TStaticText;
    stProgressoTred2: TStaticText;
    edTempoThread1: TEdit;
    btnLimparCampos: TSpeedButton;
    stTempoTread2: TStaticText;
    edTempoThread2: TEdit;
    procedure btnIniciarTrhadsClick(Sender: TObject);
    procedure btnLimparCamposClick(Sender: TObject);
  private
    Procedure ValidarCampos;
    Procedure ExecutaThreads;
    Procedure LimparCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.btnIniciarTrhadsClick(Sender: TObject);
begin
  ValidarCampos;
  ExecutaThreads;
end;

procedure TfTarefa2.btnLimparCamposClick(Sender: TObject);
begin
  LimparCampos;
end;

procedure TfTarefa2.ExecutaThreads;
var
  Threads: array of ITask;
begin
  Setlength(Threads ,2);

  Threads[0] := TTask.Create (
  procedure
  var
    I: Integer;
  begin
    for I := 1 to 100 do
    begin
      sleep(StrToInt(edTempoThread1.Text));
      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        pbBarraProgresso1.Position := pbBarraProgresso1.Position + 1;
        stProgressoTred1.Caption := IntToStr(I) + '%';
      end);
    end;
  end);
  Threads[0].Start;

  Threads[1] := TTask.Create(
  procedure
  var
    I: Integer;
  begin
    for I := 1 to 100 do
    begin
      sleep(StrToInt(edTempoThread2.Text));
      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        pbBarraProgresso2.Position := pbBarraProgresso2.Position + 1;
        stProgressoTred2.Caption := IntToStr(I) + '%';
      end);
    end
  end);
  Threads[1].Start;
end;

procedure TfTarefa2.LimparCampos;
begin
  //Limpando Campos da tela
  edTempoThread1.Text := '';
  edTempoThread1.Enabled := True;
  edTempoThread1.SetFocus;
  edTempoThread2.Text := '';
  edTempoThread2.Enabled := True;
  btnIniciarTrhads.Enabled := True;
  stProgressoTred1.Caption := '0%';
  stProgressoTred2.Caption := '0%';
  pbBarraProgresso1.Position := 0;
  pbBarraProgresso2.Position := 0;
end;

procedure TfTarefa2.ValidarCampos;
begin
  //Verificando se o valor em milisegundos informado é maior que zero!
  if (edTempoThread1.Text = '') or (StrToInt(edTempoThread1.Text) < 1) then
  begin
    ShowMessage('O valor em milesegundos deve ser maior que zero!');
    edTempoThread1.SetFocus;
    edTempoThread1.Text := '';
    Abort;
  end;

  if (edTempoThread2.Text = '') or (StrToInt(edTempoThread2.Text) < 1) then
  begin
    ShowMessage('O valor em milesegundos deve ser maior que zero!');
    edTempoThread2.SetFocus;
    edTempoThread2.Text := '';
    Abort;
  end;
  //Bloqueando os campos paraexecutar as trheds
  edTempoThread1.Enabled := False;
  btnIniciarTrhads.Enabled := False;
  edTempoThread2.Enabled := False;
end;

end.
