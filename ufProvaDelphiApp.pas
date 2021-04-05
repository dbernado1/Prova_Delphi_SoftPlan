unit ufProvaDelphiApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, ufTarefa1, ufTarefa2, ufTarefa3, ufrmBemVindo;

type
  TfProvaDelphiApp = class(TForm)
    Panel1: TPanel;
    pnTarefa1: TPanel;
    pnTarefa2: TPanel;
    pnTarefa3: TPanel;
    pnInicio: TPanel;
    procedure pnTarefa1Click(Sender: TObject);
    procedure pnTarefa2Click(Sender: TObject);
    procedure pnTarefa3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnInicioClick(Sender: TObject);
  private
    { Private declarations }
    FspFormTarefaUM   : TfTarefa1;
    FspFormTarefaDOIS : TfTarefa2;
    FspFormTarefaTRES : TfTarefa3;
    FspFormBemVindo   : TfrmBemVindo;
  public
    { Public declarations }
  end;

var
  fProvaDelphiApp: TfProvaDelphiApp;

implementation

{$R *.dfm}

procedure TfProvaDelphiApp.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FspFormTarefaUM);

  FreeAndNil(FspFormTarefaDOIS);

  FreeAndNil(FspFormTarefaTRES);

  FreeAndNil(FspFormBemVindo);
end;

procedure TfProvaDelphiApp.FormShow(Sender: TObject);
begin
  FspFormTarefaUM   := TfTarefa1.Create(nil);
  FspFormTarefaDOIS := TfTarefa2.Create(nil);
  FspFormTarefaTRES := TfTarefa3.Create(nil);
  FspFormBemVindo   := TfrmBemVindo.Create(nil);

  FspFormBemVindo.Show;
end;

procedure TfProvaDelphiApp.pnInicioClick(Sender: TObject);
begin
  FspFormBemVindo.Show;

  FspFormTarefaUM.Close;
  FspFormTarefaDOIS.Close;
  FspFormTarefaTRES.Close;
end;

procedure TfProvaDelphiApp.pnTarefa1Click(Sender: TObject);
begin
  FspFormTarefaUM.Show;

  FspFormTarefaDOIS.Close;
  FspFormTarefaTRES.Close;
  FspFormBemVindo.Close;
end;

procedure TfProvaDelphiApp.pnTarefa2Click(Sender: TObject);
begin
  FspFormTarefaDOIS.Show;

  FspFormTarefaUM.Close;
  FspFormTarefaTRES.Close;
  FspFormBemVindo.Close;
end;

procedure TfProvaDelphiApp.pnTarefa3Click(Sender: TObject);
begin
  FspFormTarefaTRES.Show;

  FspFormTarefaUM.Close;
  FspFormTarefaDOIS.Close;
  FspFormBemVindo.Close;
end;

end.
