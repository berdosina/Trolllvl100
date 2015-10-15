object frm1: Tfrm1
  Left = 241
  Top = 163
  Width = 507
  Height = 344
  Caption = 'frm1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FileListBox1: TFileListBox
    Left = 8
    Top = 152
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 40
    Width = 145
    Height = 97
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 1
    OnChange = DirectoryListBox1Change
  end
  object DriveComboBox1: TDriveComboBox
    Left = 8
    Top = 8
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 2
  end
  object FilterComboBox1: TFilterComboBox
    Left = 8
    Top = 264
    Width = 145
    Height = 21
    FileList = FileListBox1
    Filter = 'All files (*.*)|*.*|Penis|*.exe*'
    TabOrder = 3
  end
  object Button1: TButton
    Left = 176
    Top = 8
    Width = 81
    Height = 25
    Caption = #1063#1090#1086
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 48
    Width = 83
    Height = 25
    Caption = #1042' '#1082#1072#1082#1091#1102' '#1087#1072#1087#1082#1091
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 176
    Top = 88
    Width = 83
    Height = 25
    Caption = #1050#1086#1087#1080#1088#1091#1081
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 176
    Top = 128
    Width = 83
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1081' '#1087#1072#1087#1082#1091
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 272
    Top = 48
    Width = 129
    Height = 25
    Caption = #1050#1086#1087#1080#1088#1091#1081' '#1095#1077#1088#1077#1079' '#1087#1086#1090#1086#1082
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 272
    Top = 8
    Width = 129
    Height = 25
    Caption = #1050#1091#1076#1072' '#1087#1086#1090#1086#1082' '#1080' '#1087#1086' '#1095#1072#1089#1090#1103#1084
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 272
    Top = 88
    Width = 129
    Height = 25
    Caption = #1050#1086#1087#1080#1088#1091#1081' '#1087#1086' '#1095#1072#1089#1090#1103#1084
    TabOrder = 10
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 272
    Top = 128
    Width = 81
    Height = 25
    Caption = #1050#1072#1082#1091#1102' '#1055#1072#1087#1082#1091
    TabOrder = 11
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 368
    Top = 128
    Width = 83
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1072#1087#1082#1091
    TabOrder = 12
    OnClick = Button9Click
  end
end
