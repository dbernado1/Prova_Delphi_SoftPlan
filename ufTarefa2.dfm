object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'fTarefa2'
  ClientHeight = 125
  ClientWidth = 368
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
  object btnIniciarTrhads: TSpeedButton
    Left = 224
    Top = 8
    Width = 137
    Height = 27
    Caption = 'Iniciar Thrads'
    OnClick = btnIniciarTrhadsClick
  end
  object btnLimparCampos: TSpeedButton
    Left = 224
    Top = 40
    Width = 137
    Height = 27
    Caption = 'Limpar Campos'
    OnClick = btnLimparCamposClick
  end
  object pbBarraProgresso1: TProgressBar
    Left = 112
    Top = 73
    Width = 249
    Height = 21
    DoubleBuffered = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    Smooth = True
    SmoothReverse = True
    ShowHint = True
    TabOrder = 1
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold]
    StyleElements = [seFont, seClient]
  end
  object stTempoThread1: TStaticText
    Left = 8
    Top = 8
    Width = 80
    Height = 17
    Caption = 'Tempo thread 1'
    TabOrder = 2
  end
  object stPrimeriaThred: TStaticText
    Left = 8
    Top = 73
    Width = 71
    Height = 17
    Caption = 'Primeria thred'
    TabOrder = 3
  end
  object pbBarraProgresso2: TProgressBar
    Left = 112
    Top = 100
    Width = 249
    Height = 21
    DoubleBuffered = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object stSegundathred: TStaticText
    Left = 8
    Top = 100
    Width = 75
    Height = 17
    Caption = 'Segunda thred'
    TabOrder = 5
  end
  object stProgressoTred1: TStaticText
    Left = 224
    Top = 76
    Width = 21
    Height = 17
    Caption = '0%'
    TabOrder = 6
    StyleElements = [seFont]
  end
  object stProgressoTred2: TStaticText
    Left = 224
    Top = 102
    Width = 21
    Height = 17
    Caption = '0%'
    TabOrder = 7
    Transparent = False
  end
  object edTempoThread1: TEdit
    Left = 8
    Top = 25
    Width = 80
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = '0'
  end
  object stTempoTread2: TStaticText
    Left = 112
    Top = 8
    Width = 80
    Height = 17
    Caption = 'Tempo thread 2'
    TabOrder = 8
  end
  object edTempoThread2: TEdit
    Left = 112
    Top = 25
    Width = 80
    Height = 21
    NumbersOnly = True
    TabOrder = 9
    Text = '0'
  end
end
