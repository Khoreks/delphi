object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470'7'
  ClientHeight = 451
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 156
    Top = 406
    Width = 145
    Height = 41
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 55
    Width = 457
    Height = 138
    Caption = #1047#1072#1076#1072#1085#1080#1103':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 16
      Top = 25
      Width = 441
      Height = 25
      Caption = #1047#1072#1084#1077#1085#1080#1090#1100' '#1095#1077#1090#1085#1099#1081' '#1101#1083#1077#1084#1077#1085#1090' '#1082#1072#1078#1076#1086#1075#1086' '#1089#1090#1086#1083#1073#1094#1072' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1084' '#1087#1086' '#1084#1086#1076#1091#1083#1102'.'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 50
      Width = 441
      Height = 25
      Caption = 
        #1042#1089#1090#1072#1074#1080#1090#1100' '#1087#1086#1089#1083#1077' '#1089#1090#1086#1083#1073#1094#1086#1074', '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1093' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074#1090#1086#1088#1086#1081' ' +
        #1089#1090#1086#1083#1073#1077#1094'.'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 75
      Width = 441
      Height = 25
      Caption = 
        #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077' '#1089#1090#1088#1086#1082#1080', '#1074' '#1082#1086#1090#1086#1088#1099#1093' '#1074#1090#1086#1088#1086#1081' '#1101#1083#1077#1084#1077#1085#1090' '#1073#1086#1083#1100#1096#1077' '#1087#1088#1077#1076#1087#1086#1089#1083#1077#1076#1085#1077 +
        #1075#1086'.'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 100
      Width = 385
      Height = 25
      Caption = #1055#1086#1084#1077#1085#1103#1090#1100' '#1084#1077#1089#1090#1072#1084#1080' '#1087#1077#1088#1074#1099#1081' '#1080' '#1089#1088#1077#1076#1085#1080#1081' '#1089#1090#1086#1083#1073#1094#1099'.'
      TabOrder = 3
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 457
    Height = 49
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    Lines.Strings = (
      #1056#1072#1073#1086#1090#1091' '#1074#1099#1087#1086#1083#1085#1080#1083' : '#1041#1072#1082#1077#1085#1077#1074' '#1042#1083#1072#1076#1080#1089#1083#1072#1074'   '#1043#1088#1091#1087#1087#1072': '#1059#1041'18-10'#1041
      #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470'7   '#1056#1072#1073#1086#1090#1072' '#1089' '#1092#1072#1081#1083#1072#1084#1080'.')
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 199
    Width = 457
    Height = 201
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 360
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = '----'
      end
      object N5: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N5Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '|*.txt'
    InitialDir = 'C:\Users\acer\Documents\Embarcadero\Studio\Projects\beta7'
    Left = 392
  end
  object SaveDialog1: TSaveDialog
    Filter = '|*.txt'
    Left = 424
  end
end
