object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 45
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 184
    Top = 45
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label3: TLabel
    Left = 336
    Top = 45
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object MaskEdit1: TMaskEdit
    Left = 32
    Top = 64
    Width = 120
    Height = 21
    EditMask = '999.999.999-99'
    MaxLength = 14
    TabOrder = 0
    Text = '   .   .   -  '
  end
  object MaskEdit2: TMaskEdit
    Left = 184
    Top = 64
    Width = 119
    Height = 21
    EditMask = '(99) 99999-9999'
    MaxLength = 15
    TabOrder = 1
    Text = '(  )      -    '
  end
  object MaskEdit3: TMaskEdit
    Left = 336
    Top = 64
    Width = 120
    Height = 21
    EditMask = '99.999.999/9999-99'
    MaxLength = 18
    TabOrder = 2
    Text = '  .   .   /    -  '
  end
end
