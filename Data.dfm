object DataModule1: TDataModule1
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=root'
      'Database=mydb'
      'CharacterSet=utf8'
      'DriverID=MySQL')
    Connected = True
    Transaction = FDTransaction1
    Left = 48
    Top = 16
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 160
    Top = 16
  end
  object BanksQ: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Banks;'
      '')
    Left = 24
    Top = 136
    object BanksQID_B: TFDAutoIncField
      FieldName = 'ID_B'
      ReadOnly = True
    end
    object BanksQName_B: TWideStringField
      FieldName = 'Name_B'
      Required = True
      Size = 45
    end
    object BanksQAdr_B: TWideStringField
      FieldName = 'Adr_B'
      Required = True
      Size = 90
    end
  end
  object BanksDS: TDataSource
    AutoEdit = False
    DataSet = BanksQ
    Left = 640
    Top = 392
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Program Files\MySQL\libmysql.dll'
    Left = 336
    Top = 16
  end
  object ClientsDS: TDataSource
    AutoEdit = False
    DataSet = ClientsQ
    Left = 576
    Top = 392
  end
  object ProvidersQ: TFDQuery
    Active = True
    DetailFields = 
      'Adr_B;Adr_Pokup;Banks_ID_B;Code_Pokup;FIO_Pokup;ID_B;Name_B;Name' +
      '_Pokup;S_Pokup;Tel_Pokup'
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from providers  join banks'
      'on providers.Banks_ID_B = banks.ID_B')
    Left = 136
    Top = 136
    object ProvidersQCode_Post: TFDAutoIncField
      FieldName = 'Code_Post'
      Origin = 'Code_Post'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ProvidersQName_Post: TWideStringField
      FieldName = 'Name_Post'
      Origin = 'Name_Post'
      Required = True
      Size = 30
    end
    object ProvidersQFIO_Post: TWideStringField
      FieldName = 'FIO_Post'
      Origin = 'FIO_Post'
      Required = True
      Size = 90
    end
    object ProvidersQTel_Post: TWideStringField
      FieldName = 'Tel_Post'
      Origin = 'Tel_Post'
      Required = True
      Size = 25
    end
    object ProvidersQAdr_Post: TWideStringField
      FieldName = 'Adr_Post'
      Origin = 'Adr_Post'
      Required = True
      Size = 120
    end
    object ProvidersQS_Post: TWideStringField
      FieldName = 'S_Post'
      Origin = 'S_Post'
      Required = True
      Size = 70
    end
    object ProvidersQBanks_ID_B: TIntegerField
      FieldName = 'Banks_ID_B'
      Origin = 'Banks_ID_B'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProvidersQID_B: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_B'
      Origin = 'ID_B'
      ProviderFlags = []
      ReadOnly = True
    end
    object ProvidersQName_B: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name_B'
      Origin = 'Name_B'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object ProvidersQAdr_B: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Adr_B'
      Origin = 'Adr_B'
      ProviderFlags = []
      ReadOnly = True
      Size = 90
    end
  end
  object ProvidersDS: TDataSource
    AutoEdit = False
    DataSet = ProvidersQ
    Left = 280
    Top = 392
  end
  object ClientsQ: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      ' Select * from clients join banks'
      'on clients.Banks_ID_B = banks.ID_B')
    Left = 80
    Top = 136
    object ClientsQCode_Pokup: TFDAutoIncField
      FieldName = 'Code_Pokup'
      Origin = 'Code_Pokup'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ClientsQName_Pokup: TWideStringField
      FieldName = 'Name_Pokup'
      Origin = 'Name_Pokup'
      Required = True
      Size = 30
    end
    object ClientsQFIO_Pokup: TWideStringField
      FieldName = 'FIO_Pokup'
      Origin = 'FIO_Pokup'
      Required = True
      Size = 90
    end
    object ClientsQTel_Pokup: TWideStringField
      FieldName = 'Tel_Pokup'
      Origin = 'Tel_Pokup'
      Required = True
      Size = 25
    end
    object ClientsQAdr_Pokup: TWideStringField
      FieldName = 'Adr_Pokup'
      Origin = 'Adr_Pokup'
      Required = True
      Size = 120
    end
    object ClientsQS_Pokup: TWideStringField
      FieldName = 'S_Pokup'
      Origin = 'S_Pokup'
      Required = True
      Size = 70
    end
    object ClientsQBanks_ID_B: TIntegerField
      FieldName = 'Banks_ID_B'
      Origin = 'Banks_ID_B'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientsQID_B: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_B'
      Origin = 'ID_B'
      ProviderFlags = []
      ReadOnly = True
    end
    object ClientsQName_B: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name_B'
      Origin = 'Name_B'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object ClientsQAdr_B: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Adr_B'
      Origin = 'Adr_B'
      ProviderFlags = []
      ReadOnly = True
      Size = 90
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    AutoCalcFields = False
    DetailFields = 
      'Adr_B;Adr_Pokup;Banks_ID_B;Code_Pokup;FIO_Pokup;ID_B;Name_B;Name' +
      '_Pokup;S_Pokup;Tel_Pokup'
    Connection = FDConnection1
    SQL.Strings = (
      #9' Select Id_Pi, sum(kol_p*Pcena) as sum'
      #9'from  purchase_invoice_goods , purchase_invoice'
      #9'where id_pi=purchase_invoice_id'
      #9'group by purchase_invoice_id'
      '')
    Left = 392
    Top = 136
    object FDQuery1sum: TFMTBCDField
      FieldName = 'sum'
      ReadOnly = True
      Precision = 52
      Size = 5
    end
  end
  object PInv: TFDQuery
    Active = True
    AutoCalcFields = False
    BeforeRefresh = PInvBeforeRefresh
    OnCalcFields = PInvCalcFields
    Filtered = True
    DetailFields = 
      'Adr_B;Adr_Pokup;Banks_ID_B;Code_Pokup;FIO_Pokup;ID_B;Name_B;Name' +
      '_Pokup;S_Pokup;Tel_Pokup'
    Connection = FDConnection1
    SQL.Strings = (
      'Select Id_pi,data_post,providers_code_post, name_post,status '
      'from purchase_invoice  '
      'join providers '
      'on providers_code_post=code_post '
      'order by id_pi')
    Left = 192
    Top = 136
    object PInvsum: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sum'
      Calculated = True
    end
    object PInvId_pi: TFDAutoIncField
      FieldName = 'Id_pi'
      Origin = 'ID_PI'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object PInvdata_post: TDateField
      FieldName = 'data_post'
      Origin = 'Data_Post'
      Required = True
    end
    object PInvstatus: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`Status`'
    end
    object PInvproviders_code_post: TIntegerField
      FieldName = 'providers_code_post'
      Origin = 'Providers_Code_Post'
      Required = True
    end
    object PInvname_post: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'name_post'
      Origin = 'Name_Post'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object PinvDS: TDataSource
    AutoEdit = False
    DataSet = PInv
    OnDataChange = PinvDSDataChange
    Left = 360
    Top = 392
  end
  object PInvg: TFDQuery
    Active = True
    OnCalcFields = PInvgCalcFields
    Filtered = True
    DetailFields = 
      'Adr_B;Adr_Pokup;Banks_ID_B;Code_Pokup;FIO_Pokup;ID_B;Name_B;Name' +
      '_Pokup;S_Pokup;Tel_Pokup'
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from goods join purchase_invoice_goods on goods_id=id_G' +
        ' and purchase_invoice_id =1')
    Left = 256
    Top = 136
    object PInvgID_G: TFDAutoIncField
      FieldName = 'ID_G'
      Origin = 'ID_G'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object PInvgArticul: TWideStringField
      FieldName = 'Articul'
      Origin = 'Articul'
      Required = True
      Size = 255
    end
    object PInvgNazv_T: TWideStringField
      FieldName = 'Nazv_T'
      Origin = 'Nazv_T'
      Required = True
      Size = 255
    end
    object PInvgID_PS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PS'
      Origin = 'ID_PS'
      ProviderFlags = []
      ReadOnly = True
    end
    object PInvgPurchase_Invoice_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Purchase_Invoice_ID'
      Origin = 'Purchase_Invoice_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object PInvgKol_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Kol_P'
      Origin = 'Kol_P'
      ProviderFlags = []
      ReadOnly = True
      Precision = 15
      Size = 3
    end
    object PInvgPCena: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PCena'
      Origin = 'PCena'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 15
      Size = 2
    end
    object PInvgsum: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sum'
      Calculated = True
    end
  end
  object PInvGDS: TDataSource
    AutoEdit = False
    DataSet = PInvg
    Left = 424
    Top = 392
  end
  object PList: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from payment_list'
      'where sales_invoice_id='#39'1'#39';')
    Left = 576
    Top = 136
    object PListID_PL: TFDAutoIncField
      FieldName = 'ID_PL'
      Origin = 'ID_PL'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object PListSales_Invoice_ID: TIntegerField
      FieldName = 'Sales_Invoice_ID'
      Origin = 'Sales_Invoice_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PListSum_Pl: TBCDField
      FieldName = 'Sum_Pl'
      Origin = 'Sum_Pl'
      Required = True
      Precision = 15
      Size = 2
    end
    object PListData_Pl: TDateField
      FieldName = 'Data_Pl'
      Origin = 'Data_Pl'
      Required = True
    end
  end
  object Rashet1: TFDQuery
    Active = True
    DetailFields = 
      'Adr_B;Adr_Pokup;Banks_ID_B;Code_Pokup;FIO_Pokup;ID_B;Name_B;Name' +
      '_Pokup;S_Pokup;Tel_Pokup'
    Connection = FDConnection1
    SQL.Strings = (
      
        'select sum(kol_p)as kol_p, sum(pCena*kol_p) as PCena, data_post,' +
        'status,goods_id from purchase_invoice_goods'
      'join purchase_invoice'
      'where purchase_Invoice_ID=id_pi'
      'group by goods_id')
    Left = 648
    Top = 136
    object Rashet1Goods_ID: TIntegerField
      FieldName = 'Goods_ID'
      Origin = 'Goods_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Rashet1Data_Post: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Data_Post'
      Origin = 'Data_Post'
      ProviderFlags = []
      ReadOnly = True
    end
    object Rashet1Status: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '`Status`'
      ProviderFlags = []
      ReadOnly = True
    end
    object Rashet1kol_p: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'kol_p'
      Origin = 'kol_p'
      ProviderFlags = []
      ReadOnly = True
      Precision = 37
      Size = 3
    end
    object Rashet1PCena: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PCena'
      Origin = 'PCena'
      Precision = 52
      Size = 5
    end
  end
  object rashet2: TFDQuery
    Active = True
    DetailFields = 
      'Adr_B;Adr_Pokup;Banks_ID_B;Code_Pokup;FIO_Pokup;ID_B;Name_B;Name' +
      '_Pokup;S_Pokup;Tel_Pokup'
    Connection = FDConnection1
    SQL.Strings = (
      
        'select status,goods_id,sum(kol_P)as kol_p from sales_invoice_goo' +
        'ds'
      'join sales_invoice'
      'where Sales_Invoice_ID=id'
      'group by goods_id')
    Left = 720
    Top = 136
    object rashet2kol_p: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'kol_p'
      Origin = 'kol_p'
      ProviderFlags = []
      ReadOnly = True
      Precision = 37
      Size = 3
    end
    object rashet2goods_id: TIntegerField
      FieldName = 'goods_id'
      Origin = 'Goods_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rashet2status: TDateField
      FieldName = 'status'
    end
  end
  object PListDS: TDataSource
    DataSet = PList
    Left = 200
    Top = 392
  end
  object Warehouse: TFDQuery
    Active = True
    BeforeRefresh = WarehouseBeforeRefresh
    OnCalcFields = WarehouseCalcFields
    Filtered = True
    DetailFields = 
      'Adr_B;Adr_Pokup;Banks_ID_B;Code_Pokup;FIO_Pokup;ID_B;Name_B;Name' +
      '_Pokup;S_Pokup;Tel_Pokup'
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from goods')
    Left = 320
    Top = 136
    object WarehouseID_G: TFDAutoIncField
      DisplayLabel = 'ID'
      DisplayWidth = 4
      FieldName = 'ID_G'
      Origin = 'ID_G'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WarehouseArticul: TWideStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      DisplayWidth = 7
      FieldName = 'Articul'
      Origin = 'Articul'
      Required = True
      Size = 255
    end
    object WarehouseNazv_T: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 16
      FieldName = 'Nazv_T'
      Origin = 'Nazv_T'
      Required = True
      Size = 255
    end
    object WarehouseCena: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 11
      FieldName = 'Cena'
      Origin = 'Cena'
      currency = True
      Precision = 15
      Size = 2
    end
    object WarehouseEd_Izm: TWideStringField
      DisplayLabel = #1045#1076'.'#1080#1079#1084'.'
      DisplayWidth = 6
      FieldName = 'Ed_Izm'
      Origin = 'Ed_Izm'
      Required = True
      Size = 16
    end
    object WarehouseOstatok: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      DisplayWidth = 9
      FieldName = 'Ostatok'
      Origin = 'Ostatok'
      Precision = 15
      Size = 3
    end
    object WarehouseSumP: TCurrencyField
      DisplayLabel = #1055#1088#1080#1093#1086#1076'('#1089#1090#1086#1080#1084')'
      FieldKind = fkCalculated
      FieldName = 'SumP'
      Calculated = True
    end
    object WarehouseKolP: TFloatField
      DisplayLabel = #1055#1088#1080#1093#1086#1076'('#1082#1086#1083')'
      FieldKind = fkCalculated
      FieldName = 'KolP'
      Calculated = True
    end
    object WarehouseSumS: TCurrencyField
      DisplayLabel = #1056#1072#1089#1093#1086#1076'('#1089#1090#1086#1080#1084')'
      FieldKind = fkCalculated
      FieldName = 'SumS'
      Calculated = True
    end
    object WarehouseKolS: TFloatField
      DisplayLabel = #1056#1072#1089#1093#1086#1076'('#1082#1086#1083')'
      FieldKind = fkCalculated
      FieldName = 'KolS'
      Calculated = True
    end
    object WarehouseOstNM: TFloatField
      DisplayLabel = #1053#1072#1095#1052
      FieldKind = fkCalculated
      FieldName = 'OstNM'
      Calculated = True
    end
    object WarehouseCenaNM: TCurrencyField
      DisplayLabel = #1053#1072#1095#1052
      FieldKind = fkCalculated
      FieldName = 'CenaNM'
      Calculated = True
    end
  end
  object WarehouseDS: TDataSource
    AutoEdit = False
    DataSet = Warehouse
    Left = 496
    Top = 392
  end
  object DeleteQ: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    Left = 872
    Top = 512
  end
  object SinvG: TFDQuery
    Active = True
    OnCalcFields = SinvGCalcFields
    DetailFields = 
      'Adr_B;Adr_Pokup;Banks_ID_B;Code_Pokup;FIO_Pokup;ID_B;Name_B;Name' +
      '_Pokup;S_Pokup;Tel_Pokup'
    Connection = FDConnection1
    SQL.Strings = (
      'select cena,Nazv_T,sales_invoice_id,goods_id,kol_p from goods '
      'join sales_invoice_goods '
      'on goods_id=id_G '
      'and sales_invoice_id =1')
    Left = 520
    Top = 136
    object SinvGNazv_T: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 24
      FieldName = 'Nazv_T'
      Origin = 'Nazv_T'
      Required = True
      Size = 255
    end
    object SinvGsales_invoice_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID '#1053#1072#1082#1083
      DisplayWidth = 7
      FieldName = 'sales_invoice_id'
      Origin = 'Sales_Invoice_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object SinvGgoods_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'goods_id'
      Origin = 'Goods_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object SinvGkol_p: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      DisplayWidth = 11
      FieldName = 'kol_p'
      Origin = 'Kol_P'
      ProviderFlags = []
      ReadOnly = True
      Precision = 15
      Size = 3
    end
    object SinvGcena: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 11
      FieldName = 'cena'
      Origin = 'Cena'
      Precision = 15
      Size = 2
    end
    object SinvGsum: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sum'
      Calculated = True
    end
  end
  object SInv: TFDQuery
    Active = True
    BeforeRefresh = SInvBeforeRefresh
    OnCalcFields = SInvCalcFields
    DetailFields = 
      'Adr_B;Adr_Pokup;Banks_ID_B;Code_Pokup;FIO_Pokup;ID_B;Name_B;Name' +
      '_Pokup;S_Pokup;Tel_Pokup'
    Connection = FDConnection1
    SQL.Strings = (
      'Select Id,data_pokup,code_pokup, name_pokup,status'
      'from sales_invoice  '
      'join clients '
      'on clients_code_pokup=code_pokup '
      'order by id')
    Left = 456
    Top = 136
    object SInvId: TFDAutoIncField
      DisplayLabel = 'ID'
      DisplayWidth = 5
      FieldName = 'Id'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SInvcode_pokup: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID '#1087#1086#1082#1091#1087
      DisplayWidth = 8
      FieldName = 'code_pokup'
      Origin = 'Code_Pokup'
      ProviderFlags = []
      ReadOnly = True
    end
    object SInvname_pokup: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099
      DisplayWidth = 30
      FieldName = 'name_pokup'
      Origin = 'Name_Pokup'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object SInvdata_pokup: TDateField
      DisplayLabel = #1044#1072#1090#1072' '
      DisplayWidth = 10
      FieldName = 'data_pokup'
      Origin = 'Data_Pokup'
      Required = True
    end
    object SInvSum: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Sum'
      Calculated = True
    end
    object SInvSumPl: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SumPl'
      Calculated = True
    end
    object SInvOstatok: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Ostatok'
      Calculated = True
    end
  end
  object SInvDS: TDataSource
    AutoEdit = False
    DataSet = SInv
    OnDataChange = SInvDSDataChange
    Left = 40
    Top = 392
  end
  object SinvGDS: TDataSource
    AutoEdit = False
    DataSet = SinvG
    Left = 120
    Top = 392
  end
  object SISum: TFDQuery
    Connection = FDConnection1
    Left = 816
    Top = 512
  end
  object ApplyStatus: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    Left = 928
    Top = 512
  end
end
