object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Settings - TwoFingerScroll'
  ClientHeight = 343
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ok: TButton
    Left = 157
    Top = 311
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = okClick
  end
  object cancel: TButton
    Left = 238
    Top = 311
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    OnClick = cancelClick
  end
  object pages: TPageControl
    Left = 8
    Top = 8
    Width = 305
    Height = 297
    ActivePage = scrollTab
    TabOrder = 2
    object generalTab: TTabSheet
      Caption = 'General'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox4: TGroupBox
        Left = 3
        Top = 3
        Width = 306
        Height = 254
        Caption = 'Settings'
        TabOrder = 0
        object startWithWindows: TCheckBox
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Start with Windows'
          TabOrder = 0
        end
      end
    end
    object scrollTab: TTabSheet
      Caption = 'Scrolling'
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 182
        Height = 150
        Caption = 'Scroll type'
        TabOrder = 0
        object scrollCircular: TRadioButton
          Left = 16
          Top = 115
          Width = 97
          Height = 17
          Caption = 'Circular (future)'
          Enabled = False
          TabOrder = 0
          OnClick = scrollLinearClick
        end
        object scrollLinearEdge: TCheckBox
          Left = 32
          Top = 85
          Width = 129
          Height = 17
          Caption = 'Keep scrolling on edges'
          Enabled = False
          TabOrder = 1
        end
        object scrollLinear: TRadioButton
          Left = 16
          Top = 55
          Width = 49
          Height = 17
          Caption = 'Linear'
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = scrollLinearClick
        end
        object scrollOff: TRadioButton
          Left = 16
          Top = 24
          Width = 33
          Height = 17
          Caption = 'Off'
          TabOrder = 3
          OnClick = scrollLinearClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 159
        Width = 291
        Height = 98
        Caption = 'Settings'
        TabOrder = 1
        object scrollAccLabel: TLabel
          Left = 16
          Top = 27
          Width = 86
          Height = 13
          Caption = 'Scroll acceleration'
          Enabled = False
        end
        object scrollAcc: TTrackBar
          Left = 16
          Top = 46
          Width = 261
          Height = 37
          Enabled = False
          Max = 120
          Min = 30
          Frequency = 5
          Position = 40
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 191
        Top = 3
        Width = 103
        Height = 150
        Caption = 'Scroll mode'
        TabOrder = 2
        object Label1: TLabel
          Left = 15
          Top = 116
          Width = 33
          Height = 13
          Cursor = crHandPoint
          Caption = 'Help...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = Label1Click
        end
        object scrollCompatible: TRadioButton
          Left = 16
          Top = 24
          Width = 73
          Height = 17
          Caption = 'Compatible'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object scrollSmooth: TRadioButton
          Left = 16
          Top = 55
          Width = 57
          Height = 17
          Caption = 'Smooth'
          TabOrder = 1
        end
        object scrollSmart: TRadioButton
          Left = 16
          Top = 85
          Width = 49
          Height = 17
          Caption = 'Smart'
          TabOrder = 2
        end
      end
    end
    object tapTab: TTabSheet
      Caption = 'Tapping'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox5: TGroupBox
        Left = 3
        Top = 3
        Width = 306
        Height = 254
        Caption = 'Settings'
        TabOrder = 0
        object tapFunctionLabel: TLabel
          Left = 32
          Top = 52
          Width = 41
          Height = 13
          Caption = 'Function'
          Enabled = False
        end
        object tapActive: TCheckBox
          Left = 16
          Top = 24
          Width = 49
          Height = 17
          Caption = 'Active'
          TabOrder = 0
          OnClick = tapActiveClick
        end
        object tapFunction: TComboBox
          Left = 32
          Top = 71
          Width = 121
          Height = 19
          Style = csOwnerDrawFixed
          Enabled = False
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 1
          Text = 'Right button'
          Items.Strings = (
            'Left button'
            'Middle button'
            'Right button'
            'Button 4'
            'Button 5')
        end
      end
    end
  end
  object defaults: TButton
    Left = 8
    Top = 311
    Width = 75
    Height = 25
    Caption = 'Defaults'
    TabOrder = 3
    OnClick = defaultsClick
  end
  object TrayIcon1: TTrayIcon
    Icon.Data = {
      0000010001002020100001000400E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      00008080800080C0FF0000608000FFFFFF00002020004080C000FFC0C000FF00
      FF00FF80A000406060000000A00081808000FFFFFF00FFFF4000818080000000
      0000000000000000000000000000000000000000000111000000000000000000
      0000000042600110000000000000000066002266042660110000000000000002
      2660422660426601100000000000000422660422660426601100000000000000
      4226604226604266011000000000026604226604226604266011000000000426
      6042266022266042660110000000004266042222022222022660110000000004
      2660222220222222226601100000000042660222220222222226601100000000
      0422202222202222222266011000000000422202222222222222266011000000
      0004222022222222222222660110000000004222222222222222222660110000
      0000042222222222222222226601000000000042222222222222222226010000
      0000000222222222222222222607000001111115222226222222222260010000
      1111111152222662222222440030000010000000000222266442440063300000
      0426666666222222266600222630000004222222222222224400222222600000
      0444444444444444004222222000000000000000000000000004222000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFF03FFFF3001FFFE0000FFFC00007FFC00003FF800001FF000000FF0000
      007F8000003FC000001FE000000FF0000007F8000003FC000001FE000000FF00
      0000FF800000FFC00000F8000000F0000000F0000000F0000000F0000000F000
      0001F8000C07FFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    PopupMenu = PopupMenu1
    Visible = True
    OnDblClick = Settings1Click
    Left = 80
    Top = 312
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 312
    object Settings1: TMenuItem
      Caption = 'Settings'
      Default = True
      OnClick = Settings1Click
    end
    object globalActive: TMenuItem
      AutoCheck = True
      Caption = 'Active'
      Checked = True
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object About1: TMenuItem
      Caption = 'About'
      OnClick = About1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
  object reactivateTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = reactivateTimerTimer
    Left = 128
    Top = 312
  end
end
