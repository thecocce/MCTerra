object main: Tmain
  Left = 252
  Top = 222
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'MCTerra'
  ClientHeight = 637
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label19: TLabel
    Left = 736
    Top = 596
    Width = 137
    Height = 20
    Caption = 'MCTerra v0.9.0.0'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 742
    Top = 549
    Width = 41
    Height = 20
    Alignment = taRightJustify
    Caption = '2000'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 740
    Top = 564
    Width = 108
    Height = 20
    Caption = 'in chain 1000'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label22: TLabel
    Left = 740
    Top = 532
    Width = 146
    Height = 20
    Caption = 'Generating tunnel'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label23: TLabel
    Left = 736
    Top = 580
    Width = 297
    Height = 20
    Caption = 'Generating chunks for region -10 -10'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label26: TLabel
    Left = 736
    Top = 500
    Width = 108
    Height = 20
    Caption = 'Border plugin'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label27: TLabel
    Left = 742
    Top = 453
    Width = 41
    Height = 20
    Alignment = taRightJustify
    Caption = '2000'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label28: TLabel
    Left = 740
    Top = 468
    Width = 108
    Height = 20
    Caption = 'in chain 1000'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label29: TLabel
    Left = 739
    Top = 436
    Width = 146
    Height = 20
    Caption = 'Generating tunnel'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label30: TLabel
    Left = 740
    Top = 484
    Width = 297
    Height = 20
    Caption = 'Generating chunks for region -10 -10'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label31: TLabel
    Left = 736
    Top = 404
    Width = 138
    Height = 20
    Caption = 'Structures plugin'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label32: TLabel
    Left = 742
    Top = 357
    Width = 41
    Height = 20
    Alignment = taRightJustify
    Caption = '2000'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label33: TLabel
    Left = 740
    Top = 372
    Width = 108
    Height = 20
    Caption = 'in chain 1000'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label34: TLabel
    Left = 739
    Top = 340
    Width = 146
    Height = 20
    Caption = 'Generating tunnel'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label35: TLabel
    Left = 740
    Top = 388
    Width = 297
    Height = 20
    Caption = 'Generating chunks for region -10 -10'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 614
    Width = 893
    Height = 23
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Memo1: TMemo
    Left = 312
    Top = 376
    Width = 409
    Height = 225
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object Button1: TButton
    Left = 224
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 2
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 593
    Height = 233
    Caption = 'General settings'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 74
      Height = 17
      Caption = 'Map name:'
    end
    object Label2: TLabel
      Left = 256
      Top = 24
      Width = 30
      Height = 17
      Caption = 'SID:'
    end
    object Label7: TLabel
      Left = 256
      Top = 79
      Width = 83
      Height = 17
      Caption = 'Game mode:'
    end
    object Label8: TLabel
      Left = 256
      Top = 104
      Width = 60
      Height = 17
      Caption = 'Weather:'
    end
    object Label9: TLabel
      Left = 256
      Top = 128
      Width = 234
      Height = 17
      Caption = 'Time until rain change (in seconds):'
    end
    object Label10: TLabel
      Left = 256
      Top = 152
      Width = 260
      Height = 17
      Caption = 'Time until thunder change (in seconds):'
    end
    object Edit1: TEdit
      Left = 88
      Top = 24
      Width = 161
      Height = 21
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'New map'
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 288
      Top = 24
      Width = 153
      Height = 21
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = Edit2Change
      OnExit = Edit2Exit
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 448
      Top = 23
      Width = 75
      Height = 25
      Caption = 'New SID'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 48
      Width = 241
      Height = 112
      Caption = 'Map size'
      TabOrder = 3
      object Label3: TLabel
        Left = 7
        Top = 60
        Width = 151
        Height = 17
        Caption = 'Map width (in chunks):'
      end
      object Label4: TLabel
        Left = 7
        Top = 84
        Width = 157
        Height = 17
        Caption = 'Map length (in chunks):'
      end
      object Label5: TLabel
        Left = 7
        Top = 44
        Width = 224
        Height = 13
        Caption = 'This map type is not supported by the generator'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label6: TLabel
        Left = 7
        Top = 20
        Width = 67
        Height = 17
        Caption = 'Map type:'
      end
      object ComboBox1: TComboBox
        Left = 79
        Top = 20
        Width = 154
        Height = 21
        Style = csDropDownList
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Square'
        OnChange = ComboBox1Change
        OnExit = ComboBox1Exit
        Items.Strings = (
          'Square'
          'Rectangular'
          'Ellipsoid')
      end
      object Edit3: TEdit
        Left = 167
        Top = 60
        Width = 66
        Height = 21
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '20'
        OnChange = Edit3Change
        OnExit = Edit3Exit
        OnKeyPress = Edit3KeyPress
      end
      object Edit4: TEdit
        Left = 167
        Top = 84
        Width = 66
        Height = 21
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '20'
        OnExit = Edit4Exit
        OnKeyPress = Edit4KeyPress
      end
    end
    object CheckBox1: TCheckBox
      Left = 256
      Top = 56
      Width = 129
      Height = 17
      Caption = 'Populate chunks'
      TabOrder = 4
    end
    object CheckBox2: TCheckBox
      Left = 392
      Top = 56
      Width = 153
      Height = 17
      Caption = 'Generate structures'
      TabOrder = 5
    end
    object GroupBox9: TGroupBox
      Left = 8
      Top = 164
      Width = 241
      Height = 49
      Caption = 'Time of the day'
      TabOrder = 6
      object Label13: TLabel
        Left = 7
        Top = 22
        Width = 46
        Height = 17
        Caption = 'Hours:'
      end
      object Label14: TLabel
        Left = 110
        Top = 22
        Width = 60
        Height = 17
        Caption = 'Minutes:'
      end
      object Edit8: TEdit
        Left = 56
        Top = 22
        Width = 49
        Height = 21
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '6'
        OnExit = Edit8Exit
        OnKeyPress = Edit8KeyPress
      end
      object Edit9: TEdit
        Left = 172
        Top = 22
        Width = 58
        Height = 21
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '0'
        OnExit = Edit9Exit
        OnKeyPress = Edit9KeyPress
      end
    end
    object ComboBox2: TComboBox
      Left = 344
      Top = 79
      Width = 97
      Height = 21
      Style = csDropDownList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = 'Survival'
      Items.Strings = (
        'Survival'
        'Creative'
        'Hardcore')
    end
    object ComboBox3: TComboBox
      Left = 320
      Top = 104
      Width = 121
      Height = 21
      Style = csDropDownList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 8
      Text = 'Sunny'
      Items.Strings = (
        'Sunny'
        'Raining'
        'Thundering')
    end
    object Edit5: TEdit
      Left = 520
      Top = 128
      Width = 65
      Height = 21
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Text = '2500'
      OnChange = Edit5Change
      OnExit = Edit5Exit
      OnKeyPress = Edit5KeyPress
    end
    object Edit6: TEdit
      Left = 520
      Top = 152
      Width = 65
      Height = 21
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Text = '8000'
      OnChange = Edit6Change
      OnExit = Edit6Exit
      OnKeyPress = Edit6KeyPress
    end
    object Button3: TButton
      Left = 272
      Top = 182
      Width = 145
      Height = 33
      Caption = 'Player settings'
      TabOrder = 11
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 432
      Top = 182
      Width = 145
      Height = 33
      Caption = 'Blocks ID settings'
      TabOrder = 12
      OnClick = Button4Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 608
    Top = 0
    Width = 273
    Height = 233
    Caption = 'Generator preview'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Panel1: TPanel
      Left = 8
      Top = 18
      Width = 257
      Height = 207
      BevelInner = bvLowered
      BorderStyle = bsSingle
      TabOrder = 0
      object Image1: TImage
        Left = 1
        Top = 1
        Width = 250
        Height = 200
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 448
    Top = 233
    Width = 433
    Height = 112
    Caption = 'Landscape generator'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label36: TLabel
      Left = 8
      Top = 48
      Width = 176
      Height = 13
      Caption = 'This plugin has errors in init. functions'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Button5: TButton
      Left = 56
      Top = 64
      Width = 89
      Height = 33
      Caption = 'Settings'
      TabOrder = 0
      OnClick = Button5Click
    end
    object ComboBox4: TComboBox
      Left = 8
      Top = 24
      Width = 185
      Height = 25
      Style = csDropDownList
      ItemHeight = 17
      TabOrder = 1
      OnChange = ComboBox4Change
    end
    object GroupBox7: TGroupBox
      Left = 200
      Top = 16
      Width = 225
      Height = 89
      Caption = 'Plugin parameters'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label12: TLabel
        Left = 8
        Top = 36
        Width = 34
        Height = 13
        Caption = 'Author:'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Top = 52
        Width = 38
        Height = 13
        Caption = 'Version:'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 20
        Width = 48
        Height = 13
        Caption = 'Full name:'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 49
        Top = 52
        Width = 3
        Height = 13
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 47
        Top = 36
        Width = 3
        Height = 13
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 58
        Top = 20
        Width = 3
        Height = 13
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 8
        Top = 68
        Width = 48
        Height = 13
        Caption = 'File name:'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 58
        Top = 68
        Width = 3
        Height = 13
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object GroupBox6: TGroupBox
    Left = 8
    Top = 234
    Width = 217
    Height = 68
    Caption = 'Border generator settings'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Button6: TButton
      Left = 64
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Settings'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button6Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 232
    Top = 234
    Width = 209
    Height = 68
    Caption = 'Features generator settings'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Button7: TButton
      Left = 64
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Settings'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button7Click
    end
  end
  object Button9: TButton
    Left = 32
    Top = 308
    Width = 185
    Height = 48
    Caption = 'Generate map'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button13: TButton
    Left = 240
    Top = 308
    Width = 185
    Height = 48
    Caption = 'Stop generation'
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 9
    OnClick = Button13Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 588
    Width = 150
    Height = 22
    Max = 10
    Position = 4
    Smooth = True
    TabOrder = 10
  end
  object CheckBox3: TCheckBox
    Left = 448
    Top = 345
    Width = 97
    Height = 17
    Caption = 'Show log'
    TabOrder = 11
    OnClick = CheckBox3Click
  end
  object StatusBar2: TStatusBar
    Left = 736
    Top = 515
    Width = 153
    Height = 23
    Align = alNone
    Panels = <
      item
        Width = 20
      end
      item
        Width = 20
      end
      item
        Width = 20
      end
      item
        Width = 50
      end>
    Visible = False
  end
  object StatusBar3: TStatusBar
    Left = 740
    Top = 419
    Width = 153
    Height = 23
    Align = alNone
    Panels = <
      item
        Width = 20
      end
      item
        Width = 20
      end
      item
        Width = 20
      end
      item
        Width = 50
      end>
    Visible = False
  end
  object ProgressBar2: TProgressBar
    Left = 8
    Top = 564
    Width = 150
    Height = 22
    Max = 10
    Position = 6
    Smooth = True
    TabOrder = 14
  end
  object ProgressBar3: TProgressBar
    Left = 8
    Top = 540
    Width = 150
    Height = 22
    Max = 10
    Position = 8
    Smooth = True
    TabOrder = 15
  end
  object Button17: TButton
    Left = 224
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Sets test'
    TabOrder = 16
    OnClick = Button17Click
  end
  object Button12: TButton
    Left = 224
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Get info sys'
    TabOrder = 17
    OnClick = Button12Click
  end
  object Button16: TButton
    Left = 224
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Test get memory'
    TabOrder = 18
    OnClick = Button16Click
  end
  object Button10: TButton
    Left = 224
    Top = 480
    Width = 75
    Height = 25
    Caption = 'View opt'
    TabOrder = 19
    OnClick = Button10Click
  end
  object MainMenu1: TMainMenu
    Left = 520
    Top = 65528
    object MCTerra1: TMenuItem
      Caption = 'MCTerra'
      object Loadedplugins1: TMenuItem
        Caption = 'Loaded plugins'
        OnClick = Loadedplugins1Click
      end
      object Options1: TMenuItem
        Caption = 'Options'
        OnClick = Options1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      OnClick = About1Click
    end
  end
  object SaveDialog1: TSaveDialog
    FileName = 'level.dat'
    Filter = 'Dat-files (*.dat)|*.dat'
    Left = 128
    Top = 360
  end
end
