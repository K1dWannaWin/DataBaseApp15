object SPayment: TSPayment
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054#1087#1083#1072#1090#1072
  ClientHeight = 351
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 141
    Width = 99
    Height = 15
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099' '
  end
  object Label2: TLabel
    Left = 32
    Top = 98
    Width = 64
    Height = 15
    Caption = 'ID '#1087#1086#1089#1090#1072#1074#1082#1080
  end
  object Label3: TLabel
    Left = 32
    Top = 37
    Width = 69
    Height = 15
    Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
  end
  object Label4: TLabel
    Left = 32
    Top = 226
    Width = 82
    Height = 15
    Caption = #1057#1091#1084#1084#1072' '#1086#1087#1083#1072#1090#1099
  end
  object ID: TDBLookupComboBox
    Left = 152
    Top = 90
    Width = 209
    Height = 23
    KeyField = 'Id'
    ListField = 'Id'
    ListSource = DataModule1.SInvDS
    TabOrder = 0
  end
  object Button1: TButton
    Left = 240
    Top = 288
    Width = 121
    Height = 33
    Caption = #1042#1085#1077#1089#1090#1080' '#1076#1072#1090#1091' '#1086#1087#1083#1072#1090#1099
    TabOrder = 1
    OnClick = Button1Click
  end
  object Quit: TButton
    Left = 112
    Top = 288
    Width = 89
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = QuitClick
  end
  object EDate: TEdit
    Left = 152
    Top = 34
    Width = 209
    Height = 23
    TabOrder = 3
    TextHint = '28.12.2023'
  end
  object name: TDBComboBox
    Left = 152
    Top = 176
    Width = 89
    Height = 23
    DataField = 'code_pokup'
    DataSource = DataModule1.SInvDS
    TabOrder = 4
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 152
    Top = 133
    Width = 209
    Height = 23
    DataField = 'name_pokup'
    DataSource = DataModule1.SInvDS
    ReadOnly = True
    TabOrder = 5
  end
  object Sum: TEdit
    Left = 152
    Top = 218
    Width = 209
    Height = 23
    TabOrder = 6
    TextHint = '1000.00'
  end
  object PaymentQ: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 24
    Top = 280
  end
end
