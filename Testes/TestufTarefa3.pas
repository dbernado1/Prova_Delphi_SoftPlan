unit TestufTarefa3;

interface

uses
  TestFramework, System.Variants, Data.DB, Datasnap.DBClient, Winapi.Windows,
  Vcl.Dialogs, Vcl.Grids, Vcl.Forms, Vcl.ExtCtrls, Vcl.Controls, ufTarefa3,
  System.Classes, System.SysUtils, Winapi.Messages, Vcl.DBGrids, MidasLib, Vcl.Graphics,
  Vcl.StdCtrls, Vcl.Buttons, DUnitX.TestFramework;

type

  [TestFixture]

  TestTfTarefa3 = class(TObject)
  strict private
    FfTarefa3: TfTarefa3;
    function PopulaDataSet: TClientDataSet;
  public

    [Test]
    procedure TestSomarValor;

    [Test]
    procedure TestTotalDivisoes;
  end;

implementation

function TestTfTarefa3.PopulaDataSet: TClientDataSet;
begin
  Result := TClientDataSet.Create(nil);

  Result.FieldDefs.Add('VALOR', ftFloat);

  Result.CreateDataSet;

  Result.Append;
  Result.FieldByName('VALOR').AsFloat := 10;
  Result.Post;

  Result.Append;
  Result.FieldByName('VALOR').AsFloat := 20;
  Result.Post;

  Result.Append;
  Result.FieldByName('VALOR').AsFloat := 30;
  Result.Post;
end;

procedure TestTfTarefa3.TestSomarValor;
var
  ReturnValue: Double;
  sDataCliente: TClientDataSet;
begin
  // TODO: Setup method call parameters
  sDataCliente := TClientDataSet.Create(nil);
  FfTarefa3 := TfTarefa3.Create(nil);
  try
    sDataCliente := PopulaDataSet;

    ReturnValue := FfTarefa3.SomarValor(sDataCliente);
    // TODO: Validate method results

    Assert.AreEqual('60', FloatToStr(ReturnValue), 'A Fun??o somar valor falhou');
  finally
    FreeAndNil(sDataCliente);
    FfTarefa3.Free;
    FfTarefa3 := nil;
  end;
end;

procedure TestTfTarefa3.TestTotalDivisoes;
var
  ReturnValue: Double;
  sDataCliente: TClientDataSet;
begin
  // TODO: Setup method call parameters
  sDataCliente := TClientDataSet.Create(nil);
  FfTarefa3 := TfTarefa3.Create(nil);
  try
    sDataCliente := PopulaDataSet;

    ReturnValue := FfTarefa3.TotalDivisoes(sDataCliente);
    // TODO: Validate method results

    Assert.AreEqual('3.5', FloatToStr(ReturnValue), 'A Fun??o Total Divis?es falhou');
  finally
    FreeAndNil(sDataCliente);
    FfTarefa3.Free;
    FfTarefa3 := nil;
  end;

end;

initialization
  // Register any test cases with the test runner
  TDUnitX.RegisterTestFixture(TestTfTarefa3);
end.

