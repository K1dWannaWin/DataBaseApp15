unit Purchase_Invoice_AddF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls;

type
  TPurchase_Invoice_Add = class(TForm)
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDQuery1ID_PI: TFDAutoIncField;
    FDQuery1Providers_Code_Post: TIntegerField;
    FDQuery1Data_Post: TDateField;
    FDQuery1Status: TDateField;
    FDQuery2ID_PS: TFDAutoIncField;
    FDQuery2Purchase_Invoice_ID: TIntegerField;
    FDQuery2Goods_ID: TIntegerField;
    FDQuery2Kol_P: TBCDField;
    FDQuery2PCena: TBCDField;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Quit: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure QuitClick(Sender: TObject);
    procedure DBGrid2MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure DBGrid1MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Purchase_Invoice_Add: TPurchase_Invoice_Add;

implementation
 uses data;
{$R *.dfm}

procedure TPurchase_Invoice_Add.DBGrid1MouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
        DBNavigator1.DataSource:=DataSource1;
end;

procedure TPurchase_Invoice_Add.DBGrid2MouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  DBNavigator1.DataSource:=DataSource2;
end;

procedure TPurchase_Invoice_Add.QuitClick(Sender: TObject);
begin
close;
end;

end.
