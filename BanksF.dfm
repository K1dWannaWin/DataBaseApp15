object BanksInfo: TBanksInfo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'BanksInfo'
  ClientHeight = 335
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 64
    Top = 83
    Width = 87
    Height = 15
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
  end
  object Label2: TLabel
    Left = 64
    Top = 131
    Width = 56
    Height = 15
    Caption = #1070#1088'. '#1072#1076#1088#1077#1089
    Color = clBtnFace
    ParentColor = False
  end
  object Label3: TLabel
    Left = 64
    Top = 43
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object DBEdit1: TDBEdit
    Left = 192
    Top = 80
    Width = 209
    Height = 23
    DataField = 'Name_B'
    DataSource = DataModule1.BanksDS
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 192
    Top = 123
    Width = 209
    Height = 23
    DataField = 'Adr_B'
    DataSource = DataModule1.BanksDS
    TabOrder = 2
  end
  object Banks_Nav: TDBNavigator
    Left = 32
    Top = 187
    Width = 231
    Height = 33
    DataSource = DataModule1.BanksDS
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object ESearch: TEdit
    Left = 32
    Top = 243
    Width = 241
    Height = 23
    TabOrder = 4
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
  end
  object Search_Btn: TButton
    Left = 279
    Top = 243
    Width = 155
    Height = 23
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102' '#1073#1072#1085#1082#1072
    TabOrder = 5
    OnClick = Search_BtnClick
  end
  object Cancel_Btn: TButton
    Left = 352
    Top = 290
    Width = 82
    Height = 22
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 6
    OnClick = Cancel_BtnClick
  end
  object DBEdit3: TDBEdit
    Left = 192
    Top = 40
    Width = 33
    Height = 23
    DataField = 'ID_B'
    DataSource = DataModule1.BanksDS
    ReadOnly = True
    TabOrder = 0
  end
end
