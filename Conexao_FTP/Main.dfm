object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Conex'#227'o via FTP'
  ClientHeight = 334
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 67
    Height = 16
    Caption = 'Host Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 35
    Width = 68
    Height = 16
    Caption = 'User Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 62
    Width = 60
    Height = 16
    Caption = 'Password:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 94
    Width = 86
    Height = 16
    Caption = 'Remote Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 121
    Width = 56
    Height = 16
    Caption = 'Directory:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 146
    Width = 70
    Height = 16
    Caption = 'Server files:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 304
    Top = 146
    Width = 88
    Height = 16
    Caption = 'Local directory:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edHost: TEdit
    Left = 81
    Top = 3
    Width = 320
    Height = 21
    TabOrder = 0
  end
  object edUser: TEdit
    Left = 81
    Top = 30
    Width = 320
    Height = 21
    TabOrder = 1
  end
  object edPass: TEdit
    Left = 81
    Top = 57
    Width = 320
    Height = 21
    TabOrder = 2
  end
  object btConectar: TButton
    Left = 407
    Top = 2
    Width = 90
    Height = 77
    Caption = 'Conectar'
    TabOrder = 3
    OnClick = btConectarClick
  end
  object edPath: TEdit
    Left = 81
    Top = 116
    Width = 320
    Height = 21
    TabOrder = 4
  end
  object ListBox: TListBox
    Left = 8
    Top = 168
    Width = 153
    Height = 158
    ItemHeight = 13
    TabOrder = 5
  end
  object btList: TButton
    Left = 407
    Top = 114
    Width = 88
    Height = 25
    Caption = 'List'
    TabOrder = 6
    OnClick = btListClick
  end
  object btEnviar: TButton
    Left = 184
    Top = 168
    Width = 97
    Height = 73
    Caption = 'Enviar'
    TabOrder = 7
    OnClick = btEnviarClick
  end
  object btReceber: TButton
    Left = 184
    Top = 253
    Width = 97
    Height = 73
    Caption = 'Receber'
    TabOrder = 8
    OnClick = btReceberClick
  end
  object DirectoryListBox: TDirectoryListBox
    Left = 304
    Top = 168
    Width = 185
    Height = 158
    TabOrder = 9
  end
  object IdFTP: TIdFTP
    IPVersion = Id_IPv4
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 112
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 172
    Top = 13
    object LinkControlToPropertyHost: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = edHost
      Track = True
      Component = IdFTP
      ComponentProperty = 'Host'
    end
    object LinkControlToPropertyPassword: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = edPass
      Track = True
      Component = IdFTP
      ComponentProperty = 'Password'
    end
    object LinkControlToPropertyUsername: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = edUser
      Track = True
      Component = IdFTP
      ComponentProperty = 'Username'
    end
  end
  object OpenDialog: TOpenDialog
    Left = 240
    Top = 8
  end
end
