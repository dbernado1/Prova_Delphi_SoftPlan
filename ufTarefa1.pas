unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uspQuery, Vcl.StdCtrls;

type
  TfTarefa1 = class(TForm)
    mColunas: TMemo;
    mTabelas: TMemo;
    mCondicoes: TMemo;
    mSqlGerado: TMemo;
    btnGeraSql: TSpeedButton;
    tspGeraSql: TspQuery;
    lbColunas: TLabel;
    lbTabelas: TLabel;
    lbCondicoes: TLabel;
    Label2: TLabel;
    procedure btnGeraSqlClick(Sender: TObject);
  private

  public
    Function MontaSql(Colunas, Tabelas, Condicoes: Tmemo): String;
  end;

implementation

{$R *.dfm}

{ TfTarefa1 }

procedure TfTarefa1.btnGeraSqlClick(Sender: TObject);
begin
  mSqlGerado.Text := MontaSql(mColunas, mTabelas, mCondicoes);
end;

function TfTarefa1.MontaSql(Colunas, Tabelas,
  Condicoes: Tmemo): String;
var 
  i: Integer;
begin
  Result := '';

  tspGeraSql := TspQuery.Create(nil);

  try
    try
      for i := 0 to Colunas.Lines.Count -1 do
        tspGeraSql.spColunas.Add(Colunas.Lines[i]);
        
      for i := 0 to Tabelas.Lines.Count -1 do
        tspGeraSql.spTabelas.Add(Tabelas.Lines[i]);
        
      for i := 0 to Condicoes.Lines.Count -1 do
        tspGeraSql.spCondicoes.Add(Condicoes.Lines[i]);
        
      tspGeraSql.GeraSQL;
      
      Result := tspGeraSql.SQL.Text;
    except
      on E:exception do
        ShowMessage(E.Message);
    end;

  finally
    FreeAndNil(tspGeraSql);
  end;
end;

end.
