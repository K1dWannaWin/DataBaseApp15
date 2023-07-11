object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 570
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Clients_btn: TButton
    Left = 24
    Top = 32
    Width = 257
    Height = 129
    Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1080
    TabOrder = 0
    OnClick = Clients_btnClick
  end
  object Warehouse_Btn: TButton
    Left = 24
    Top = 176
    Width = 257
    Height = 129
    Caption = #1057#1082#1083#1072#1076
    TabOrder = 1
    OnClick = Warehouse_BtnClick
  end
  object Purchase_Invoice_Btn: TButton
    Left = 24
    Top = 328
    Width = 257
    Height = 129
    Caption = #1055#1088#1080#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
    TabOrder = 2
    OnClick = Purchase_Invoice_BtnClick
  end
  object Providers_Btn: TButton
    Left = 320
    Top = 32
    Width = 257
    Height = 129
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
    TabOrder = 3
    OnClick = Providers_BtnClick
  end
  object Banks_Btn: TButton
    Left = 320
    Top = 176
    Width = 257
    Height = 129
    Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1073#1072#1085#1082#1072#1093
    TabOrder = 4
    OnClick = Banks_BtnClick
  end
  object Sales_invoice_Btn: TButton
    Left = 320
    Top = 328
    Width = 257
    Height = 129
    Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1077' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
    TabOrder = 5
    OnClick = Sales_invoice_BtnClick
  end
  object Quit: TButton
    Left = 468
    Top = 488
    Width = 109
    Height = 57
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 6
    OnClick = QuitClick
  end
end
