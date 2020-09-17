object fUWork: TfUWork
  Left = 388
  Top = 262
  Width = 577
  Height = 523
  AutoSize = True
  Caption = 'fUWork'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 280
    Top = 8
    Width = 289
    Height = 345
  end
  object Ladr: TLabel
    Left = 8
    Top = 370
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Ltel: TLabel
    Left = 8
    Top = 397
    Width = 45
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Lname: TLabel
    Left = 8
    Top = 348
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Lwcount: TLabel
    Left = 8
    Top = 419
    Width = 161
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1088#1085#1086#1077' '#1082#1086#1083'-'#1074#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  end
  object Lwb: TLabel
    Left = 288
    Top = 372
    Width = 119
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1085#1072' '#1088#1072#1073#1086#1090#1091
  end
  object Lofc: TLabel
    Left = 288
    Top = 405
    Width = 158
    Height = 13
    Caption = #1054#1092#1080#1094#1080#1072#1083#1100#1085#1086#1077' '#1090#1088#1091#1076#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086
  end
  object Lwbook: TLabel
    Left = 288
    Top = 437
    Width = 136
    Height = 13
    Caption = #1047#1072#1087#1080#1089#1100' '#1074' '#1090#1088#1091#1076#1086#1074#1086#1081' '#1082#1085#1080#1078#1082#1077
  end
  object Ld: TLabel
    Left = 288
    Top = 0
    Width = 92
    Height = 13
    Caption = #1042#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
  end
  object Bevel2: TBevel
    Left = 280
    Top = 360
    Width = 289
    Height = 97
  end
  object Bevel3: TBevel
    Left = 0
    Top = 336
    Width = 273
    Height = 153
  end
  object Lprim: TLabel
    Left = 8
    Top = 440
    Width = 63
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object rgtyp: TRadioGroup
    Left = 0
    Top = 0
    Width = 273
    Height = 105
    Caption = #1060#1086#1088#1084#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
    ItemIndex = 0
    Items.Strings = (
      #1063#1072#1089#1090#1085#1086#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
      #1063#1072#1089#1090#1085#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
      #1043#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103)
    TabOrder = 0
  end
  object rgDolg: TRadioGroup
    Left = 0
    Top = 112
    Width = 273
    Height = 217
    Caption = #1042#1072#1096#1072' '#1076#1086#1083#1078#1085#1086#1089#1090#1100' '#1074' '#1082#1086#1084#1087#1072#1085#1080#1080
    ItemIndex = 0
    Items.Strings = (
      #1042#1083#1072#1076#1077#1083#1077#1094
      #1044#1080#1088#1077#1082#1090#1086#1088' / '#1059#1087#1088#1072#1074#1083#1103#1102#1097#1080#1081
      #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1086#1090#1076#1077#1083#1072
      #1057#1086#1090#1088#1091#1076#1085#1080#1082
      #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1087#1077#1088#1089#1086#1085#1072#1083
      #1044#1088#1091#1075#1086#1077)
    TabOrder = 1
    OnClick = rgDolgClick
  end
  object chPR: TCheckBox
    Left = 288
    Top = 16
    Width = 190
    Height = 17
    Caption = #1055#1088#1086#1084#1099#1096#1083#1077#1085#1085#1086#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
    TabOrder = 2
  end
  object chTR: TCheckBox
    Left = 288
    Top = 40
    Width = 190
    Height = 17
    Caption = #1058#1086#1088#1075#1086#1074#1083#1103
    TabOrder = 3
  end
  object chFN: TCheckBox
    Left = 288
    Top = 64
    Width = 190
    Height = 17
    Caption = #1060#1080#1085#1072#1085#1089#1099' / '#1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1091#1089#1083#1091#1075#1080
    TabOrder = 4
  end
  object chUR: TCheckBox
    Left = 288
    Top = 88
    Width = 190
    Height = 17
    Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1077' '#1091#1089#1083#1091#1075#1080
    TabOrder = 5
  end
  object chST: TCheckBox
    Left = 288
    Top = 112
    Width = 190
    Height = 17
    Caption = #1057#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077
    TabOrder = 6
  end
  object chPS: TCheckBox
    Left = 288
    Top = 136
    Width = 190
    Height = 17
    Caption = #1055#1086#1089#1088#1077#1076#1085#1080#1095#1077#1089#1082#1080#1077' '#1091#1089#1083#1091#1075#1080
    TabOrder = 7
  end
  object chBD: TCheckBox
    Left = 288
    Top = 160
    Width = 190
    Height = 17
    Caption = #1057#1090#1088#1086#1080#1090#1077#1083#1100#1089#1090#1074#1086' / '#1056#1077#1084#1086#1085#1090
    TabOrder = 8
  end
  object chTU: TCheckBox
    Left = 288
    Top = 184
    Width = 190
    Height = 17
    Caption = #1058#1091#1088#1080#1079#1084
    TabOrder = 9
  end
  object chNK: TCheckBox
    Left = 288
    Top = 208
    Width = 190
    Height = 17
    Caption = #1053#1072#1091#1082#1072' / '#1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
    TabOrder = 10
  end
  object chTV: TCheckBox
    Left = 288
    Top = 232
    Width = 190
    Height = 17
    Caption = #1058#1074#1086#1088#1095#1077#1089#1082#1072#1103' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100
    TabOrder = 11
    OnClick = chTVClick
  end
  object chMD: TCheckBox
    Left = 288
    Top = 256
    Width = 190
    Height = 17
    Caption = #1054#1093#1088#1072#1085#1072' '#1079#1076#1086#1088#1086#1074#1100#1103
    TabOrder = 12
  end
  object chGS: TCheckBox
    Left = 288
    Top = 280
    Width = 190
    Height = 17
    Caption = #1043#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1072#1103' '#1089#1083#1091#1078#1073#1072
    TabOrder = 13
    OnClick = chGSClick
  end
  object chMR: TCheckBox
    Left = 288
    Top = 304
    Width = 190
    Height = 17
    Caption = #1052#1072#1088#1082#1077#1090#1080#1085#1075
    TabOrder = 14
  end
  object chEL: TCheckBox
    Left = 288
    Top = 328
    Width = 190
    Height = 17
    Caption = #1044#1088#1091#1075#1086#1077
    TabOrder = 15
    OnClick = chELClick
  end
  object Edolg3: TEdit
    Left = 88
    Top = 226
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 16
  end
  object Edolg4: TEdit
    Left = 144
    Top = 264
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 17
  end
  object Edolg5: TEdit
    Left = 80
    Top = 293
    Width = 185
    Height = 21
    Enabled = False
    TabOrder = 18
  end
  object Eadr: TEdit
    Left = 64
    Top = 368
    Width = 201
    Height = 21
    TabOrder = 19
  end
  object Etel: TEdit
    Left = 64
    Top = 392
    Width = 97
    Height = 21
    TabOrder = 20
  end
  object Ename: TEdit
    Left = 64
    Top = 344
    Width = 201
    Height = 21
    TabOrder = 21
  end
  object Ewcount: TEdit
    Left = 176
    Top = 416
    Width = 89
    Height = 21
    TabOrder = 22
    Text = '0'
  end
  object Ewb: TDateTimePicker
    Left = 416
    Top = 368
    Width = 145
    Height = 21
    CalAlignment = dtaLeft
    Date = 39630.4436646412
    Time = 39630.4436646412
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 23
  end
  object cbofc: TComboBox
    Left = 456
    Top = 400
    Width = 105
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 24
    Text = #1044#1072
    Items.Strings = (
      #1044#1072
      #1053#1077#1090)
  end
  object cbwbook: TComboBox
    Left = 456
    Top = 432
    Width = 105
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 25
    Text = #1044#1072
    Items.Strings = (
      #1044#1072
      #1053#1077#1090)
  end
  object Etv_e: TEdit
    Left = 440
    Top = 227
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 26
  end
  object Egs_e: TEdit
    Left = 440
    Top = 277
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 27
  end
  object Eel_e: TEdit
    Left = 352
    Top = 325
    Width = 209
    Height = 21
    Enabled = False
    TabOrder = 28
  end
  object bOk: TBitBtn
    Left = 280
    Top = 464
    Width = 140
    Height = 25
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
    TabOrder = 29
    OnClick = bOkClick
    Kind = bkOK
  end
  object bCancel: TBitBtn
    Left = 424
    Top = 464
    Width = 145
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 30
    OnClick = bCancelClick
    Kind = bkCancel
  end
  object EPrim: TMemo
    Left = 8
    Top = 456
    Width = 257
    Height = 25
    ScrollBars = ssVertical
    TabOrder = 31
  end
end
