object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'FireDAC Manual CRUD'
  ClientHeight = 238
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 76
    Width = 56
    Height = 19
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 105
    Width = 53
    Height = 19
    Caption = 'Nome: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btConnectar: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Connectar'
    TabOrder = 0
    OnClick = btConnectarClick
  end
  object btInserir: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 1
    OnClick = btInserirClick
  end
  object edNome: TEdit
    Left = 67
    Top = 105
    Width = 347
    Height = 21
    TabOrder = 2
  end
  object edCod: TEdit
    Left = 67
    Top = 78
    Width = 75
    Height = 21
    TabOrder = 3
  end
  object edUltimo: TButton
    Left = 251
    Top = 8
    Width = 75
    Height = 25
    Caption = #218'ltimo'
    TabOrder = 4
    OnClick = edUltimoClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 152
    Width = 406
    Height = 75
    Lines.Strings = (
      
        'CRUD manual b'#225'sico para estudo, utilizando dbExpress. N'#227'o possui' +
        ' tratamento '
      'contra erros de execu'#231#227'o do usu'#225'rio.'
      'N'#227'o possui indica'#231#227'o de comando realizado com sucesso.'
      
        'Tratamento de excess'#245'es n'#227'o foram implementadas em todos os aces' +
        'sos ao '
      'Banco de Dados para evitar um c'#243'digo muito complexo.')
    TabOrder = 5
  end
  object btPrimeiro: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Primeiro'
    TabOrder = 6
    OnClick = btPrimeiroClick
  end
  object btAlterar: TButton
    Left = 170
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 7
    OnClick = btAlterarClick
  end
  object btDeletar: TButton
    Left = 251
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 8
    OnClick = btDeletarClick
  end
  object btAnterior: TButton
    Left = 8
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Anterior'
    TabOrder = 9
    OnClick = btAnteriorClick
  end
  object btProximo: TButton
    Left = 89
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 10
    OnClick = btProximoClick
  end
end
