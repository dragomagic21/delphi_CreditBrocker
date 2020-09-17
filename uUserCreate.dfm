object fUserCreate: TfUserCreate
  Left = 192
  Top = 103
  Width = 208
  Height = 203
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1083#1080#1077#1085#1090#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Lfam: TLabel
    Left = 12
    Top = 48
    Width = 49
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Lname: TLabel
    Left = 12
    Top = 72
    Width = 22
    Height = 13
    BiDiMode = bdLeftToRight
    Caption = #1048#1084#1103
    ParentBiDiMode = False
  end
  object Lsname: TLabel
    Left = 12
    Top = 96
    Width = 47
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Lbdate: TLabel
    Left = 12
    Top = 120
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Bevel2: TBevel
    Left = 4
    Top = 32
    Width = 193
    Height = 105
  end
  object bOk: TBitBtn
    Left = 100
    Top = 144
    Width = 100
    Height = 25
    Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100
    TabOrder = 0
    OnClick = bOkClick
    Kind = bkOK
  end
  object bCancel: TBitBtn
    Left = 0
    Top = 144
    Width = 100
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = bCancelClick
    Kind = bkCancel
  end
  object rgSex: TRadioGroup
    Left = 4
    Top = 0
    Width = 193
    Height = 33
    Caption = #1055#1086#1083
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1084#1091#1078
      #1078#1077#1085)
    TabOrder = 2
  end
  object Ebdate: TDateTimePicker
    Left = 100
    Top = 112
    Width = 90
    Height = 21
    CalAlignment = dtaLeft
    Date = 39625.4967091551
    Time = 39625.4967091551
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 3
  end
  object Efam: TEdit
    Left = 68
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Ename: TEdit
    Left = 68
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Esname: TEdit
    Left = 68
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 164
    Top = 0
    Width = 17
    Height = 9
    Enabled = False
    TabOrder = 7
    Visible = False
    WordWrap = False
  end
end
