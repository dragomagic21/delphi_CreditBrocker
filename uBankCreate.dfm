object fBankCreate: TfBankCreate
  Left = 258
  Top = 176
  Width = 419
  Height = 131
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1073#1072#1085#1082#1072
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 409
    Height = 65
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
    TabOrder = 0
    object EName: TEdit
      Left = 16
      Top = 24
      Width = 369
      Height = 21
      MaxLength = 30
      TabOrder = 0
    end
  end
  object bOk: TBitBtn
    Left = 296
    Top = 72
    Width = 115
    Height = 25
    Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100
    TabOrder = 1
    OnClick = bOkClick
    Kind = bkOK
  end
  object bCancel: TBitBtn
    Left = 180
    Top = 72
    Width = 115
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = bCancelClick
    Kind = bkCancel
  end
  object Memo1: TMemo
    Left = 8
    Top = 72
    Width = 57
    Height = 17
    Enabled = False
    Lines.Strings = (
      '')
    TabOrder = 3
    Visible = False
    WordWrap = False
  end
end
