unit WarehouseF;
//форма склада
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TWarehouse = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Quit: TButton;
    DateL: TLabel;
    SalesNM: TFDQuery;
    DeleteQ: TFDQuery;
    SalesNMID: TFDAutoIncField;
    SalesNMClients_Code_Pokup: TIntegerField;
    SalesNMData_Pokup: TDateField;
    SalesNMID_PS: TIntegerField;
    SalesNMSales_Invoice_ID: TIntegerField;
    SalesNMGoods_ID: TIntegerField;
    SalesNMKol_P: TBCDField;
    PurchNM: TFDQuery;
    PurchNMID_PI: TFDAutoIncField;
    PurchNMProviders_Code_Post: TIntegerField;
    PurchNMData_Post: TDateField;
    PurchNMStatus: TDateField;
    PurchNMID_PS: TIntegerField;
    PurchNMPurchase_Invoice_ID: TIntegerField;
    PurchNMGoods_ID: TIntegerField;
    PurchNMKol_P: TBCDField;
    PurchNMPCena: TBCDField;
    SalesNMStatus: TDateField;
    procedure QuitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Warehouse: TWarehouse;

implementation
uses data;

{$R *.dfm}

procedure TWarehouse.Button1Click(Sender: TObject);  //кнопка перерасчета на начало мес€ца
 //функци€ находит и удал€ет оплаченные накладные сроком больше мес€ца
// ол-во проданного и купленного товара суммируютс€ в остатке на складе
var   i,id:integer; //индексы, дл€ цикла и дл€ указател€ на нужную накладную дл€ удалени€
begin
// диалог подтверждени€
if MessageDlg('”далить оплаченные накладные и внести товары на склад? ',mtConfirmation,[mbOK,mbCancel],0)=1 then begin
i:=0;
PurchNM.First;
SalesNM.First;
id:=0;
//посчитаем расходы и приходы по оплаченным накладным и отправим запрос в базу данных

while i<=salesNM.RecordCount do   begin
  i:=i+1;


  while (SalesNMStatus.AsDateTime+30<date) and (i<=salesNM.recordcount) and (SalesNMStatus.AsDateTime<>0) do  begin
  // Ќайдем id расходной котора€ зашла в цикл, чтобы удалить из базы данных
  if  id<> SalesNMID.AsInteger then begin
  DeleteQ.SQL.Text:='Delete from payment_list where sales_invoice_id=:id';
  DeleteQ.ParamByName('id').AsInteger:=SalesNMID.AsInteger;
  deleteQ.ExecSQL;
  DeleteQ.SQL.Text:='Delete from sales_invoice_goods where sales_invoice_id=:id';
  deleteQ.ExecSQL;
  DeleteQ.SQL.Text:='Delete from sales_invoice where id=:id';
  deleteQ.ExecSQL;
  showmessage ('”далена расходна€ накладна€ є '+SalesNMID.AsString);

  end;

  DeleteQ.SQL.Text:='UPDATE `mydb`.`goods` SET `Ostatok` = `Ostatok`-:kol WHERE (`ID_G` = :id_g);';
        deleteq.ParamByName('Id_G').AsInteger :=SalesNM.fieldbyname('goods_id').asinteger;
        deleteq.ParamByName('Kol').asfloat :=SalesNM.fieldbyname('Kol_P').asfloat;
        deleteq.ExecSQL;
           id:=SalesNMID.AsInteger;
         salesNM.next;
         i:=i+1;

  end;
   id:=SalesNMID.AsInteger;
  salesNM.Next;

end;
i:=0;
id:=0;
while i<=Purchnm.RecordCount do   begin
  i:=i+1;
  while (PurchNMStatus.AsDateTime+30<date) and (i<=PurchNM.recordcount)and (PurchNMStatus.AsDateTime<>0) do begin
    // Ќайдем id расходной котора€ зашла в цикл, чтобы удалить из базы данных
    if id<>PurchNMID_PI.AsInteger then begin
    DeleteQ.SQL.Text:='Delete from purchase_invoice_goods where purchase_invoice_id=:id';
       DeleteQ.ParamByName('id').AsInteger:=PurchNMID_PI.AsInteger;
       deleteQ.ExecSQL;
       DeleteQ.SQL.Text:='Delete from purchase_invoice where id_pi=:id';
       deleteQ.ExecSQL;
       showmessage ('”далена приходна€ накладна€ є '+PurchNMID_PI.AsString);
    end;
     DeleteQ.SQL.Text:='UPDATE `mydb`.`goods` SET `Ostatok` = `Ostatok`+:kol WHERE (`ID_G` = :id_g);';
      deleteq.ParamByName('Id_G').AsInteger :=PurchNM.fieldbyname('goods_id').asinteger;
        deleteq.ParamByName('Kol').asfloat :=PurchNM.fieldbyname('Kol_P').asfloat;
               deleteq.ExecSQL;
               id:=PurchNMID_PI.AsInteger;
               PurchNM.Next;
                 i:=i+1;


    end;
     id:=PurchNMID_PI.AsInteger;
  PurchNM.Next;

  end;
  datamodule1.warehouse.Refresh;
end;
end;
procedure TWarehouse.FormActivate(Sender: TObject);
begin
datamodule1.warehouse.Refresh;
end;

procedure TWarehouse.FormCreate(Sender: TObject);
begin
DateL.Caption:=FormatDateTime('текуща€ дата: dd.mm.yyyy',Date-3);

end;

procedure TWarehouse.QuitClick(Sender: TObject);
begin
close;
end;

end.
