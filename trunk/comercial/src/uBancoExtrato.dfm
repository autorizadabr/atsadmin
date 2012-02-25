inherited fBancoExtrato: TfBancoExtrato
  Caption = 'Concilia'#231#227'o Banc'#225'ria'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    object Label4: TLabel
      Left = 24
      Top = 14
      Width = 65
      Height = 13
      Caption = 'Caixa/Conta :'
      Transparent = True
    end
    object cbConta: TDBLookupComboBox
      Left = 104
      Top = 11
      Width = 253
      Height = 24
      Ctl3D = True
      DataField = 'CAIXA'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = ds_conta
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = cbContaClick
      OnKeyPress = FormKeyPress
    end
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnExcluir: TBitBtn
      Caption = 'Contas'
      Enabled = True
    end
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [2]
    Left = 0
    Top = 51
    Width = 772
    Height = 423
    Align = alClient
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'EXTRATOCOD'
        Title.Caption = 'Lan'#231'amento'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATODATA'
        Title.Caption = 'Data'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAIXA'
        Title.Caption = 'Caixa'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATODOC'
        Title.Caption = 'Documento'
        Width = 372
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATOTIPO'
        Title.Caption = 'Tipo'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATOVALOR'
        Title.Caption = 'Valor'
        Width = 74
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdsExtrato
  end
  object ds_conta: TDataSource
    DataSet = DM.cds_7_contas
    Left = 416
    Top = 8
  end
  object sdsExtrato: TSQLDataSet
    CommandText = 'SELECT * FROM BANCOEXTRATO WHERE CAIXA = :CAIXA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 400
    Top = 48
  end
  object dspExtrato: TDataSetProvider
    DataSet = sdsExtrato
    Left = 432
    Top = 48
  end
  object cdsExtrato: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspExtrato'
    Left = 472
    Top = 48
    object cdsExtratoEXTRATODATA: TDateField
      FieldName = 'EXTRATODATA'
      Required = True
    end
    object cdsExtratoCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
    object cdsExtratoEXTRATODOC: TStringField
      FieldName = 'EXTRATODOC'
      Size = 100
    end
    object cdsExtratoEXTRATOTIPO: TStringField
      FieldName = 'EXTRATOTIPO'
    end
    object cdsExtratoEXTRATOVALOR: TFloatField
      FieldName = 'EXTRATOVALOR'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsExtratoEXTRATOCOD: TStringField
      FieldName = 'EXTRATOCOD'
      Required = True
    end
    object cdsExtratoSEL: TStringField
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
  end
end
