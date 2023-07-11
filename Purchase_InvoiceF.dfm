object Purchase_invoice: TPurchase_invoice
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
  ClientHeight = 577
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label1: TLabel
    Left = 248
    Top = 32
    Width = 121
    Height = 15
    Caption = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
  end
  object Label2: TLabel
    Left = 248
    Top = 220
    Width = 132
    Height = 15
    Caption = #1055#1088#1080#1093#1086#1076' '#1090#1086#1074#1072#1088#1072' '#1085#1072' '#1089#1082#1083#1072#1076
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 53
    Width = 553
    Height = 161
    Ctl3D = True
    DataSource = DataModule1.PinvDS
    ImeMode = imAlpha
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColEnter = DBGrid1ColEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'Id_pi'
        ImeMode = imDontCare
        ImeName = 'Russian'
        Title.Caption = 'ID'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'providers_code_post'
        ReadOnly = False
        Title.Caption = 'ID'#1055#1086#1089#1090'.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_post'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_post'
        ReadOnly = False
        Title.Caption = #1076#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sum'
        Title.Caption = #1057#1091#1084#1084#1072
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Title.Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
        Width = 75
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 241
    Width = 545
    Height = 161
    DataSource = DataModule1.PInvGDS
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColEnter = DBGrid2ColEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_G'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nazv_T'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kol_P'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCena'
        Title.Caption = #1062#1077#1085#1072
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sum'
        Title.Caption = #1057#1091#1084#1084#1072
        Width = 100
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 115
    Top = 512
    Width = 161
    Height = 57
    Caption = #1054#1087#1083#1072#1090#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
    TabOrder = 2
    OnClick = Button1Click
  end
  object Quit: TButton
    Left = 415
    Top = 512
    Width = 109
    Height = 57
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = QuitClick
  end
  object Button2: TButton
    Left = 16
    Top = 512
    Width = 80
    Height = 57
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 20
    Top = 423
    Width = 255
    Height = 57
    DataSource = DataModule1.PinvDS
    VisibleButtons = [nbPrior, nbNext, nbRefresh]
    TabOrder = 5
  end
  object Button3: TButton
    Left = 376
    Top = 424
    Width = 148
    Height = 57
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
    TabOrder = 6
    OnClick = Button3Click
  end
  object PrintDialog1: TPrintDialog
    Copies = 1
    Left = 592
    Top = 48
  end
end
