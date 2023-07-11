program DataBaseApp;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  Data in 'Data.pas' {DataModule1: TDataModule},
  BanksF in 'BanksF.pas' {BanksInfo},
  ClientsF in 'ClientsF.pas' {Clients},
  ProvidersF in 'ProvidersF.pas' {Providers},
  Purchase_InvoiceF in 'Purchase_InvoiceF.pas' {Purchase_invoice},
  PPaymentf in 'PPaymentf.pas',
  WarehouseF in 'WarehouseF.pas' {Warehouse},
  Sales_InvoiceF in 'Sales_InvoiceF.pas' {Sales_Invoice},
  SPaymentF in 'SPaymentF.pas' {SPayment},
  Purchase_Invoice_AddF in 'Purchase_Invoice_AddF.pas' {Purchase_Invoice_Add},
  Sales_Invoice_AddF in 'Sales_Invoice_AddF.pas' {Sales_Invoice_Add};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TBanksInfo, BanksInfo);
  Application.CreateForm(TClients, Clients);
  Application.CreateForm(TProviders, Providers);
  Application.CreateForm(TPurchase_invoice, Purchase_invoice);
  Application.CreateForm(TWarehouse, Warehouse);
  Application.CreateForm(TSales_Invoice, Sales_Invoice);
  Application.CreateForm(TSPayment, SPayment);
  Application.CreateForm(TPurchase_Invoice_Add, Purchase_Invoice_Add);
  Application.CreateForm(TSales_Invoice_Add, Sales_Invoice_Add);
  Application.Run;

end.
