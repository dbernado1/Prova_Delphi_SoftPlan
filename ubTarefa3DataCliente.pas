unit ubTarefa3DataCliente;

interface


uses
  System.SysUtils, System.Variants, System.Classes, Datasnap.DBClient;
type
  Tarefa3DataCliente = class(TClientDataSet)
  public
    constructor Tarefa3DataCliente(Banco: Tarefa3DataCliente);
    Procedure PreencherDataCliente;
    function SomarValor(): Double;
end;

var
  DataClienteTarefa3: Tarefa3DataCliente;

implementation

{ Tarefa3DataCliente }

procedure Tarefa3DataCliente.PreencherDataCliente;
var
  I: Integer;
begin

  for I := 1 to 10 do
  begin
    DataClienteTarefa3.Insert;
    DataClienteTarefa3.FieldByName('IDPROJETO').AsInteger := I;
    DataClienteTarefa3.FieldByName('NOMEPROJETO').AsString := 'Projeto ' + IntToStr(I);
    DataClienteTarefa3.FieldByName('VALOR').AsFloat := I * 10.00;
    DataClienteTarefa3.Post;
  end;
end;

function Tarefa3DataCliente.SomarValor: Double;
begin
  Result := 0;
  with DataClienteTarefa3.Aggregates.Add do
  begin
    AggregateName := 'ValorTotal';
    Name          := 'ValorTotal';
    Expression    := 'SUM(VALOR)';
    Active        := True;
  end;
  DataClienteTarefa3.AggregatesActive := True;

  Result := DataClienteTarefa3.Aggregates.Items[0].Value;
end;

constructor Tarefa3DataCliente.Tarefa3DataCliente;
begin
  DataClienteTarefa3 := DataClienteTarefa3.Create(Self);
  DataClienteTarefa3.open;
  DataClienteTarefa3.FieldDefs.Add('IDPROJETO', ftInteger);
  DataClienteTarefa3.FieldDefs.Add('NOMEPROJETO', ftString, 60);
  DataClienteTarefa3.FieldDefs.Add('VALOR', ftFloat);

  DataClienteTarefa3.CreateDataSet;



end;

end.
