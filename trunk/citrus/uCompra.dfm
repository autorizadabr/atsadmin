inherited fCompra: TfCompra
  Left = 31
  Top = 36
  Width = 721
  Height = 554
  Caption = 'Compra'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 713
    object Label29: TLabel
      Left = 8
      Top = 16
      Width = 82
      Height = 13
      Caption = 'Centro Resultado'
      Transparent = True
    end
    object Label30: TLabel
      Left = 304
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Comprador'
      Transparent = True
    end
    object cbCentroCusto: TComboBox
      Left = 104
      Top = 16
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object cbComprador: TComboBox
      Left = 360
      Top = 16
      Width = 201
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbCompradorChange
      OnKeyPress = FormKeyPress
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 476
    Width = 713
    TabOrder = 5
    inherited btnGravar: TBitBtn
      Left = 311
    end
    inherited btnIncluir: TBitBtn
      Left = 311
    end
    inherited btnCancelar: TBitBtn
      Left = 434
    end
    inherited btnExcluir: TBitBtn
      Left = 434
    end
    inherited btnProcurar: TBitBtn
      Left = 180
      Visible = True
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 557
    end
    object BitBtn1: TBitBtn
      Left = 60
      Top = 5
      Width = 107
      Height = 42
      Caption = 'Nota Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = BitBtn1Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C06C6360534949524A4A534B4C514B4C4F4A4C504B4D524C
        4D524D4C544C4C534B4B544B4E53494F534A4D534A4D534B4C544C4D514B4C50
        4A4B514C4B504B4A504C4B4F4B4A615F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C097908DB0A7A4BBB1B1AAA2A2AAA4A5A8A3A4A6A1A3A49FA1A49E
        9FA39D9EA39B9BA199999E979A9D96999B94979A93969C949599939498929397
        9192969190979392918D8C736F6E646262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0B6AEAEE6DEDEE3DBDBE8E0E0E3DDDEE1DCDEE0DADFDCD9DBDDD8
        D9DCD7D8DBD6D5DAD5D4DCD7D8DBD6D7D9D4D5D8D3D4D8D2D3D5D0D1D3CECFD2
        CDCECCC7C8CFCACBC6C2C18D8B8A656362C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0BDB8B7EEE6E6E7DFDFE9E3E4E5E0E2E2DFE1E1DDE2E1DDE2E1DE
        E0E2DDDEE1DCDDE0DCDBD9D7D6D6D7D5D6D4D3D5D3D3D4D2D2D5D0D1D3CECFD2
        CDCED6D1D2D5D0D1CECCCB92908F646261C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0ADA8A7E9E4E3ECE6E7E8E3E4E6E3E5E3E2E6E1DFE5E0DFE3DFDE
        E0E0DEDEDEDCDCDDDBDAD9DCDAD8DCD7D9DAD6D8D9D7D7D7D7D8D6D6D6D4D4D5
        D3D3D2D0D0CDCBCBCCCACA939191626361C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C1BCBDEEEAE9ECE7E8EBE9E9E9E8ECE6E7EBE4E4EAE3E3E9E2E3
        E7E3E2E4E1E0E2E0E0E0DBE0DED9DFDAD8DED9D8DBD9D7D9D9D7D7D7D7D5D5D6
        D4D4D6D4D4D0CECED2D0D0969494626262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0ABA6A7F2EEEDF3EEEFEBE9E9E8E7EBE5E6EAE4E4EAE2E5EAE1E4
        E8E3E5E6E2E4E5E1E3E3DCE3E0DBE2DDD9E0DDD8DDDBD9DBDBD7D9D9D7D6D8D6
        D5D7D7D4D6D5D2D4D6D3D5959393616161C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C2BEBDF5F1F0F0ECEBF3F1F1EDECEEEAEBEFE7EAEEE5E8EDE5E8
        ECE3E6EAE4E6E7E1E6E5DFE6E3DCE5E2DCE3E0DCE1DFDCDEDEDDDDDDDBDADCDC
        D9DBD7D4D6D6D3D5D6D3D5928F91646262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0BFBCB8F8F5F1F6F3EFF3F1F0F2F2F2E9EBECE9ECF0ECEFF3EEF1
        F5E3E6EAE5E7E8E5E9EADEE4E3E2EAE9DAE0DFDEE3E2DDDFDFDBDBDBE5E3E3DD
        D8D9DFDADBD9D4D6DAD5D79C999B5E5B5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C07F7B7637332E1C19111C18133C39357B7978F2F2F2F2F4F5E5E8ECE7EA
        EEEFF2F6E5E7E8EBEDEEE4E9EAE4EAE9DEE3E2E6E8E8E4E4E4DFDDDCE2DEDD81
        7C7B3C37361B16151812133B3637878283C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        413D383F3A3198938AC7C3B8B9B4AB56534B0202003839357A7C7CECEEEFF1F3
        F4ECEEEFF0EFF1E8EAEBE7EBECE7EBECEAECECE5E5E5EAE8E7E9E6E23E3A3512
        0C076E6863C4BEB9C2BBB8817C791D1817373233C0C0C0C0C0C0C0C0C0444238
        4B473CCCC6B9EFE8D9F1ECDDFAF4E7EDE9DE9B998F020200292A286C6E6EEDED
        EDF8F7F9EEEDEFF3F2F4EEEFF3E8EAEBE9E9E9E7E5E4A09D983330281A150CB3
        ADA2EAE1D7ECE6DBFDF6EDF4EEE7D2CCC739343135302FC0C0C0A5A2942E281B
        E1DACBEAE3D2F6EFDCFFFBE8FAF2E1FFFFF4FFFFF7928F870504006869677775
        74BBB9B9FAF8F8F3F0F2F6F2F7F1EEF0F1EDEC9C989378736A090300A39C8DE9
        E2D1F3ECD9EEE6D5FAF1E3FFFFF5FFFCF3CFC9C41A1512948F8C4B4433989180
        E6DFCCECE3CFF0E7D3F6EDD9FFFFF0FFFFF1FFFCEFDEDACF33302B41403CCDC9
        C89C9897A8A3A4F8F3F4F8F3F5B3AEB0A6A1A0CAC4BD544C3F403827EDE6D2E1
        DAC1F4EDD4FFF8DFFFF6E2FFF7E6FFFFF5FEF7EE938D863D39342A2310D1CAB6
        E2D9C5E3D8C2F8EED6FFF6DEFFF9E2FFF8E4FAF3E4F4F1E385827A191611BBB6
        B3CBC6C59B9695B7B1B2CFC8CB9C9697D7D0CDC5BEB5292012857C68DFD8BDDF
        D7BAEEE6C9FAF2D5FFFBE2FFFFEAFFF8E7F3EDE0D3CCC3221C151C1504DDD6C3
        E2D9C5E4DAC2FEF3D7F6EBCFFFF4D8FFF7DFF6EFDBF4EDDE928E830C0901BDB8
        B5CAC6C5BCB8B7B4AFB0C0BBBDA39D9ECBC4C1C3BCB31109008E8875EAE4CDE0
        D9BEEAE2C5FFF8DAFCF1D3FDF1D5FFF4DEF6ECDBDBD5CA151007302821BFB6AC
        F4ECDBE7DDC5E7DCBCEFE3BFFFF3CFF9EDCBF9EED2EFE6D26E66591E1910C5C2
        BDC7C8C45C5F5D5759595E5B5D595456C3BFBEC6C2BD2321195F5E54F0F0E4E5
        E2D3E2D7C1F3E3C6FFEBC8FFF0CDFCE7CBF4E6D0C4BBB1232018645C5C6B635C
        FFFDEFFFF6E0F4E9C9EBDEB8E6D6B1F0E2BEFAEED2C8BDA9251D10504D45CBCA
        C6838684313634363B3A383A3A3C3C3C797672D4D1CC5C5954100D08D9D7CFFF
        FFF5F3E8D4EEDBC0F5DDB9F4DAB5FFECCCF4E6CF4E4A3F4C4E48BFB9BA160F0C
        AFA69CFFFFF0F2E7CCE8DDBDE6D9B9F5E9CDD9CCB6625A49090200989390B5B3
        B2454747191E1D09100D09120F232B243F4036A9A59AABA59A0B0200665C52F6
        EBDDFFFBE8F1DEC3E8D4B1F7E4BFF7E8C8847C65060800A3AAA5C0C0C06C6766
        120A03878071E2D9C5EDE3CBEBDFC7BEB39D5F55440B0200645E59D1CDCC4745
        452E2E2E030505878D8CA1A9A80002003F40373B392ECBC5B8746C5F0B020063
        5B4EC6BBADE9DDCBFBEDD6CFC4A98078610906005D6259C0C0C0C0C0C0C0C0C0
        79726F110A01251E0F38301F3F37261B1405160F06706A65C2BDBE4946480100
        023D3C3E0100025B5E626D6F7901040C50505004020038382CAFAFA16F736805
        0903070B062324222D2A261D1A16120F0B767571C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0B0AAA55952494E483D373126302A234A45424E494A2421230201050000
        033231353B3A3C06070B00000841424C3E3B3D0401000907000F0E0441433D43
        4644282D2C3337383C3B3D625F61B8B5B7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DFDBD6FFFCF7EBE8E3C7C4C09492926463655152564F4F555758
        5C7E7D81C0BFC1838284818181BBB9B88E8A896D65655D5353605557695E609C
        9292C9C0BDD8D0C9BBB3ACABA39C6D6461C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0D8D6D5FFFFFEFEFCFBFFFFFFFCFEFFFBFEFFF5F8FCFBFEFFFBFC
        FFFDFCFEFFFDFFFFFFFFFFFFFCFFFFFCFFFFFEFFFCFFFFF9FEFFFCFFFFF5FBFF
        FDFFFFFEFCFFF5EFFFF7EFB2A59D695D59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DBDBDBFEFEFEFBFBFBFCFEFEFAFEFFF9FEFFF9FEFFFBFFFFFDFF
        FFFFFFFFFFFFFFFFFFFEFFFFFEFFFEFFFFFCFEFDFEFFF7FAFFFBFEFFFFFDFFFF
        FDFFFFF9FBFFFAFBFFF6F5AE9C9B756866C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DDDDDDFFFFFFFFFFFFFDFFFFFBFFFFFAFFFFFAFFFFFBFFFFFDFF
        FFFEFFFDFFFEFDFFFEFDFFFBFCFFFAFCFDFEFFFBFEFFFAFFFFFDFFFFD8D5CDDF
        D3C7E8D6C5E1CBB9D9C2B3B5A19692857DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DEDCDBFDFEFCFBFCFAFBFEFCFDFFFEFBFFFEFBFFFFFBFFFEFDFF
        FEFFFFFCFFFFFCFFFFFEFFFFFFFDFFFFF9FCFFF3F5F6FFFFFCFFFFF2B7A384AE
        9466A3824AA58348987946927853BEAF9CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E5E3E2FFFFFEFFFFFEFFFFFEFDFEFCFCFFFBFCFFFDFCFFFBFFFF
        FCFFFFFCFFFFFCFFFFFEF9FAF8FBFFFFFAFFFFFDFFFFFFFEF6FFFFF0D5BE98F1
        D29FEEC98BE5C181C1A26BC2AC82C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E8E4E3FFFFFEFFFFFBFFFFFBFFFFFCFFFFFBFFFFFCFFFFFCFFFF
        FCFFFFFCFFFFFEFFFFFEFFFFFCFAFEF9F5FBFAFBFFFFFAFCF6FFFDF0CBBBA4EB
        D2B2E7C9A6C4A885BFA98DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E9E4E3FFFEFDFFFFFCFFFFFCFFFFFAFFFFFAFFFFFAFFFFFBFFFF
        FCFFFFFEFFFEFFFFFFFEFFFDFAFFFFFCFAFCFCFDFFFFFBFCFAFFFFF9DCCFC1ED
        D9C7C4AC98B8A493C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0F0E8E8FFFEFEFFFFFCFFFFFCFFFFFBFFFFF9FFFFF9FFFFFBFFFF
        FCFFFFFEFFFEFFFFFEFFFFFDFDFFFEFEFFFDFFFFFDFFFFFDFFFFFCFCC0B0A9BE
        ADA0B1A093C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E7DDDDF4EAEAEEE5E2E6E0DBE6E0DBE2E0D8E0DED6DBDBD5D9D8
        D4D7D5D5D7D2D4D9D0D3DBCDCED6C8C9D4C7CFCEC6CDCBC0C8D4C9CBC2B2ACC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 13
    Top = 54
    Width = 689
    Height = 164
    Caption = 'Compra'
    TabOrder = 1
    object Label1: TLabel
      Left = 61
      Top = 10
      Width = 40
      Height = 13
      Caption = 'Produtor'
    end
    object Label2: TLabel
      Left = 453
      Top = 10
      Width = 64
      Height = 13
      Caption = 'Data Colheita'
    end
    object Label12: TLabel
      Left = 9
      Top = 12
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label13: TLabel
      Left = 570
      Top = 10
      Width = 80
      Height = 13
      Caption = 'Data Pagamento'
    end
    object edCodigoProdutor: TEdit
      Left = 7
      Top = 25
      Width = 47
      Height = 21
      TabOrder = 0
      OnKeyPress = edCodigoProdutorKeyPress
    end
    object cbNomeProdutor: TJvDBSearchComboBox
      Left = 58
      Top = 25
      Width = 383
      Height = 21
      DataField = 'NOMEFORNECEDOR'
      DataSource = DmCitrus.dsProdutor
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbNomeProdutorChange
      OnKeyPress = FormKeyPress
    end
    object dtDataCompra: TJvDatePickerEdit
      Left = 450
      Top = 25
      Width = 113
      Height = 25
      AllowNoDate = True
      Checked = True
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object dtDataPagFornecedor: TJvDatePickerEdit
      Left = 568
      Top = 25
      Width = 113
      Height = 25
      AllowNoDate = True
      Checked = True
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object GroupBox3: TGroupBox
      Left = 3
      Top = 103
      Width = 684
      Height = 56
      Caption = 'Produto'
      TabOrder = 5
      object Label7: TLabel
        Left = 64
        Top = 11
        Width = 37
        Height = 13
        Caption = 'Produto'
      end
      object Label8: TLabel
        Left = 376
        Top = 10
        Width = 73
        Height = 13
        Caption = 'Quantidade(Cx)'
      end
      object Label9: TLabel
        Left = 488
        Top = 9
        Width = 48
        Height = 13
        Caption = 'Pre'#231'o(R$)'
      end
      object Label10: TLabel
        Left = 561
        Top = 9
        Width = 74
        Height = 13
        Caption = 'Valor Total (R$)'
      end
      object Label14: TLabel
        Left = 8
        Top = 12
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object edCodigoProduto: TEdit
        Left = 7
        Top = 25
        Width = 50
        Height = 21
        TabOrder = 0
        OnKeyPress = edCodigoProdutoKeyPress
      end
      object cbNomeProduto: TJvDBSearchComboBox
        Left = 61
        Top = 25
        Width = 304
        Height = 21
        DataField = 'PRODUTO'
        DataSource = DmCitrus.dsProduto
        ItemHeight = 13
        TabOrder = 1
        OnChange = cbNomeProdutoChange
        OnKeyPress = FormKeyPress
      end
      object edQuantidadeCompra: TJvCalcEdit
        Left = 373
        Top = 25
        Width = 105
        Height = 21
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
        OnKeyPress = FormKeyPress
      end
      object edPrecoCompra: TJvCalcEdit
        Left = 485
        Top = 24
        Width = 65
        Height = 21
        DisplayFormat = ',##0.00'
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
        OnKeyPress = edPrecoCompraKeyPress
      end
      object edTotalCompra: TJvCalcEdit
        Left = 559
        Top = 24
        Width = 121
        Height = 21
        DisplayFormat = ',##0.00'
        TabOrder = 4
        DecimalPlacesAlwaysShown = False
        OnKeyPress = edTotalCompraKeyPress
      end
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 60
      Width = 684
      Height = 37
      Caption = 'CFO'
      TabOrder = 4
      object Label3: TLabel
        Left = 43
        Top = 10
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label4: TLabel
        Left = 395
        Top = 11
        Width = 51
        Height = 13
        Caption = 'Emitida em'
      end
      object Label5: TLabel
        Left = 540
        Top = 10
        Width = 47
        Height = 13
        Caption = 'Valida ate'
      end
      object Label6: TLabel
        Left = 203
        Top = 9
        Width = 55
        Height = 13
        Caption = 'Quantidade'
      end
      object cbNumeroCFO: TComboBox
        Left = 88
        Top = 10
        Width = 103
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbNumeroCFOChange
        OnKeyPress = FormKeyPress
      end
      object dtEmissaoCFO: TJvMaskEdit
        Left = 452
        Top = 9
        Width = 85
        Height = 21
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object dtValidadeCFO: TJvMaskEdit
        Left = 593
        Top = 9
        Width = 87
        Height = 21
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
      end
      object edQuantidadeCFO: TJvCalcEdit
        Left = 262
        Top = 9
        Width = 97
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
      end
    end
  end
  object GroupBox4: TGroupBox [3]
    Left = 13
    Top = 224
    Width = 689
    Height = 58
    Caption = 'Colhedor'
    TabOrder = 2
    object Label15: TLabel
      Left = 402
      Top = 7
      Width = 80
      Height = 13
      Caption = 'Data Pagamento'
    end
    object Label16: TLabel
      Left = 10
      Top = 11
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label17: TLabel
      Left = 65
      Top = 10
      Width = 42
      Height = 13
      Caption = 'Colhedor'
    end
    object Label11: TLabel
      Left = 525
      Top = 9
      Width = 48
      Height = 13
      Caption = 'Pre'#231'o(R$)'
    end
    object Label18: TLabel
      Left = 601
      Top = 9
      Width = 74
      Height = 13
      Caption = 'Valor Total (R$)'
    end
    object edCodigoColhedor: TEdit
      Left = 8
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 0
      OnKeyPress = edCodigoColhedorKeyPress
    end
    object cbNomeColhedor: TJvDBSearchComboBox
      Left = 62
      Top = 24
      Width = 331
      Height = 21
      DataField = 'NOMEFORNECEDOR'
      DataSource = DmCitrus.dsColhedor
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbNomeColhedorChange
      OnKeyPress = FormKeyPress
    end
    object dtPagColhedor: TJvDatePickerEdit
      Left = 400
      Top = 24
      Width = 112
      Height = 25
      AllowNoDate = True
      Checked = True
      TabOrder = 2
    end
    object edPrecoColhedor: TJvCalcEdit
      Left = 522
      Top = 24
      Width = 65
      Height = 21
      DisplayFormat = ',##0.00'
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edPrecoColhedorKeyPress
    end
    object edVlrColhedor: TJvCalcEdit
      Left = 599
      Top = 24
      Width = 74
      Height = 21
      DisplayFormat = ',##0.00'
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edVlrColhedorKeyPress
    end
  end
  object GroupBox5: TGroupBox [4]
    Left = 13
    Top = 287
    Width = 689
    Height = 58
    Caption = 'Frete'
    TabOrder = 3
    object Label19: TLabel
      Left = 570
      Top = 7
      Width = 80
      Height = 13
      Caption = 'Data Pagamento'
    end
    object Label20: TLabel
      Left = 10
      Top = 11
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label21: TLabel
      Left = 65
      Top = 10
      Width = 34
      Height = 13
      Caption = 'Fretista'
    end
    object Label31: TLabel
      Left = 456
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Valor Frete'
    end
    object edCodFretista: TEdit
      Left = 8
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 0
      OnKeyPress = edCodFretistaKeyPress
    end
    object cbNomeFretista: TJvDBSearchComboBox
      Left = 62
      Top = 24
      Width = 376
      Height = 21
      DataField = 'NOMEFORNECEDOR'
      DataSource = DmCitrus.dsFretista
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbNomeFretistaChange
      OnKeyPress = FormKeyPress
    end
    object dtDataPagFrete: TJvDatePickerEdit
      Left = 568
      Top = 24
      Width = 112
      Height = 25
      AllowNoDate = True
      Checked = True
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object edVlrFrete: TJvCalcEdit
      Left = 454
      Top = 24
      Width = 105
      Height = 21
      DisplayFormat = ',##0.00'
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox6: TGroupBox [5]
    Left = 14
    Top = 350
    Width = 687
    Height = 100
    Caption = 'Venda'
    TabOrder = 4
    object Label22: TLabel
      Left = 453
      Top = 7
      Width = 63
      Height = 13
      Caption = 'Data Entrega'
    end
    object Label23: TLabel
      Left = 570
      Top = 7
      Width = 89
      Height = 13
      Caption = 'Data Recebimento'
    end
    object Label24: TLabel
      Left = 10
      Top = 11
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label25: TLabel
      Left = 65
      Top = 10
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label26: TLabel
      Left = 41
      Top = 66
      Width = 73
      Height = 13
      Caption = 'Quantidade(Cx)'
    end
    object Label27: TLabel
      Left = 251
      Top = 65
      Width = 48
      Height = 13
      Caption = 'Pre'#231'o(R$)'
    end
    object Label28: TLabel
      Left = 385
      Top = 65
      Width = 74
      Height = 13
      Caption = 'Valor Total (R$)'
    end
    object edCodCliente: TEdit
      Left = 8
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 0
      OnKeyPress = edCodClienteKeyPress
    end
    object cbNomeCliente: TJvDBSearchComboBox
      Left = 62
      Top = 24
      Width = 376
      Height = 21
      DataField = 'NOMECLIENTE'
      DataSource = DmCitrus.dsCliente
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbNomeClienteChange
      OnKeyPress = FormKeyPress
    end
    object dtVenda: TJvDatePickerEdit
      Left = 450
      Top = 24
      Width = 111
      Height = 25
      AllowNoDate = True
      Checked = True
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object dtVencimentoV: TJvDatePickerEdit
      Left = 568
      Top = 24
      Width = 112
      Height = 25
      AllowNoDate = True
      Checked = True
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object edQuantidadeV: TJvCalcEdit
      Left = 119
      Top = 65
      Width = 105
      Height = 21
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edQuantidadeVKeyPress
    end
    object edPrecoV: TJvCalcEdit
      Left = 303
      Top = 64
      Width = 65
      Height = 21
      DisplayFormat = ',##0.00'
      TabOrder = 5
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edPrecoVKeyPress
    end
    object edPrecoVendaTotal: TJvCalcEdit
      Left = 472
      Top = 64
      Width = 121
      Height = 21
      DisplayFormat = ',##0.00'
      TabOrder = 6
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edPrecoVendaTotalKeyPress
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DmCitrus.cdsCompra
    OnDataChange = DtSrcDataChange
  end
end
