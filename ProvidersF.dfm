object Providers: TProviders
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
  ClientHeight = 442
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 36
    Top = 40
    Width = 52
    Height = 15
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    Color = clBtnFace
    ParentColor = False
  end
  object Label2: TLabel
    Left = 36
    Top = 88
    Width = 87
    Height = 15
    Caption = #1060#1048#1054' '#1076#1080#1088#1077#1082#1090#1086#1088#1072
    Color = clBtnFace
    ParentColor = False
  end
  object Label3: TLabel
    Left = 36
    Top = 136
    Width = 48
    Height = 15
    Caption = #1058#1077#1083#1077#1092#1086#1085
    Color = clBtnFace
    ParentColor = False
  end
  object Label7: TLabel
    Left = 444
    Top = 203
    Width = 11
    Height = 15
    Caption = 'ID'
    Color = clBtnFace
    ParentColor = False
  end
  object Label4: TLabel
    Left = 36
    Top = 184
    Width = 33
    Height = 15
    Caption = #1040#1076#1088#1077#1089
    Color = clBtnFace
    ParentColor = False
  end
  object Label5: TLabel
    Left = 36
    Top = 232
    Width = 26
    Height = 15
    Caption = #1041#1072#1085#1082
    Color = clBtnFace
    ParentColor = False
  end
  object Label6: TLabel
    Left = 36
    Top = 280
    Width = 26
    Height = 15
    Caption = #1057#1095#1077#1090
    Color = clBtnFace
    ParentColor = False
  end
  object DBNavigator1: TDBNavigator
    Left = 36
    Top = 320
    Width = 336
    Height = 41
    DataSource = DataModule1.ProvidersDS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
    Hints.Strings = (
      #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1055#1088#1077#1076'. '#1079#1072#1087#1080#1089#1100
      #1057#1083#1077#1076'. '#1079#1072#1087#1080#1089#1100
      #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      #1053#1072#1078#1084#1080#1090#1077', '#1074#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077', '#1079#1072#1090#1077#1084' '#1087#1086#1076#1090#1074#1077#1088#1076#1080#1090#1077' '#1087#1086#1074#1090#1086#1088#1085#1099#1084' '#1085#1072#1078#1072#1090#1080#1077#1084
      #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      'Edit record'
      'Post edit'
      'Cancel edit'
      'Refresh data'
      'Apply updates'
      'Cancel updates')
    TabOrder = 0
  end
  object ESearch: TEdit
    Left = 36
    Top = 384
    Width = 241
    Height = 23
    TabOrder = 1
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1082#1086#1084#1087#1072#1085#1080#1080
  end
  object Search_Btn: TButton
    Left = 283
    Top = 384
    Width = 198
    Height = 23
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102' '#1082#1086#1084#1087#1072#1085#1080#1080
    TabOrder = 2
    OnClick = Search_BtnClick
  end
  object DBEdit1: TDBEdit
    Left = 168
    Top = 37
    Width = 209
    Height = 23
    DataField = 'Name_Post'
    DataSource = DataModule1.ProvidersDS
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 168
    Top = 85
    Width = 209
    Height = 23
    DataField = 'FIO_Post'
    DataSource = DataModule1.ProvidersDS
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 168
    Top = 133
    Width = 209
    Height = 23
    DataField = 'Tel_Post'
    DataSource = DataModule1.ProvidersDS
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 168
    Top = 181
    Width = 209
    Height = 23
    DataField = 'Adr_Post'
    DataSource = DataModule1.ProvidersDS
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 168
    Top = 277
    Width = 209
    Height = 23
    DataField = 'S_Post'
    DataSource = DataModule1.ProvidersDS
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 436
    Top = 224
    Width = 45
    Height = 23
    DataField = 'Banks_ID_B'
    DataSource = DataModule1.ProvidersDS
    TabOrder = 8
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 168
    Top = 224
    Width = 209
    Height = 23
    DataField = 'Banks_ID_B'
    DataSource = DataModule1.ProvidersDS
    KeyField = 'ID_B'
    ListField = 'Name_B'
    ListSource = DataModule1.BanksDS
    TabOrder = 9
  end
end
