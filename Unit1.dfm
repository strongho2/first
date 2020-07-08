object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 338
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object cxProgressBar1: TcxProgressBar
    Left = 0
    Top = 317
    Align = alBottom
    ParentColor = False
    ParentFont = False
    Position = 85.000000000000000000
    Properties.BarStyle = cxbsAnimation
    Properties.BeginColor = clSkyBlue
    Properties.EndColor = clFuchsia
    Properties.OverloadValue = 40.000000000000000000
    Properties.PeakSize = 10
    Properties.PeakValue = 85.000000000000000000
    Properties.ShowOverload = True
    Style.BorderStyle = ebsUltraFlat
    Style.Color = clBtnFace
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.Shadow = False
    Style.IsFontAssigned = True
    StyleHot.BorderColor = clWindowFrame
    StyleHot.Color = clBtnFace
    StyleHot.TextStyle = []
    TabOrder = 0
    Width = 704
  end
  object Button1: TButton
    Left = 568
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 568
    Top = 72
    Width = 121
    Height = 24
    TabOrder = 2
    Text = '40'
  end
  object cxGrid1: TcxGrid
    Left = 96
    Top = 39
    Width = 450
    Height = 200
    TabOrder = 3
    LockedStateImageOptions.AssignedValues = [lsiavColor]
    LookAndFeel.NativeStyle = True
    object cxGrid1TableView2: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      FindPanel.DisplayMode = fpdmManual
      OnCustomDrawCell = cxGrid1TableView2CustomDrawCell
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      OptionsView.RowSeparatorColor = clCaptionText
      object cxGrid1TableView2Column1: TcxGridColumn
        Caption = #1048#1084#1103
      end
      object cxGrid1TableView2Column2: TcxGridColumn
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 79
      end
      object cxGrid1TableView2Column3: TcxGridColumn
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object cxGrid1TableView2Column4: TcxGridColumn
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Width = 84
      end
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'cxGrid1Level2'
      GridView = cxGrid1TableView2
    end
  end
  object Button2: TButton
    Left = 528
    Top = 272
    Width = 129
    Height = 25
    Caption = #1042' '#1094#1080#1082#1083#1077' '#1087#1086' '#1089#1090#1088#1086#1082#1072#1084
    TabOrder = 4
    OnClick = Button2Click
  end
end
