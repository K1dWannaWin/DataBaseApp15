unit Purchase_InvoiceF;
           // форма приходных накладных
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope,printers;

type
  TPurchase_invoice = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Quit: TButton;
    PrintDialog1: TPrintDialog;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure QuitClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Purchase_invoice: TPurchase_invoice;

implementation
uses data,PPaymentf,Purchase_Invoice_AddF;
{$R *.dfm}

procedure TPurchase_invoice.Button1Click(Sender: TObject);
begin
 PPayment:=TPPayment.Create(Application);
 PPayment.ShowModal;
 PPayment.free;
end;

procedure TPurchase_invoice.Button2Click(Sender: TObject);
begin
PrintDialog1.Execute();
 print;
end;

procedure TPurchase_invoice.Button3Click(Sender: TObject);
begin
Purchase_Invoice_Add:=TPurchase_Invoice_Add.Create(Application);
purchase_invoice_add.ShowModal;
purchase_invoice_add.Free;
end;

//установка навигаторов на нужную таблицу
procedure TPurchase_invoice.DBGrid1ColEnter(Sender: TObject);
begin
DBNavigator1.DataSource:=DataModule1.PInvDs;
end;

procedure TPurchase_invoice.DBGrid2ColEnter(Sender: TObject);
begin
     DBNavigator1.DataSource:=DataModule1.PInvgDs;
end;

procedure TPurchase_invoice.FormDestroy(Sender: TObject);
begin
DataModule1.PInv.Refresh;
end;

procedure TPurchase_invoice.QuitClick(Sender: TObject);
begin
close;
end;
end.
