object FormCalculadora: TFormCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 149
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSomar: TButton
    Left = 56
    Top = 120
    Width = 57
    Height = 25
    Caption = '+'
    TabOrder = 0
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 129
    Top = 120
    Width = 56
    Height = 25
    Caption = '-'
    TabOrder = 1
    OnClick = btnSubtrairClick
  end
  object btnDividirInteiro: TButton
    Left = 347
    Top = 120
    Width = 58
    Height = 25
    Caption = 'div'
    TabOrder = 2
    OnClick = btnDividirInteiroClick
  end
  object btnMultiplicar: TButton
    Left = 200
    Top = 120
    Width = 56
    Height = 25
    Caption = '*'
    TabOrder = 3
    OnClick = btnMultiplicarClick
  end
  object btnDividirFlutuante: TButton
    Left = 272
    Top = 120
    Width = 58
    Height = 25
    Caption = '/'
    TabOrder = 4
    OnClick = btnDividirFlutuanteClick
  end
  object btnResto: TButton
    Left = 419
    Top = 120
    Width = 57
    Height = 25
    Caption = 'mod'
    TabOrder = 5
    OnClick = btnRestoClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 7
    Width = 496
    Height = 99
    Caption = 'Informe os valores para o c'#225'lculo'
    TabOrder = 6
    object Label1: TLabel
      Left = 175
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Valor2'
    end
    object Label2: TLabel
      Left = 24
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Valor1'
    end
    object Label3: TLabel
      Left = 313
      Top = 54
      Width = 9
      Height = 13
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 339
      Top = 32
      Width = 48
      Height = 13
      Caption = 'Resultado'
    end
    object Resultado: TEdit
      Left = 339
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Valor1: TEdit
      Left = 24
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Valor2: TEdit
      Left = 175
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
end
