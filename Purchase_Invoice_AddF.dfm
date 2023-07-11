object Purchase_Invoice_Add: TPurchase_Invoice_Add
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1080#1093#1086#1076#1085#1091#1102
  ClientHeight = 586
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 208
    Top = 19
    Width = 121
    Height = 15
    Caption = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
  end
  object Label2: TLabel
    Left = 208
    Top = 251
    Width = 132
    Height = 15
    Caption = #1055#1088#1080#1093#1086#1076' '#1090#1086#1074#1072#1088#1072' '#1085#1072' '#1089#1082#1083#1072#1076
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 505
    Height = 193
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnMouseActivate = DBGrid1MouseActivate
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PI'
        ReadOnly = True
        Title.Caption = 'ID'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Providers_Code_Post'
        Title.Caption = 'ID '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Post'
        Title.Caption = #1044#1072#1090#1072' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Title.Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 272
    Width = 505
    Height = 171
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnMouseActivate = DBGrid2MouseActivate
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PS'
        Title.Caption = 'ID'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Purchase_Invoice_ID'
        Title.Caption = 'ID '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Goods_ID'
        Title.Caption = 'ID '#1090#1086#1074#1072#1088#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kol_P'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCena'
        Title.Caption = #1062#1077#1085#1072
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 464
    Width = 504
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbCancel, nbRefresh]
    TabOrder = 2
  end
  object Quit: TButton
    Left = 404
    Top = 505
    Width = 109
    Height = 57
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = QuitClick
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'Select * from purchase_invoice')
    Left = 96
    Top = 520
    object FDQuery1ID_PI: TFDAutoIncField
      FieldName = 'ID_PI'
      Origin = 'ID_PI'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery1Providers_Code_Post: TIntegerField
      FieldName = 'Providers_Code_Post'
      Origin = 'Providers_Code_Post'
      Required = True
    end
    object FDQuery1Data_Post: TDateField
      FieldName = 'Data_Post'
      Origin = 'Data_Post'
      Required = True
    end
    object FDQuery1Status: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '`Status`'
    end
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'Select * from purchase_invoice_goods')
    Left = 152
    Top = 520
    object FDQuery2ID_PS: TFDAutoIncField
      FieldName = 'ID_PS'
      Origin = 'ID_PS'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery2Purchase_Invoice_ID: TIntegerField
      FieldName = 'Purchase_Invoice_ID'
      Origin = 'Purchase_Invoice_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery2Goods_ID: TIntegerField
      FieldName = 'Goods_ID'
      Origin = 'Goods_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery2Kol_P: TBCDField
      FieldName = 'Kol_P'
      Origin = 'Kol_P'
      Required = True
      Precision = 15
      Size = 3
    end
    object FDQuery2PCena: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PCena'
      Origin = 'PCena'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 216
    Top = 520
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 256
    Top = 520
  end
end
