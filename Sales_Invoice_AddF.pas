unit Sales_Invoice_AddF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TSales_Invoice_Add = class(TForm)
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Quit: TButton;
    Label1: TLabel;
    Label2: TLabel;
    FDQuery1ID: TFDAutoIncField;
    FDQuery1Clients_Code_Pokup: TIntegerField;
    FDQuery1Data_Pokup: TDateField;
    FDQuery1Status: TDateField;
    FDQuery2ID_PS: TFDAutoIncField;
    FDQuery2Sales_Invoice_ID: TIntegerField;
    FDQuery2Goods_ID: TIntegerField;
    FDQuery2Kol_P: TBCDField;
    procedure QuitClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sales_Invoice_Add: TSales_Invoice_Add;

implementation

{$R *.dfm}

procedure TSales_Invoice_Add.DBGrid1Enter(Sender: TObject);
begin
 DBNavigator1.DataSource:=DataSource1;
end;

procedure TSales_Invoice_Add.DBGrid2Enter(Sender: TObject);
begin
 DBNavigator1.DataSource:=DataSource2;
end;

procedure TSales_Invoice_Add.QuitClick(Sender: TObject);
begin
close;
end;

end.
