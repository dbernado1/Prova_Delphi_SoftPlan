object fProvaDelphiApp: TfProvaDelphiApp
  Left = 0
  Top = 0
  Caption = 'fProvaDelphiApp'
  ClientHeight = 583
  ClientWidth = 1211
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1211
    Height = 73
    Align = alTop
    TabOrder = 0
    object pnTarefa1: TPanel
      Left = 186
      Top = 1
      Width = 185
      Height = 71
      Align = alLeft
      Caption = 'Tarefa 01'
      TabOrder = 0
      OnClick = pnTarefa1Click
    end
    object pnTarefa2: TPanel
      Left = 371
      Top = 1
      Width = 185
      Height = 71
      Align = alLeft
      Caption = 'Tarefa 02'
      TabOrder = 1
      OnClick = pnTarefa2Click
    end
    object pnTarefa3: TPanel
      Left = 556
      Top = 1
      Width = 185
      Height = 71
      Align = alLeft
      Caption = 'Tarefa 03'
      TabOrder = 2
      OnClick = pnTarefa3Click
    end
    object pnInicio: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 71
      Align = alLeft
      Caption = 'In'#237'cio'
      TabOrder = 3
      OnClick = pnInicioClick
    end
  end
end
