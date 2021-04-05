object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 460
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object btnGeraSql: TSpeedButton
    Left = 615
    Top = 163
    Width = 108
    Height = 22
    Caption = 'Gera SQL'
    OnClick = btnGeraSqlClick
  end
  object lbColunas: TLabel
    Left = 2
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lbTabelas: TLabel
    Left = 216
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lbCondicoes: TLabel
    Left = 424
    Top = 8
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object Label2: TLabel
    Left = 2
    Top = 206
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object mColunas: TMemo
    Left = 0
    Top = 24
    Width = 185
    Height = 161
    TabOrder = 0
  end
  object mTabelas: TMemo
    Left = 216
    Top = 24
    Width = 185
    Height = 161
    TabOrder = 1
  end
  object mCondicoes: TMemo
    Left = 424
    Top = 24
    Width = 185
    Height = 161
    TabOrder = 2
  end
  object mSqlGerado: TMemo
    Left = 0
    Top = 224
    Width = 731
    Height = 236
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
  end
  object tspGeraSql: TspQuery
    Left = 648
    Top = 80
  end
end
