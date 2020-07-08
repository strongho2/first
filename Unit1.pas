unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxProgressBar, Vcl.ComCtrls, dxtree,
  cxClasses, cxCustomData, cxStyles, cxCustomPivotGrid, cxPivotGrid, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxRadioGroup, cxGroupBox, cxMemo, cxTextEdit,
  cxVGrid, cxInplaceContainer;

type
  TForm1 = class(TForm)
    cxProgressBar1: TcxProgressBar;
    Button1: TButton;
    Edit1: TEdit;
    cxGrid1: TcxGrid;
    cxGrid1TableView2: TcxGridTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1TableView2Column1: TcxGridColumn;
    cxGrid1TableView2Column2: TcxGridColumn;
    cxGrid1TableView2Column3: TcxGridColumn;
    cxGrid1TableView2Column4: TcxGridColumn;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxGrid1TableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  cxProgressBar1.Position:= StrToInt(Edit1.Text);

  cxGrid1TableView2.DataController.BeginFullUpdate;
  try
    cxGrid1TableView2.DataController.RecordCount:= 3;

    cxGrid1TableView2.DataController.SetValue(0,0,'Василий');
    cxGrid1TableView2.DataController.SetValue(0,1,'Евгениевич');
    cxGrid1TableView2.DataController.SetValue(0,2,'Пушкин');
    cxGrid1TableView2.DataController.SetValue(0,3,'7');
    cxGrid1TableView2.DataController.SetValue(1,0,'Иван');
    cxGrid1TableView2.DataController.SetValue(1,1,'Сергеевич');
    cxGrid1TableView2.DataController.SetValue(1,2,'Проценко');
    cxGrid1TableView2.DataController.SetValue(1,3,'1');
    cxGrid1TableView2.DataController.SetValue(2,0,'Виктор');
    cxGrid1TableView2.DataController.SetValue(2,1,'Андреевич');
    cxGrid1TableView2.DataController.SetValue(2,2,'Глушко');
    cxGrid1TableView2.DataController.SetValue(2,3,'2');
  finally
    cxGrid1TableView2.DataController.EndFullUpdate;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, j: Integer;
begin
  for i:= 0 to cxGrid1TableView2.DataController.FilteredRecordCount - 1 do
  begin
    for j:= 0 to cxGrid1TableView2.ColumnCount - 1 do
      ShowMessage(cxGrid1TableView2.DataController.Values[i,j]);
  end;
end;

procedure TForm1.cxGrid1TableView2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[3] = '2') and (AViewInfo.Item = cxGrid1TableView2Column4) then
  begin
    ACanvas.Brush.Color:= clGreen;
    ACanvas.Font.Style:= [fsBold];
  end;
end;

end.
