unit Sales_InvoiceF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TSales_Invoice = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Quit: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    PrintDialog1: TPrintDialog;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QuitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sales_Invoice: TSales_Invoice;

implementation
uses data,SPaymentF,sales_invoice_addf;
{$R *.dfm}

procedure TSales_Invoice.Button1Click(Sender: TObject);
begin
SPayment:=TSPayment.Create(Application);
Spayment.ShowModal;
SPayment.Free;
end;

procedure TSales_Invoice.Button2Click(Sender: TObject);
begin
PrintDialog1.Execute();
print;
end;

procedure TSales_Invoice.Button3Click(Sender: TObject);
begin
Sales_Invoice_Add:=TSales_Invoice_Add.Create(Application);
Sales_Invoice_Add.ShowModal;
Sales_Invoice_Add.free;
end;

procedure TSales_Invoice.DBGrid1Enter(Sender: TObject);
begin
DBNavigator1.DataSource:=DataModule1.SInvDS;
end;

procedure TSales_Invoice.DBGrid2Enter(Sender: TObject);
begin
DBNavigator1.DataSource:=DataModule1.SInvGDS;
end;

procedure TSales_Invoice.DBGrid3Enter(Sender: TObject);
begin
DBNavigator1.DataSource:=DataModule1.PListDS;
end;

procedure TSales_Invoice.FormShow(Sender: TObject);
begin
DataModule1.SInv.Refresh;
end;

procedure TSales_Invoice.QuitClick(Sender: TObject);
begin
close;
end;

end.
