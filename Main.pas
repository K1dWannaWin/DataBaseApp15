unit Main;
 //основная форма
interface

uses
        Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
        System.Classes, Vcl.Graphics,
        Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
        Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,FireDAC.Comp.UI,
  FireDAC.UI.Intf, FireDAC.VCLUI.Login, FireDAC.Stan.Intf;

type
        TForm1 = class(TForm)
    Clients_btn: TButton;
    Warehouse_Btn: TButton;
    Purchase_Invoice_Btn: TButton;
    Providers_Btn: TButton;
    Banks_Btn: TButton;
    Sales_invoice_Btn: TButton;
    Quit: TButton;
    procedure Banks_BtnClick(Sender: TObject);
    procedure Clients_btnClick(Sender: TObject);
    procedure QuitClick(Sender: TObject);
    procedure Providers_BtnClick(Sender: TObject);
    procedure Purchase_Invoice_BtnClick(Sender: TObject);
    procedure Warehouse_BtnClick(Sender: TObject);
    procedure Sales_invoice_BtnClick(Sender: TObject);
        private
                { Private declarations }
        public
                { Public declarations }
        end;

var
        Form1: TForm1;

implementation

uses Data,BanksF,ClientsF,ProvidersF,Purchase_invoiceF,WarehouseF,Sales_InvoiceF;
{$R *.dfm}
           //кнопки навигации между формами
procedure TForm1.Banks_BtnClick(Sender: TObject);
begin
  BanksInfo:=TBanksInfo.Create(Application);
  BanksInfo.ShowModal;
  BanksInfo.Free;
end;

procedure TForm1.Clients_btnClick(Sender: TObject);
begin
  Clients:=TClients.Create(Application);
  Clients.ShowModal;
  Clients.Free;
end;

procedure TForm1.Providers_BtnClick(Sender: TObject);
begin
Providers:=TProviders.Create(Application);
Providers.ShowModal;
Providers.Free;
end;

procedure TForm1.Purchase_Invoice_BtnClick(Sender: TObject);
begin
  Purchase_Invoice:=TPurchase_invoice.Create(Application);
  Purchase_invoice.ShowModal;
  Purchase_Invoice.Free;
end;

procedure TForm1.QuitClick(Sender: TObject);
begin
close;
end;

procedure TForm1.Sales_invoice_BtnClick(Sender: TObject);
begin
  Sales_Invoice:=TSales_Invoice.Create(Application);
  sales_invoice.ShowModal;
  Sales_Invoice.Free;
end;

procedure TForm1.Warehouse_BtnClick(Sender: TObject);
begin
           Warehouse:=TWarehouse.Create(Application);
           warehouse.ShowModal;
           warehouse.Free;
end;

end.
