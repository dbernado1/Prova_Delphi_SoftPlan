unit uTarefa3;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit
  being tested.

}

interface

uses
  TestFramework, System.Variants, Data.DB, Datasnap.DBClient, Winapi.Windows,
  Vcl.Dialogs, Vcl.Grids, Vcl.Forms, Vcl.ExtCtrls, Vcl.Controls, ufTarefa3,
  System.Classes, System.SysUtils, Winapi.Messages, Vcl.DBGrids, MidasLib, Vcl.Graphics,
  Vcl.StdCtrls, Vcl.Buttons;

type
  // Test methods for class TfTarefa3

  TestTfTarefa3 = class(TObject)
  strict private
    FfTarefa3: TfTarefa3;
    function PopulaDataSet: TClientDataSet;
  public
    [Setup]
    procedure SetUp; override;

    [TearDown]
    procedure TearDown; override;

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

procedure TestTfTarefa3.SetUp;
begin
  FfTarefa3 := TfTarefa3.Create(nil);
end;

procedure TestTfTarefa3.TearDown;
begin
  FfTarefa3.Free;
  FfTarefa3 := nil;
end;

procedure TestTfTarefa3.TestSomarValor;
var
  ReturnValue: Double;
  sDataCliente: TClientDataSet;
begin
  // TODO: Setup method call parameters
  sDataCliente := PopulaDataSet;

  ReturnValue := FfTarefa3.SomarValor(sDataCliente);
  // TODO: Validate method results

  CheckEquals(60, ReturnValue, 'A Fun��o somar valor falhou');
end;

procedure TestTfTarefa3.TestTotalDivisoes;
var
  ReturnValue: Double;
  sDataCliente: TClientDataSet;
begin
  // TODO: Setup method call parameters
  sDataCliente := PopulaDataSet;

  ReturnValue := FfTarefa3.TotalDivisoes(sDataCliente);
  // TODO: Validate method results

  CheckEquals(3.5, ReturnValue, 'A Fun��o Total Divis�es falhou');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTfTarefa3.Suite);
end.
