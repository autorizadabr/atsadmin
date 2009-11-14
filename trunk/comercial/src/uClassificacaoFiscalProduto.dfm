inherited fClassificacaoFIscalProduto: TfClassificacaoFIscalProduto
  Left = 309
  Top = 161
  Caption = 'fClassificacaoFIscalProduto'
  OldCreateOrder = True
  OnCreate = nil
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 88
    Height = 13
    Caption = 'Codigo do Produto'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 112
    Top = 64
    Width = 28
    Height = 13
    Caption = 'CFOP'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 176
    Top = 64
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 216
    Top = 64
    Width = 88
    Height = 13
    Caption = 'Substitui'#231#227'o Fiscal'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 328
    Top = 64
    Width = 101
    Height = 13
    Caption = 'Substitui'#231#227'o Fiscal IC'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 440
    Top = 64
    Width = 110
    Height = 13
    Caption = 'Substitui'#231#227'o Fiscal IND'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 552
    Top = 64
    Width = 26
    Height = 13
    Caption = 'ICMS'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 664
    Top = 64
    Width = 53
    Height = 13
    Caption = 'ICMS Base'
    FocusControl = DBEdit8
  end
  inherited MMJPanel1: TMMJPanel
    Font.Charset = ANSI_CHARSET
    Font.Height = -29
    ParentFont = False
    object Label9: TLabel
      Left = 9
      Top = 7
      Width = 688
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Label9'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cooper Blk BT'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  object DBEdit1: TDBEdit [10]
    Left = 8
    Top = 80
    Width = 89
    Height = 21
    DataField = 'CODPRO'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [11]
    Left = 112
    Top = 80
    Width = 57
    Height = 21
    DataField = 'CFOP'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [12]
    Left = 176
    Top = 80
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [13]
    Left = 216
    Top = 80
    Width = 105
    Height = 21
    DataField = 'ICMS_SUBST'
    DataSource = DtSrc
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [14]
    Left = 328
    Top = 80
    Width = 105
    Height = 21
    DataField = 'ICMS_SUBST_IC'
    DataSource = DtSrc
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [15]
    Left = 440
    Top = 80
    Width = 105
    Height = 21
    DataField = 'ICMS_SUBST_IND'
    DataSource = DtSrc
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [16]
    Left = 552
    Top = 80
    Width = 105
    Height = 21
    DataField = 'ICMS'
    DataSource = DtSrc
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [17]
    Left = 664
    Top = 80
    Width = 105
    Height = 21
    DataField = 'ICMS_BASE'
    DataSource = DtSrc
    TabOrder = 9
  end
  object DBGrid1: TDBGrid [18]
    Left = 8
    Top = 112
    Width = 753
    Height = 345
    DataSource = DtSrc
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'Cod. Produto'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST'
        Title.Caption = 'Substitui'#231#227'o Fiscal'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IC'
        Title.Caption = 'Substitui'#231#227'o Fiscal IC'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IND'
        Title.Caption = 'Substitui'#231#227'o Fiscal IND'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_BASE'
        Title.Caption = 'ICMS Base'
        Width = 68
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = ClientDataSet1
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select cfp.*, p.codpro from CLASSIFICACAOFISCALPRODUTO cfp'#13#10'inne' +
      'r join PRODUTOS p on p.codproduto = cfp.COD_PROD where cfp.cod_p' +
      'rod = :pcodpro'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodpro'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 440
    Top = 8
    object SQLDataSet1COD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
    end
    object SQLDataSet1CFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object SQLDataSet1UF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1ICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object SQLDataSet1ICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object SQLDataSet1ICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object SQLDataSet1ICMS: TFloatField
      FieldName = 'ICMS'
    end
    object SQLDataSet1ICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object SQLDataSet1CODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodpro'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 512
    Top = 8
    object ClientDataSet1COD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
    end
    object ClientDataSet1CFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object ClientDataSet1UF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object ClientDataSet1ICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object ClientDataSet1ICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object ClientDataSet1ICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object ClientDataSet1ICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ClientDataSet1ICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object ClientDataSet1CODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 480
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 544
    Top = 8
  end
end
