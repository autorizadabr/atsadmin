inherited fParametro: TfParametro
  Left = 125
  Top = 152
  Width = 801
  Height = 570
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel2: TMMJPanel [0]
    Width = 793
    Height = 9
    inherited Label1: TLabel
      Left = 214
      Top = 0
      Width = 360
      Caption = 'Par'#225'metros do Sistema'
    end
    inherited Label2: TLabel
      Left = 218
      Top = 1
      Width = 360
      Caption = 'Par'#225'metros do Sistema'
    end
  end
  object Parametro: TPageControl [1]
    Left = 0
    Top = 8
    Width = 792
    Height = 473
    ActivePage = TabSheet2
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Par'#226'metros'
      object DBGrid1: TDBGrid
        Left = 8
        Top = 3
        Width = 753
        Height = 188
        DataSource = DtSrc
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARAMETRO'
            Title.Caption = 'Parametro'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONFIGURADO'
            Title.Caption = 'Configurado'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DADOS'
            Title.Caption = 'Dados'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D1'
            Title.Caption = 'Adm'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D2'
            Title.Caption = 'Financeiro'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D3'
            Title.Caption = 'Comercial'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D4'
            Title.Caption = 'Materiais'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D5'
            Title.Caption = 'Pedagogico'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D6'
            Title.Caption = 'Sa'#250'de'
            Width = 60
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 195
        Width = 769
        Height = 49
        Caption = 'Configura'#231#227'o do Video (VIDEO)'
        TabOrder = 1
        object Label4: TLabel
          Left = 144
          Top = 23
          Width = 223
          Height = 13
          Caption = 'Resolu'#231#227'o do Video para o sistema (800x600) :'
        end
        object Label5: TLabel
          Left = 512
          Top = 22
          Width = 7
          Height = 13
          Caption = 'X'
        end
        object BitBtn3: TBitBtn
          Left = 678
          Top = 18
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object Edit1: TEdit
          Left = 384
          Top = 18
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 526
          Top = 19
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 246
        Width = 769
        Height = 41
        Caption = 
          'Conta para Lan'#231'amentos no Caixa Referente a Venda (CONTA_CLIENTE' +
          ')'
        TabOrder = 2
        object Label6: TLabel
          Left = 8
          Top = 19
          Width = 486
          Height = 13
          Caption = 
            'Ver no Plano de Contas a conta do Ativo (1.1...) com Consolida =' +
            ' S, que se refere a Contas a Receber.'
        end
        object Edit12: TEdit
          Left = 528
          Top = 14
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
      object GroupBox9: TGroupBox
        Left = 2
        Top = 331
        Width = 769
        Height = 45
        Caption = 
          'Usa Lista de Pre'#231'o de Terceiros ?        Usa Cadastro de Veiculo' +
          's'
        TabOrder = 3
        object Label19: TLabel
          Left = 8
          Top = 21
          Width = 176
          Height = 16
          Caption = 'Pre'#231'o Lista "SIM" ou "N'#195'O" ?.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 321
          Top = 21
          Width = 219
          Height = 16
          Caption = 'Cadastro Ve'#237'culos "SIM" ou "N'#195'O" ?.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn9: TBitBtn
          Left = 678
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn9Click
        end
        object ComboBox3: TComboBox
          Left = 192
          Top = 17
          Width = 81
          Height = 24
          BevelKind = bkFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object ComboBox4: TComboBox
          Left = 546
          Top = 16
          Width = 81
          Height = 24
          BevelKind = bkFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 2
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
      end
      object GroupBox13: TGroupBox
        Left = 4
        Top = 380
        Width = 769
        Height = 45
        Caption = 
          'Empresa onde o sistema '#233' usado (Altera nome de Campos/Bot'#245'es/Tel' +
          'as conforme tipo EMPRESA'
        TabOrder = 4
        object Label24: TLabel
          Left = 8
          Top = 21
          Width = 101
          Height = 16
          Caption = 'Nome Empresa :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 321
          Top = 21
          Width = 92
          Height = 16
          Caption = 'Tipo Empresa :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn13: TBitBtn
          Left = 678
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn13Click
        end
        object ComboBox8: TComboBox
          Left = 424
          Top = 16
          Width = 203
          Height = 24
          BevelKind = bkFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            'AUTOMOTIVA'
            'COMERCIO'
            'LOJA ROUPA'
            'FABRICA'
            'CONFEC'#199#195'O')
        end
        object Edit15: TEdit
          Left = 114
          Top = 20
          Width = 201
          Height = 21
          TabOrder = 2
          Text = 'Edit15'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Par'#226'metros Formul'#225'rios '
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 1
        Top = 83
        Width = 769
        Height = 89
        Caption = 
          'Usa anota'#231#245'es em Vendas (Campo Controle tabela Movimento Detalhe' +
          ') - Combobox usa D1 a D9. - ANOTACOESVENDAS'
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 31
          Width = 70
          Height = 13
          Caption = 'Insira os itens :'
        end
        object BitBtn1: TBitBtn
          Left = 678
          Top = 60
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object RadioGroup1: TRadioGroup
          Left = 640
          Top = 16
          Width = 113
          Height = 41
          Caption = 'Usa Anota'#231#245'es:'
          Columns = 2
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 96
          Top = 24
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 232
          Top = 24
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 368
          Top = 24
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 4
        end
        object Edit6: TEdit
          Left = 496
          Top = 24
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 5
        end
        object Edit7: TEdit
          Left = 8
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 6
        end
        object Edit8: TEdit
          Left = 136
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 7
        end
        object Edit9: TEdit
          Left = 264
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 8
        end
        object Edit10: TEdit
          Left = 392
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 9
        end
        object Edit11: TEdit
          Left = 528
          Top = 56
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 10
        end
      end
      object GroupBox6: TGroupBox
        Left = 1
        Top = 180
        Width = 769
        Height = 52
        Caption = 
          'Usado PDV: Inseri CODCLIENTE, CODALMOXARIFADO, CODNATUREZA (PDV)' +
          ' e CUPOM ou PEDIDO(mesmo Venda Finalizar) para o bot'#227'o imprimir'
        TabOrder = 1
        object Label14: TLabel
          Left = 8
          Top = 24
          Width = 170
          Height = 13
          Caption = 'Campos padr'#245'es PDV, bot'#227'o incluir.'
        end
        object Label15: TLabel
          Left = 181
          Top = 24
          Width = 51
          Height = 13
          Caption = 'CodCliente'
        end
        object Label16: TLabel
          Left = 299
          Top = 24
          Width = 64
          Height = 13
          Caption = 'CodAlmoxarif.'
        end
        object Label17: TLabel
          Left = 421
          Top = 24
          Width = 62
          Height = 13
          Caption = 'CodNatureza'
        end
        object Label18: TLabel
          Left = 528
          Top = 24
          Width = 51
          Height = 13
          Caption = 'Forma imp.'
        end
        object Edit17: TEdit
          Left = 366
          Top = 21
          Width = 49
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 1
        end
        object BitBtn7: TBitBtn
          Left = 679
          Top = 19
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 3
          OnClick = BitBtn7Click
        end
        object Edit18: TEdit
          Left = 235
          Top = 21
          Width = 58
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object Edit19: TEdit
          Left = 490
          Top = 21
          Width = 36
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
        end
        object ComboBox2: TComboBox
          Left = 583
          Top = 21
          Width = 80
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 4
          Text = 'CUPOM'
          Items.Strings = (
            'CUPOM'
            'PEDIDO')
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 22
        Width = 769
        Height = 48
        Caption = 
          'Tipo de Form de Procura do Produto para o Form VENDA (TERMINALVE' +
          'NDAS)'
        TabOrder = 2
        object BitBtn8: TBitBtn
          Left = 679
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn8Click
        end
        object RadioGroup2: TRadioGroup
          Left = 9
          Top = 14
          Width = 647
          Height = 31
          Columns = 2
          Items.Strings = (
            'Simples (somento descri'#231#227'o, com op'#231#227'o de inserir direto)'
            'Completo , todas op'#231#245'es de busca.')
          TabOrder = 1
        end
      end
      object GroupBox7: TGroupBox
        Left = 2
        Top = 233
        Width = 769
        Height = 41
        Caption = 'Campo Controle  e Obs. no Formul'#225'rio FINALIZAR VENDA (CONTROLE)'
        TabOrder = 3
        object Label9: TLabel
          Left = 8
          Top = 19
          Width = 99
          Height = 13
          Caption = 'Usa campo Controle:'
        end
        object Label10: TLabel
          Left = 224
          Top = 16
          Width = 85
          Height = 13
          Caption = 'Nome do Campo :'
        end
        object Edit14: TEdit
          Left = 320
          Top = 16
          Width = 345
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object BitBtn6: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn6Click
        end
        object ComboBox1: TComboBox
          Left = 117
          Top = 16
          Width = 55
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
      end
      object GroupBox10: TGroupBox
        Left = 2
        Top = 274
        Width = 769
        Height = 41
        Caption = 
          'Dados padr'#245'es para abertura do FiltroMovimentoVenda(PADRAOFILTRO' +
          'VENDA)'
        TabOrder = 4
        object Label11: TLabel
          Left = 8
          Top = 19
          Width = 100
          Height = 13
          Caption = 'Usa valores padr'#245'es:'
        end
        object Label12: TLabel
          Left = 184
          Top = 14
          Width = 59
          Height = 13
          Caption = 'Data Inicial :'
        end
        object Label13: TLabel
          Left = 344
          Top = 16
          Width = 54
          Height = 13
          Caption = 'Data Final :'
        end
        object BitBtn10: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn10Click
        end
        object ComboBox5: TComboBox
          Left = 117
          Top = 16
          Width = 55
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object meDta1: TMaskEdit
          Left = 256
          Top = 15
          Width = 80
          Height = 21
          TabOrder = 2
        end
        object meDta2: TMaskEdit
          Left = 407
          Top = 14
          Width = 83
          Height = 21
          TabOrder = 3
        end
      end
      object GroupBox12: TGroupBox
        Left = 2
        Top = 357
        Width = 769
        Height = 41
        Caption = 
          'Formata'#231#227'o usadas no sistema (n. casas decimais...) D1 : Qtde, D' +
          '2 : Valor'
        TabOrder = 5
        object Label25: TLabel
          Left = 40
          Top = 14
          Width = 197
          Height = 13
          Caption = 'Masc'#225'ra Quantidade(N. casas decimais) :'
        end
        object Label26: TLabel
          Left = 312
          Top = 16
          Width = 169
          Height = 13
          Caption = 'Masc'#225'ra Valor (N. casas decimais) :'
        end
        object BitBtn12: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn12Click
        end
        object MaskEdit1: TMaskEdit
          Left = 248
          Top = 15
          Width = 41
          Height = 21
          TabOrder = 1
          Text = '1'
        end
        object MaskEdit2: TMaskEdit
          Left = 495
          Top = 14
          Width = 34
          Height = 21
          TabOrder = 2
          Text = '2'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados obrigat'#243'rios'
      ImageIndex = 1
      object GroupBox5: TGroupBox
        Left = 3
        Top = 8
        Width = 779
        Height = 41
        Caption = 'Usu'#225'rio do Sistema 0'
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 16
          Width = 442
          Height = 13
          Caption = 
            'Usu'#225'rio cadastrado na tabela USUARIO - usu'#225'rio c'#243'digo 0 , usado ' +
            ' internamente no sistema..'
        end
        object Image1: TImage
          Left = 496
          Top = 11
          Width = 43
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image3: TImage
          Left = 536
          Top = 9
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object BitBtn5: TBitBtn
          Left = 664
          Top = 11
          Width = 105
          Height = 25
          Caption = 'Inserir Usu'#225'rio'
          TabOrder = 0
          OnClick = BitBtn5Click
        end
      end
      object GroupBox23: TGroupBox
        Left = 3
        Top = 49
        Width = 779
        Height = 41
        Caption = 'Usu'#225'rio do Sistema 1'
        TabOrder = 1
        object Label36: TLabel
          Left = 8
          Top = 16
          Width = 442
          Height = 13
          Caption = 
            'Usu'#225'rio cadastrado na tabela USUARIO - usu'#225'rio c'#243'digo 1 , usado ' +
            ' internamente no sistema..'
        end
        object Image2: TImage
          Left = 496
          Top = 11
          Width = 43
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image4: TImage
          Left = 536
          Top = 9
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object BitBtn23: TBitBtn
          Left = 664
          Top = 11
          Width = 105
          Height = 25
          Caption = 'Inserir Usu'#225'rio'
          TabOrder = 0
          OnClick = BitBtn23Click
        end
      end
      object GroupBox24: TGroupBox
        Left = 3
        Top = 99
        Width = 779
        Height = 41
        Caption = 'Seri'#233' Entrada e Sa'#237'da (I / O)'
        TabOrder = 2
        object Label37: TLabel
          Left = 8
          Top = 16
          Width = 256
          Height = 13
          Caption = 'S'#233'ries necess'#225'rias para Entrada e Sa'#237'da de Materiais.'
        end
        object Label38: TLabel
          Left = 325
          Top = 16
          Width = 3
          Height = 13
          Caption = '.'
        end
        object Label39: TLabel
          Left = 507
          Top = 16
          Width = 3
          Height = 13
          Caption = '.'
        end
        object Image9: TImage
          Left = 455
          Top = 11
          Width = 37
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image10: TImage
          Left = 454
          Top = 9
          Width = 34
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object Image11: TImage
          Left = 622
          Top = 8
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object Image12: TImage
          Left = 624
          Top = 10
          Width = 35
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object BitBtn24: TBitBtn
          Left = 664
          Top = 11
          Width = 105
          Height = 25
          Caption = 'Inserir S'#233'ries'
          TabOrder = 0
          OnClick = BitBtn24Click
        end
      end
      object GroupBox27: TGroupBox
        Left = 3
        Top = 147
        Width = 779
        Height = 41
        Caption = 'Cliente Padr'#227'o do Sistema'
        TabOrder = 3
        object Label42: TLabel
          Left = 8
          Top = 16
          Width = 193
          Height = 13
          Caption = 'Cliente  usado  internamente no sistema..'
        end
        object Image5: TImage
          Left = 496
          Top = 11
          Width = 43
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image6: TImage
          Left = 536
          Top = 9
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object BitBtn27: TBitBtn
          Left = 658
          Top = 11
          Width = 111
          Height = 25
          Caption = 'Inserir Cliente Padr'#227'o'
          TabOrder = 0
          OnClick = BitBtn27Click
        end
      end
      object GroupBox28: TGroupBox
        Left = 3
        Top = 198
        Width = 779
        Height = 41
        Caption = 'Fornecedor Padr'#227'o do Sistema'
        TabOrder = 4
        object Label44: TLabel
          Left = 8
          Top = 16
          Width = 215
          Height = 13
          Caption = 'Fornecedor  usado  internamente no sistema..'
        end
        object Image7: TImage
          Left = 496
          Top = 11
          Width = 43
          Height = 27
          Picture.Data = {
            07544269746D61701E070000424D1E0700000000000036000000280000001600
            00001A0000000100180000000000E80600000000000000000000000000000000
            0000C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F0000000000007F7F7F
            7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F
            7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000
            007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F
            7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00
            007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F
            0000000000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F
            00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F0000
            7F00007F00007F0000000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000
            FF0000FF00007F00007F00007F00007F0000000000007F7F7F0000FF00007F00
            007F00007F00007F00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C00000FF00007F00007F00007F00007F00007F00000000000000007F
            00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C00000FF0000FF00007F00007F00007F00007F00007F0000
            7F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00
            007F00007F00007F00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F
            00007F00007F00007F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000
            FF0000FF00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F
            7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F
            00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000
            7F0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00
            007F0000007F7F7F0000FF0000FF00007F00007F00007F0000000000007F7F7F
            7F7F7F7F7F7F7F7F7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F
            00007F0000007F7F7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
            000000007F7F7F7F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F0000
            7F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00
            007F00007F0000000000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00
            007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
            0000FF00007F00007F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF
            0000FF0000FF00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C00000FF0000FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0
            C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0
            C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
        end
        object Image8: TImage
          Left = 536
          Top = 9
          Width = 41
          Height = 29
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000000
            00001C34040024341C00242424001C3C0400243C0C00244404002C5C04003C5C
            240044543C005C5C54005C5C5C00646464006C6C6C0054743C00747474004484
            0400747C74007C7C7C0084848400449404006C8C540054AC0400000000008C8C
            8C008C948C00949494009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC
            040074F404007CFC040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC
            240094EC3C0094FC2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC
            5400ACFC6400B4FC6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCC
            AC00BCC4B400BCCCB400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0
            C000002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00024B6
            FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B
            9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FF
            FF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0024FF
            B60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C2800009B
            320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FF
            CD00003E0000005D0000007C0000009B000000BA000000D9000000F0000024FF
            240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C0000329B
            00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF9000CDFF
            B4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF00000B6FF
            2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B
            0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFF
            B4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA0000FFB6
            2400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B32
            0000BA3C0000D9460000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCD
            B4003E0000005D0000007C0000009B000000BA000000D9000000F0000000FF24
            2400FF484800FF6C6C00FF909000FFB4B4003E0014005D001E007C0028009B00
            3200BA003C00D9004600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4
            CD003E002A005D003F007C0054009B006900BA007E00D9009300F000AA00FF24
            B600FF48C200FF6CCE00FF90DA00FFB4E6003E003E005D005D007C007C009B00
            9B00BA00BA00D900D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4
            FF002A003E003F005D0054007C0069009B007E00BA009300D900AA00F000B624
            FF00C248FF00CE6CFF00DA90FF00E6B4FF0014003E001E005D0028007C003200
            9B003C00BA004600D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4
            FF003F3F3F3F3F3F3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1717110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F1212140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F18181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F
            3F3F3F3F3F3F3F24242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F3F2B2B2121222323222213130517170C0C0C0E0E1111173F3F3F3F3F
            3F3F3F3F352121222223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F
            3F3F3F3F2B222223232727272626222213040418180E0C0C0C0C0E12123F3F3F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3F3F29262625252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F
            3F3F3838302D2D23232C393933332E2E23151503031111110E0E0C0E0E111117
            3F3F3F3F392E2E2828383F3F373731312A22220F0F01171711110E0E0E0E0E12
            19193F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F37373F3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E11
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F322E2E23231503030C0C171212111112
            17173F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3734342D2D2313130000181919171717
            19193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D312323202035
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A232336
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F
            3F3F}
        end
        object BitBtn28: TBitBtn
          Left = 658
          Top = 11
          Width = 112
          Height = 25
          Caption = 'Inserir Fornec. Padr'#227'o'
          TabOrder = 0
          OnClick = BitBtn28Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Par'#226'metros II'
      ImageIndex = 3
      object GroupBox14: TGroupBox
        Left = 3
        Top = 11
        Width = 779
        Height = 55
        Caption = 'M'#243'dulos usados no sistema'
        TabOrder = 0
        object BitBtn14: TBitBtn
          Left = 677
          Top = 20
          Width = 64
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn14Click
        end
        object JvCheckBox1: TJvCheckBox
          Left = 16
          Top = 24
          Width = 80
          Height = 17
          Caption = 'M'#243'd. Admin.'
          TabOrder = 1
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox2: TJvCheckBox
          Left = 112
          Top = 24
          Width = 97
          Height = 17
          Caption = 'M'#243'd. Financeiro'
          TabOrder = 2
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox3: TJvCheckBox
          Left = 216
          Top = 24
          Width = 94
          Height = 17
          Caption = 'M'#243'd. Comercial'
          TabOrder = 3
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox4: TJvCheckBox
          Left = 320
          Top = 24
          Width = 90
          Height = 17
          Caption = 'M'#243'd. Materiais'
          TabOrder = 4
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox5: TJvCheckBox
          Left = 424
          Top = 24
          Width = 105
          Height = 17
          Caption = 'M'#243'd. Pedag'#243'gico'
          TabOrder = 5
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox6: TJvCheckBox
          Left = 544
          Top = 24
          Width = 79
          Height = 17
          Caption = 'M'#243'd. Sa'#250'de'
          TabOrder = 6
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
      end
      object GroupBox15: TGroupBox
        Left = 3
        Top = 69
        Width = 778
        Height = 43
        Caption = 
          'Campo MARCA tabela Produto se PARAMETRO GRUPOMARCA estiver como ' +
          'SIM o sistema relaciona a Marca com o Grupo'
        TabOrder = 1
        object Label28: TLabel
          Left = 8
          Top = 19
          Width = 293
          Height = 13
          Caption = 'Deixe o campo vazio para usar a MARCA sem relacionamento'
        end
        object Edit16: TEdit
          Left = 528
          Top = 14
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object BitBtn15: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn15Click
        end
      end
      object GroupBox18: TGroupBox
        Left = 0
        Top = 136
        Width = 778
        Height = 43
        Caption = 
          'Usa CENTROCUSTO (Veja qual '#233' o n'#250'mero da Conta(Plano de Contas) ' +
          'do Centro de Custo (geralmente come'#231'a no 6% ou 7% c'#243'digo Conta)'
        TabOrder = 2
        object Label33: TLabel
          Left = 8
          Top = 19
          Width = 465
          Height = 13
          Caption = 
            'Informe S usa o Centro de Custo Form Compra (o N'#250'mero Contabil i' +
            'nicial (ger. 6) e o c'#243'digo conta .'
        end
        object Edit20: TEdit
          Left = 540
          Top = 16
          Width = 57
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 1
        end
        object BitBtn18: TBitBtn
          Left = 682
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 3
          OnClick = BitBtn18Click
        end
        object cbCentroCusto: TComboBox
          Left = 479
          Top = 16
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'S'
            'N')
        end
        object Edit21: TEdit
          Left = 603
          Top = 16
          Width = 57
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
        end
      end
      object GroupBox21: TGroupBox
        Left = 0
        Top = 243
        Width = 778
        Height = 43
        Caption = 'COMPRADORPADRAO / VENDEDORPADRAO'
        TabOrder = 3
        object BitBtn21: TBitBtn
          Left = 682
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn19Click
        end
      end
      object GroupBox22: TGroupBox
        Left = 1
        Top = 290
        Width = 778
        Height = 43
        Caption = 'BLOQUEIOVENDACADASTROIMCOMPLETO'
        TabOrder = 4
        object BitBtn22: TBitBtn
          Left = 682
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn19Click
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 4
      object GroupBox16: TGroupBox
        Left = 3
        Top = 116
        Width = 778
        Height = 43
        Caption = 'FINANCEIRO - Bot'#227'o  RECEITAS e Menu LAN'#199'AR COBRAN'#199'A'
        TabOrder = 0
        object Label29: TLabel
          Left = 8
          Top = 19
          Width = 272
          Height = 13
          Caption = 'Desabilitar Bot'#227'o Receita e o Menu Lan'#231'ar COBRAN'#199'A :'
        end
        object BitBtn16: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn16Click
        end
        object ComboBox7: TComboBox
          Left = 308
          Top = 16
          Width = 77
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'S'
            'N')
        end
      end
      object GroupBox17: TGroupBox
        Left = 3
        Top = 164
        Width = 778
        Height = 43
        Caption = 'C'#225'lcula Juros em T'#237'tulos a Receber'
        TabOrder = 1
        object Label30: TLabel
          Left = 8
          Top = 19
          Width = 69
          Height = 13
          Caption = 'C'#225'lcula Juros :'
        end
        object Label31: TLabel
          Left = 208
          Top = 16
          Width = 109
          Height = 13
          Caption = 'Valor do Juros mensal :'
        end
        object Label32: TLabel
          Left = 420
          Top = 21
          Width = 8
          Height = 13
          Caption = '%'
        end
        object BitBtn17: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn17Click
        end
        object cbUsaJuros: TComboBox
          Left = 100
          Top = 16
          Width = 77
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'S'
            'N')
        end
        object edJuros: TJvCalcEdit
          Left = 320
          Top = 14
          Width = 97
          Height = 21
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Cadastros'
      ImageIndex = 5
      object GroupBox20: TGroupBox
        Left = 3
        Top = 16
        Width = 778
        Height = 43
        Caption = 'Cadastro Cliente'
        TabOrder = 0
        object Label35: TLabel
          Left = 8
          Top = 19
          Width = 274
          Height = 13
          Caption = 'Utiliza REPRESENTANTE ou  REFERENCIA no cadastro'
        end
        object BitBtn20: TBitBtn
          Left = 678
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn20Click
        end
        object ComboBox10: TComboBox
          Left = 308
          Top = 16
          Width = 149
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'REPRESENTANTE'
            'REFERENCIA')
        end
      end
    end
    object Compras: TTabSheet
      Caption = 'Compras'
      ImageIndex = 6
      object GroupBox4: TGroupBox
        Left = 10
        Top = 9
        Width = 769
        Height = 48
        Caption = 
          'Conta para Lan'#231'amentos no Caixa Referente a Compra (CONTA_FORNEC' +
          'EDOR)'
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 26
          Width = 486
          Height = 13
          Caption = 
            'Ver no Plano de Contas a conta do Passivo (2.1...) com Consolida' +
            ' = S, que se refere a Contas a Pagar.'
        end
        object Edit13: TEdit
          Left = 528
          Top = 23
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object BitBtn2: TBitBtn
          Left = 678
          Top = 20
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
      object GroupBox11: TGroupBox
        Left = 10
        Top = 67
        Width = 769
        Height = 48
        Caption = 
          'Dados padr'#245'es para abertura do FiltroMovimentoCompra(PADRAOFILTR' +
          'OCOMPRA)'
        TabOrder = 1
        object Label21: TLabel
          Left = 8
          Top = 25
          Width = 100
          Height = 13
          Caption = 'Usa valores padr'#245'es:'
        end
        object Label22: TLabel
          Left = 189
          Top = 26
          Width = 59
          Height = 13
          Caption = 'Data Inicial :'
        end
        object Label23: TLabel
          Left = 346
          Top = 25
          Width = 54
          Height = 13
          Caption = 'Data Final :'
        end
        object BitBtn11: TBitBtn
          Left = 680
          Top = 19
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn11Click
        end
        object ComboBox6: TComboBox
          Left = 117
          Top = 23
          Width = 55
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object meDta3: TMaskEdit
          Left = 254
          Top = 23
          Width = 80
          Height = 21
          TabOrder = 2
        end
        object meDta4: TMaskEdit
          Left = 407
          Top = 23
          Width = 83
          Height = 21
          TabOrder = 3
        end
      end
      object GroupBox19: TGroupBox
        Left = 10
        Top = 124
        Width = 769
        Height = 48
        Caption = 'Usa Lista de Pre'#231'os p'#244'r Fornecedor ?'
        TabOrder = 2
        object Label34: TLabel
          Left = 384
          Top = 27
          Width = 209
          Height = 13
          Caption = 'Informe Sim se for usar lista p'#244'r Fornecedor .'
        end
        object BitBtn19: TBitBtn
          Left = 680
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn19Click
        end
        object ComboBox9: TComboBox
          Left = 599
          Top = 23
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
      end
      object GroupBox25: TGroupBox
        Left = 11
        Top = 181
        Width = 766
        Height = 48
        Caption = 'Aprova'#231#227'o de Pedido de Compra'
        TabOrder = 3
        object Label40: TLabel
          Left = 8
          Top = 30
          Width = 130
          Height = 13
          Caption = 'Aprova'#231#227'o Pedido  Compra'
        end
        object Label41: TLabel
          Left = 210
          Top = 29
          Width = 162
          Height = 13
          Caption = 'Usu'#225'rio Padr'#227'o Resp. Aprova'#231#227'o '
        end
        object BitBtn25: TBitBtn
          Left = 680
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn25Click
        end
        object ComboBox11: TComboBox
          Left = 143
          Top = 23
          Width = 57
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object edUserRespAprovaCompra: TEdit
          Left = 384
          Top = 23
          Width = 121
          Height = 21
          TabOrder = 2
        end
      end
      object GroupBox26: TGroupBox
        Left = 10
        Top = 237
        Width = 766
        Height = 48
        Caption = 'Usu'#225'rio Padr'#227'o para Aprova'#231#227'o de Solicita'#231#227'o de Compra'
        TabOrder = 4
        object Label43: TLabel
          Left = 210
          Top = 29
          Width = 162
          Height = 13
          Caption = 'Usu'#225'rio Padr'#227'o Resp. Aprova'#231#227'o '
        end
        object BitBtn26: TBitBtn
          Left = 680
          Top = 20
          Width = 76
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = BitBtn26Click
        end
        object Edit22: TEdit
          Left = 384
          Top = 23
          Width = 121
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
  inherited MMJPanel1: TMMJPanel [2]
    Top = 489
    Width = 793
    inherited btnGravar: TBitBtn
      Left = 288
    end
    inherited btnIncluir: TBitBtn
      Left = 288
    end
    inherited btnCancelar: TBitBtn
      Left = 401
    end
    inherited btnExcluir: TBitBtn
      Left = 401
    end
    inherited btnProcurar: TBitBtn
      Left = 175
    end
    inherited btnSair: TBitBtn
      Left = 514
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_param
  end
  object DataSource1: TDataSource
    DataSet = DM.cds_parametro
    Left = 656
    Top = 352
  end
  object sbusca: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 488
    Top = 8
  end
end
