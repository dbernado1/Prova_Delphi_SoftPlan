unit uTarefa1;

interface

uses Classes, SysUtils, uspQuery, Firedac.DApt;

type
 TTarefa1 = class
   private
     FCondicoes: TStringList;
     FColunas: TStringList;
     FTabelas: TStringList;
    FSQL: String;
    FErro: String;
   public
     function GerarSQL: Boolean;
   
     constructor Create;
     destructor Destroy;
   published
     property Condicoes: TStringList read FCondicoes write FCondicoes;
     property Colunas:   TStringList read FColunas   write FColunas;
     property Tabelas:   TStringList read FTabelas   write FTabelas;
     property SQL:       String      read FSQL       write FSQL;
     property Erro:      String      read FErro      write FErro;
 end;
implementation

constructor TTarefa1.Create;
begin
  FCondicoes := TStringList.Create;
  FColunas   := TStringList.Create;
  FTabelas   := TStringList.Create;
end;

destructor TTarefa1.Destroy;
begin
 FreeAndNil(FCondicoes);
 FreeAndNil(FColunas);  
 FreeAndNil(FTabelas);
end;

function TTarefa1.GerarSQL: Boolean;
var
  tspGeraSql :  TspQuery;
begin
  tspGeraSql := TspQuery.Create(nil);

  try
    try
     tspGeraSql.spColunas   := Self.Colunas;
     tspGeraSql.spCondicoes := Self.Condicoes;
     tspGeraSql.spTabelas   := Self.Tabelas;

     tspGeraSql.GeraSQL;
      
     Self.SQL := tspGeraSql.SQL.Text;
     Result   := True;
    except
      on E:exception do
       begin
        Self.Erro := E.Message;
          raise Exception.Create(E.Message);
       end;
    end;

  finally
    FreeAndNil(tspGeraSql);
  end;
end;
end.
