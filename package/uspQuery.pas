unit uspQuery;

interface
uses FireDAC.Comp.Client, Classes, SysUtils, FireDAC.Phys;

type
  TspQuery = class(TFDQuery)
  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;
  public
    procedure GeraSQL;

    constructor Create(aOwnerComponent: TComponent); override;
    destructor Destroy(); override;
  published
    property spCondicoes: TStringList read FspCondicoes write FspCondicoes;
    property spColunas:   TStringList read FspColunas   write FspColunas;
    property spTabelas:   TStringList read FspTabelas   write FspTabelas;
end;

implementation

constructor TspQuery.Create(aOwnerComponent: TComponent);
begin
  inherited;

  FspCondicoes := TStringList.Create;
  FspColunas   := TStringList.Create;
  FspTabelas   := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin
  inherited;

  FreeAndNil(FspCondicoes);
  FreeAndNil(FspColunas);
  FreeAndNil(FspTabelas);
end;

procedure TspQuery.GeraSQL;
var
 vStl: TStringList;
  I: Integer;
begin
  vStl := TStringList.Create;

  try
   if (Self.spTabelas.Count <= 0) then
    raise Exception.Create('N?o foi informada nenhuma tabela.');

   if (Self.spTabelas.Count > 1) then
    raise Exception.Create('S? ? permitido o uso de uma tabela por SQL.');

   vStl.Clear;
   vStl.Add('SELECT ');

   if (Self.spColunas.Count <= 0) then
    vStl.Add('*')
   else
    begin
     vStl.Add(self.spColunas[0]);

     for I := 1 to Self.spColunas.Count - 1 do
      vStl.Add(', ' +self.spColunas[I]);
    end;

   vStl.Add('FROM ' + Self.spTabelas[0]);

   if (Self.spCondicoes.Count > 0) then
    begin
     vStl.Add('WHERE ');
     vStl.Add(self.spCondicoes[0]);

     for I := 1 to Self.spCondicoes.Count - 1 do
      vStl.Add('AND ' + self.spCondicoes[I]);
    end;

   SQL.Add(vStl.Text);
  finally
   FreeAndNil(vStl);
  end;
end;
end.
