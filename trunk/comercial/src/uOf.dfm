inherited fOf: TfOf
  Caption = 'Ordem Produ'#231#227'o'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 112
    Top = 56
    Width = 21
    Height = 13
    Caption = 'OP :'
  end
  object Label2: TLabel [1]
    Left = 232
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Produto'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 56
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label4: TLabel [3]
    Left = 186
    Top = 75
    Width = 5
    Height = 13
    Caption = '/'
  end
  object Label5: TLabel [4]
    Left = 648
    Top = 56
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  inherited MMJPanel1: TMMJPanel
    TabOrder = 5
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 770
      Height = 49
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ordem de Produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShadowColor = clNavy
      ShadowSize = 1
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -24
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  inherited MMJPanel2: TMMJPanel
    TabOrder = 6
  end
  object OfId: TEdit [7]
    Left = 112
    Top = 72
    Width = 73
    Height = 21
    ReadOnly = True
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object OfProd: TEdit [8]
    Left = 232
    Top = 72
    Width = 57
    Height = 21
    TabOrder = 3
    OnExit = OfProdExit
    OnKeyPress = FormKeyPress
  end
  object OfDesc: TEdit [9]
    Left = 328
    Top = 72
    Width = 313
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  object OfQtde: TJvCalcEdit [10]
    Left = 648
    Top = 72
    Width = 113
    Height = 21
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object JvDBGrid1: TJvDBGrid [11]
    Left = 5
    Top = 104
    Width = 761
    Height = 369
    DataSource = DtSrc
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBGrid1CellClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'OFID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFDATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFSTATUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFQTDESOLIC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFQTDEPRODUZ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFQTDEPERDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFMOTIVO'
        Visible = True
      end>
  end
  object OfData: TJvDateEdit [12]
    Left = 8
    Top = 72
    Width = 97
    Height = 21
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object btnProdutoProcura: TBitBtn [13]
    Left = 287
    Top = 72
    Width = 35
    Height = 26
    PopupMenu = PopupMenu1
    TabOrder = 9
    TabStop = False
    OnClick = btnProdutoProcuraClick
    Glyph.Data = {
      C2070000424DC20700000000000036000000280000001E000000150000000100
      1800000000008C070000120B0000120B00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A01F70A01F80AF0070
      A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF108FBF2F8FB00F0F0F0000001F4F600F7FB0
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0070A020AFDF3FCFFF50909FF0C090806F500000002F607FBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F70AF
      108FC03FCFFF3FCFFF50909FFFCF9FFFCF9F4F4030101F1F2F80B0BFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00609F1F9FCF3FCFFF1F9FCF3F
      CFFF4FCFFF50A0BFF0C090FFCF9FAF8F6F0000005F90B0BFBFBFBFBFBF005080
      2F80B000609FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0F7FB02FBFEF3FCFFF3FCFFF2090C070DFFF90E0
      FFAFE0FFAF9F80FFCF9FCFA080000000508FAF00609F409FC0609FB01F1F1F1F
      30400F70A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF108FC03FCFFF40CFFF5FD0FF7FDFFF409FC0AFE0FFD0F0FFE0F0FF
      EFEFF0A09080806F50304F5F308FBF80D0F07FDFFF5F8F9F9F8060000000102F
      3F00609FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0070A01080
      BF4FD0FF6FD0FF8FDFFFA0E0FFC0EFFFBFE0F05F9FC0F0FFFFF0FFFFDFF0FFBF
      E0FF5FAFCF0F90C050C0EF50D0FF3FCFFF50909FFFCF9F6F5F400000000F5F80
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF0F7FAF30AFDF4FAFDF90E0FF
      AFEFFFCFEFFFDFF0FFEFFFFFF0FFFF2F9FC02F9FC060BFDF409FC00F8FB00070
      A000AFD030BFEF3FCFFF3FCFFF309FBFF0C090CFA0800000001F709FBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF00609F90DFFF3F8FBFD0F0FFE0F0FFF0
      FFFFF0FFFFE0F0FFCFF0FF90D0EF1F9FCF00A0CF0090C000AFD00080B000AFD0
      20BFEF3FCFFF3FCFFF3FCFFF809080CFA0800000001F6F90BFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBF00609FD0F0FF80BFD07FB0CFF0FFFFDFF0FFC0EF
      FFAFE0FF8FDFFF70DFFF50D0FF1FA0D00070AF0090C0007FAF00A0CF0F9FCF3F
      CFFF3FCFFF3FCFFF3FC0F050808000304F0070A0BFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBF00609F8FBFD0D0E0F02F80AF207FAF60B0DF60BFDF60D0FF
      4FCFFF3FCFFF3FCFFF3FCFFF30C0FF1F9FD00090BF00A0CF00A0CF10A0D030C0
      FF1FAFDF1090C00070AF005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBF00609F00609FBFBFBFBFBFBF0F70A020A0D020A0DF20A0DF30
      C0FF3FCFFF3FCFFF3FCFFF3FCFFF30C0FF20A0DF006F9F0070A0005080BFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F7FAF20AFDF108FC01F9F
      CF109FD01090C0007FB0006F9F005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A0007FAF00609FBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000}
  end
  object OFID_Ind: TEdit [14]
    Left = 192
    Top = 72
    Width = 25
    Height = 21
    ReadOnly = True
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = cdsOf
  end
  object sqlOf: TSQLDataSet
    CommandText = 'select * from OF_OF where ofid = :ofid '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ofid'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 120
    Top = 8
    object sqlOfOFID: TIntegerField
      FieldName = 'OFID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlOfOFDATA: TDateField
      FieldName = 'OFDATA'
    end
    object sqlOfOFSTATUS: TStringField
      FieldName = 'OFSTATUS'
      FixedChar = True
      Size = 1
    end
    object sqlOfOFQTDESOLIC: TFloatField
      FieldName = 'OFQTDESOLIC'
    end
    object sqlOfOFQTDEPRODUZ: TFloatField
      FieldName = 'OFQTDEPRODUZ'
    end
    object sqlOfOFQTDEPERDA: TFloatField
      FieldName = 'OFQTDEPERDA'
    end
    object sqlOfOFMOTIVO: TStringField
      FieldName = 'OFMOTIVO'
      Size = 100
    end
    object sqlOfCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sqlOfOFID_IND: TSmallintField
      FieldName = 'OFID_IND'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dspOf: TDataSetProvider
    DataSet = sqlOf
    Left = 152
    Top = 8
  end
  object cdsOf: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ofid'
        ParamType = ptInput
      end>
    ProviderName = 'dspOf'
    Left = 184
    Top = 8
    object cdsOfOFID: TIntegerField
      FieldName = 'OFID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOfOFDATA: TDateField
      FieldName = 'OFDATA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFSTATUS: TStringField
      FieldName = 'OFSTATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsOfOFQTDESOLIC: TFloatField
      FieldName = 'OFQTDESOLIC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFQTDEPRODUZ: TFloatField
      FieldName = 'OFQTDEPRODUZ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFQTDEPERDA: TFloatField
      FieldName = 'OFQTDEPERDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFMOTIVO: TStringField
      FieldName = 'OFMOTIVO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsOfCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOfOFID_IND: TSmallintField
      FieldName = 'OFID_IND'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sqlInd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'OFID'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT MAX(OFID_IND) FROM OF_OF WHERE OFID = :OFID')
    SQLConnection = DM.sqlsisAdimin
    Left = 192
    Top = 40
  end
  object sqlId: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(OFID) FROM OF_OF')
    SQLConnection = DM.sqlsisAdimin
    Left = 128
    Top = 40
  end
end