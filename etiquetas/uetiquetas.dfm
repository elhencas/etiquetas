object ImprimeEtiquetas: TImprimeEtiquetas
  Left = 0
  Top = 0
  Caption = 'Imprime etiquetas'
  ClientHeight = 184
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxdescrip: TcxMemo
    Left = 24
    Top = 31
    TabOrder = 0
    Height = 46
    Width = 273
  end
  object cxLabel1: TcxLabel
    Left = 88
    Top = 8
    Caption = 'Descripci'#243'n'
  end
  object cxcodigo: TcxTextEdit
    Left = 25
    Top = 106
    TabOrder = 2
    Width = 272
  end
  object cxLabel4: TcxLabel
    Left = 100
    Top = 83
    Caption = 'Codigo'
  end
  object Imprime: TcxButton
    Left = 40
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Imprime'
    TabOrder = 4
    OnClick = ImprimeClick
  end
  object Diseño: TcxButton
    Left = 198
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Dise'#241'o'
    TabOrder = 5
    OnClick = DiseñoClick
  end
  object reporte: TfrxReport
    Version = '6.8.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44495.624730046290000000
    ReportOptions.LastChange = 44495.624730046290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 200
    Datasets = <>
    Variables = <
      item
        Name = ' texto'
        Value = Null
      end
      item
        Name = 'descripcion'
        Value = ''
      end
      item
        Name = 'codigo'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 30.000000000000000000
      PaperHeight = 20.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object BarCode1: TfrxBarCodeView
        AllowVectorExport = True
        Left = 17.228464420000000000
        Top = 31.835205990000000000
        Width = 80.000000000000000000
        Height = 41.369560110000000000
        BarType = bcCode128
        Expression = '<codigo>'
        Frame.Typ = []
        Rotation = 0
        ShowText = False
        TestLine = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ColorBar = clBlack
      end
      object descripcion: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 7.490636700000000000
        Top = 7.116104860000000000
        Width = 99.220317270000000000
        Height = 22.268436520000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[descripcion]')
        ParentFont = False
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 280
  end
  object propiedades: TcxPropertiesStore
    Components = <
      item
        Component = cxcodigo
        Properties.Strings = (
          'Text')
      end
      item
        Component = cxdescrip
        Properties.Strings = (
          'Lines')
      end>
    StorageName = 'propiedades'
    StorageType = stRegistry
    Left = 32
    Top = 16
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 120
    Top = 56
  end
end
