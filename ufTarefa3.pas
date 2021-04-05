unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, MidasLib;

type
  TfTarefa3 = class(TForm)
    Panel1: TPanel;
    btnObterTotal: TSpeedButton;
    edSomaTotal: TEdit;
    btnTotalDivisoes: TSpeedButton;
    edtTotalDivisoes: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    dbgProjetos: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
    procedure btnTotalDivisoesClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure PopularGrid;
    procedure RelacionarGrid;

    { Private declarations }
  public
    function SomarValor(sDataCliente: TClientDataSet): Double;
    function TotalDivisoes(sDataCliente: TClientDataSet): Double;
    { Public declarations }
  end;

var
  DataSetTarefa3: TDataSource;
  sDataClienteTarefa3: TClientDataSet;
implementation

{$R *.dfm}


procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  PopularGrid;
end;

procedure TfTarefa3.FormDestroy(Sender: TObject);
begin
  DataSetTarefa3.Free;
  sDataClienteTarefa3.Free;
end;

procedure TfTarefa3.PopularGrid;
var
  i: Integer;
begin
  try
    sDataClienteTarefa3 := TClientDataSet.Create(nil);

    sDataClienteTarefa3.FieldDefs.Add('IDPROJETO', ftInteger);
    sDataClienteTarefa3.FieldDefs.Add('NOMEPROJETO', ftString, 60);
    sDataClienteTarefa3.FieldDefs.Add('VALOR', ftFloat);

    sDataClienteTarefa3.CreateDataSet;

    for I := 1 to 10 do
    begin
      sDataClienteTarefa3.Append;
      sDataClienteTarefa3.FieldByName('IDPROJETO').AsInteger := I;
      sDataClienteTarefa3.FieldByName('NOMEPROJETO').AsString := 'Projeto ' + IntToStr(I);
      sDataClienteTarefa3.FieldByName('VALOR').AsFloat := Random(100);
      sDataClienteTarefa3.Post;
    end;

    RelacionarGrid;
  except
    on E:exception do
      ShowMessage('Não foi possível criar o DataSet, ' + E.Message);
  end;
end;

procedure TfTarefa3.RelacionarGrid;
begin
  DataSetTarefa3 := TDataSource.Create(nil);
  dbgProjetos.DataSource :=  DataSetTarefa3;
  DataSetTarefa3.DataSet := sDataClienteTarefa3;
end;

function TfTarefa3.SomarValor(sDataCliente: TClientDataSet): Double;
begin
  Result := 0;
  try
    with sDataCliente.Aggregates.Add do
    begin
      AggregateName := 'ValorTotal';
      Name          := 'ValorTotal';
      Expression    := 'SUM(VALOR)';
      Active        := True;
    end;
    sDataCliente.AggregatesActive := True;

    Result := sDataCliente.Aggregates.Items[0].Value;
  except
    on E:exception do
      ShowMessage('Não foi possível fazer a soma total, ' + E.Message);
  end;
end;

function TfTarefa3.TotalDivisoes(sDataCliente: TClientDataSet): Double;
var
  ValorAnterior: Double;
begin
  Result := 0;
  try
    sDataCliente.Open;
    sDataCliente.First;
    ValorAnterior := sDataClienteTarefa3.FieldByName('Valor').AsFloat;
    sDataCliente.Next;

    while not sDataCliente.Eof do
    begin
     if ValorAnterior > 0 then
       Result := Result + (sDataCliente.FieldByName('Valor').AsFloat / ValorAnterior);
     ValorAnterior := sDataCliente.FieldByName('Valor').AsFloat;
     sDataClienteTarefa3.Next;
    end;
  except
    on E:exception do
      ShowMessage('Não foi possível fazer a divisão, ' + E.Message);
  end;
end;

procedure TfTarefa3.btnObterTotalClick(Sender: TObject);
begin
  edSomaTotal.Text := FloatToStr(SomarValor(sDataClienteTarefa3));
end;

procedure TfTarefa3.btnTotalDivisoesClick(Sender: TObject);
begin
  if edtTotalDivisoes.Text = '0,00' then
    edtTotalDivisoes.Text := FormatFloat('#.##', TotalDivisoes(sDataClienteTarefa3));
end;

end.
