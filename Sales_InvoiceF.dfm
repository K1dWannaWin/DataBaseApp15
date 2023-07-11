object Sales_Invoice: TSales_Invoice
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
  ClientHeight = 632
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 248
    Top = 16
    Width = 117
    Height = 15
    Caption = #1056#1072#1089#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
  end
  object Label2: TLabel
    Left = 240
    Top = 205
    Width = 134
    Height = 15
    Caption = #1056#1072#1089#1093#1086#1076' '#1090#1086#1074#1072#1088#1072' '#1085#1072' '#1089#1082#1083#1072#1076#1077
  end
  object Label3: TLabel
    Left = 104
    Top = 396
    Width = 119
    Height = 15
    Caption = #1054#1087#1083#1072#1090#1072' '#1087#1086' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 37
    Width = 697
    Height = 161
    Ctl3D = True
    DataSource = DataModule1.SInvDS
    ImeMode = imAlpha
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnEnter = DBGrid1Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'code_pokup'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_pokup'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_pokup'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sum'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SumPl'
        Title.Caption = #1042#1085#1077#1089#1077#1085#1085#1072#1103' '#1086#1087#1083#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ostatok'
        Title.Caption = #1054#1089#1090#1072#1083#1086#1089#1100' '#1079#1072#1087#1083#1072#1090#1080#1090#1100
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 226
    Width = 545
    Height = 161
    DataSource = DataModule1.SinvGDS
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnEnter = DBGrid2Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'Nazv_T'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sales_invoice_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kol_p'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cena'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sum'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 150
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 282
    Top = 549
    Width = 161
    Height = 57
    Caption = #1054#1087#1083#1072#1090#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
    TabOrder = 2
    OnClick = Button1Click
  end
  object Quit: TButton
    Left = 603
    Top = 549
    Width = 109
    Height = 57
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = QuitClick
  end
  object Button2: TButton
    Left = 194
    Top = 549
    Width = 80
    Height = 57
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 557
    Width = 168
    Height = 49
    DataSource = DataModule1.PinvDS
    VisibleButtons = [nbPrior, nbNext, nbRefresh]
    TabOrder = 5
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 417
    Width = 337
    Height = 123
    DataSource = DataModule1.PListDS
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnEnter = DBGrid3Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'Data_Pl'
        Title.Caption = #1044#1072#1090#1072
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sum_Pl'
        Title.Caption = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
        Width = 200
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 449
    Top = 549
    Width = 148
    Height = 57
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
    TabOrder = 7
    OnClick = Button3Click
  end
  object PrintDialog1: TPrintDialog
    Left = 840
    Top = 304
  end
end
