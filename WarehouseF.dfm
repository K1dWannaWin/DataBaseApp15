object Warehouse: TWarehouse
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1082#1083#1072#1076
  ClientHeight = 442
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  OnCreate = FormCreate
  TextHeight = 15
  object DateL: TLabel
    Left = 648
    Top = 325
    Width = 23
    Height = 15
    Caption = 'date'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 868
    Height = 273
    DataSource = DataModule1.WarehouseDS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 304
    Width = 378
    Height = 57
    DataSource = DataModule1.WarehouseDS
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbRefresh]
    TabOrder = 1
  end
  object Button1: TButton
    Left = 432
    Top = 305
    Width = 177
    Height = 57
    Caption = #1055#1077#1088#1077#1088#1072#1089#1095#1077#1090' '#1085#1072' '#1085#1086#1074#1099#1081' '#1084#1077#1089#1103#1094
    TabOrder = 2
    OnClick = Button1Click
  end
  object Quit: TButton
    Left = 724
    Top = 377
    Width = 109
    Height = 57
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = QuitClick
  end
  object SalesNM: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    Transaction = DataModule1.FDTransaction1
    SQL.Strings = (
      'select * from sales_invoice'
      'inner join sales_invoice_goods'
      'where Sales_Invoice_ID=id'
      '')
    Left = 320
    Top = 384
    object SalesNMID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SalesNMClients_Code_Pokup: TIntegerField
      FieldName = 'Clients_Code_Pokup'
      Origin = 'Clients_Code_Pokup'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SalesNMData_Pokup: TDateField
      FieldName = 'Data_Pokup'
      Origin = 'Data_Pokup'
      Required = True
    end
    object SalesNMID_PS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PS'
      Origin = 'ID_PS'
      ProviderFlags = []
      ReadOnly = True
    end
    object SalesNMSales_Invoice_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Sales_Invoice_ID'
      Origin = 'Sales_Invoice_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object SalesNMGoods_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Goods_ID'
      Origin = 'Goods_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object SalesNMKol_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Kol_P'
      Origin = 'Kol_P'
      ProviderFlags = []
      ReadOnly = True
      Precision = 15
      Size = 3
    end
    object SalesNMStatus: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '`Status`'
    end
  end
  object DeleteQ: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 232
    Top = 384
  end
  object PurchNM: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      '    select * from purchase_invoice'
      'inner join purchase_invoice_goods'
      'where Purchase_Invoice_ID=ID_PI'
      '')
    Left = 392
    Top = 384
    object PurchNMID_PI: TFDAutoIncField
      FieldName = 'ID_PI'
      Origin = 'ID_PI'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object PurchNMProviders_Code_Post: TIntegerField
      FieldName = 'Providers_Code_Post'
      Origin = 'Providers_Code_Post'
      Required = True
    end
    object PurchNMData_Post: TDateField
      FieldName = 'Data_Post'
      Origin = 'Data_Post'
      Required = True
    end
    object PurchNMStatus: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '`Status`'
    end
    object PurchNMID_PS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PS'
      Origin = 'ID_PS'
      ProviderFlags = []
      ReadOnly = True
    end
    object PurchNMPurchase_Invoice_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Purchase_Invoice_ID'
      Origin = 'Purchase_Invoice_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object PurchNMGoods_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Goods_ID'
      Origin = 'Goods_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object PurchNMKol_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Kol_P'
      Origin = 'Kol_P'
      ProviderFlags = []
      ReadOnly = True
      Precision = 15
      Size = 3
    end
    object PurchNMPCena: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PCena'
      Origin = 'PCena'
      ProviderFlags = []
      ReadOnly = True
      Precision = 15
      Size = 2
    end
  end
end
