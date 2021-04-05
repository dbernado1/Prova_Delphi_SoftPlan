object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 385
  ClientWidth = 558
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 558
    Height = 89
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      558
      89)
    object btnObterTotal: TSpeedButton
      Left = 368
      Top = 21
      Width = 73
      Height = 21
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Obter Total'
      OnClick = btnObterTotalClick
    end
    object btnTotalDivisoes: TSpeedButton
      Left = 337
      Top = 59
      Width = 104
      Height = 21
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Obter Total Divis'#245'es'
      OnClick = btnTotalDivisoesClick
    end
    object edSomaTotal: TEdit
      Left = 447
      Top = 21
      Width = 106
      Height = 21
      Anchors = [akTop, akRight, akBottom]
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 0
      Text = '0,00'
    end
    object edtTotalDivisoes: TEdit
      Left = 447
      Top = 59
      Width = 106
      Height = 21
      Anchors = [akTop, akRight, akBottom]
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 1
      Text = '0,00'
    end
    object StaticText1: TStaticText
      Left = 447
      Top = 3
      Width = 48
      Height = 17
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Total R$:'
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 447
      Top = 42
      Width = 89
      Height = 17
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Total divis'#245'es R$:'
      TabOrder = 3
    end
  end
  object StaticText3: TStaticText
    Left = 0
    Top = 0
    Width = 558
    Height = 17
    Align = alTop
    Caption = 'Valores por projeto:'
    TabOrder = 1
  end
  object dbgProjetos: TDBGrid
    Left = 0
    Top = 17
    Width = 558
    Height = 280
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
