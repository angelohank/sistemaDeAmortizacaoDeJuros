object FrmColetaDados: TFrmColetaDados
  Left = 146
  Top = 165
  Caption = 'Dados para a simula'#231#227'o'
  ClientHeight = 471
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 105
    Align = alTop
    Caption = 'Informe os dados para a simula'#231#227'o'
    Color = 6819149
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 105
    Width = 994
    Height = 366
    Align = alClient
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 37
      Width = 40
      Height = 16
      Caption = 'Capital'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 106
      Width = 97
      Height = 16
      Caption = 'Taxa de juros(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 176
      Width = 104
      Height = 16
      Caption = 'Meses para pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object fldCapital: TEdit
      Left = 48
      Top = 59
      Width = 257
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object fldTaxa: TEdit
      Left = 48
      Top = 128
      Width = 257
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object fldMeses: TEdit
      Left = 48
      Top = 198
      Width = 257
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
    object pnlBotao: TPanel
      Left = 88
      Top = 280
      Width = 185
      Height = 41
      Caption = 'Simular'
      Color = 6628350
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      object btnSimular: TSpeedButton
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        Flat = True
        OnClick = btnSimularClick
      end
    end
    object dbgDados: TDBGrid
      Left = 344
      Top = 91
      Width = 617
      Height = 190
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'parcela'
          Title.Alignment = taCenter
          Title.Caption = 'Parcela'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'juros'
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'amortizacaoSaldoDevedor'
          Title.Alignment = taCenter
          Title.Caption = 'Amortiza'#231#227'o Saldo Devedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'pagamento'
          Title.Alignment = taCenter
          Title.Caption = 'Pagamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'saldoDevedor'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo Devedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 128
          Visible = True
        end>
    end
    object pnlTituloGrid: TPanel
      Left = 344
      Top = 56
      Width = 617
      Height = 29
      Caption = 'Parcelas'
      Color = 6819149
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
    end
    object pnlTotais: TPanel
      Left = 344
      Top = 287
      Width = 617
      Height = 29
      Color = 6628350
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      object Label4: TLabel
        Left = 16
        Top = 5
        Width = 48
        Height = 18
        Caption = 'Totais:'
      end
      object lblTotalJuros: TLabel
        Left = 105
        Top = 5
        Width = 4
        Height = 18
      end
      object lblTotalCapital: TLabel
        Left = 224
        Top = 5
        Width = 4
        Height = 18
        Alignment = taCenter
        Transparent = True
      end
      object lblTotalPagamento: TLabel
        Left = 408
        Top = 5
        Width = 4
        Height = 18
        Alignment = taCenter
        Transparent = True
      end
    end
  end
end
