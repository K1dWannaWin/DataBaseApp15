unit Data;
 //модуль данных
interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.DBXPool, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.FMTBcd,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  FireDAC.Phys.SQLiteVDataSet,Messages, FireDAC.VCLUI.Login, FireDAC.Comp.UI;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    BanksQ: TFDQuery;
    BanksDS: TDataSource;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    BanksQID_B: TFDAutoIncField;
    BanksQName_B: TWideStringField;
    BanksQAdr_B: TWideStringField;
    ClientsDS: TDataSource;
    ProvidersQ: TFDQuery;
    ProvidersDS: TDataSource;
    ClientsQ: TFDQuery;
    ClientsQCode_Pokup: TFDAutoIncField;
    ClientsQName_Pokup: TWideStringField;
    ClientsQFIO_Pokup: TWideStringField;
    ClientsQTel_Pokup: TWideStringField;
    ClientsQAdr_Pokup: TWideStringField;
    ClientsQS_Pokup: TWideStringField;
    ClientsQBanks_ID_B: TIntegerField;
    ClientsQID_B: TIntegerField;
    ClientsQName_B: TWideStringField;
    ClientsQAdr_B: TWideStringField;
    ProvidersQCode_Post: TFDAutoIncField;
    ProvidersQName_Post: TWideStringField;
    ProvidersQFIO_Post: TWideStringField;
    ProvidersQTel_Post: TWideStringField;
    ProvidersQAdr_Post: TWideStringField;
    ProvidersQS_Post: TWideStringField;
    ProvidersQBanks_ID_B: TIntegerField;
    ProvidersQID_B: TIntegerField;
    ProvidersQName_B: TWideStringField;
    ProvidersQAdr_B: TWideStringField;
    PInv: TFDQuery;
    PinvDS: TDataSource;
    PInvg: TFDQuery;
    PInvGDS: TDataSource;
    FDQuery1: TFDQuery;
    PInvsum: TCurrencyField;
    FDQuery1sum: TFMTBCDField;
    PInvId_pi: TFDAutoIncField;
    PInvdata_post: TDateField;
    PInvstatus: TDateField;
    PInvgID_G: TFDAutoIncField;
    PInvgArticul: TWideStringField;
    PInvgNazv_T: TWideStringField;
    PInvgID_PS: TIntegerField;
    PInvgPurchase_Invoice_ID: TIntegerField;
    PInvgKol_P: TBCDField;
    PInvgPCena: TBCDField;
    PInvgsum: TCurrencyField;
    PList: TFDQuery;
    PListDS: TDataSource;
    PInvproviders_code_post: TIntegerField;
    PInvname_post: TWideStringField;
    WarehouseDS: TDataSource;
    Warehouse: TFDQuery;
    WarehouseID_G: TFDAutoIncField;
    WarehouseArticul: TWideStringField;
    WarehouseNazv_T: TWideStringField;
    WarehouseCena: TBCDField;
    WarehouseEd_Izm: TWideStringField;
    WarehouseOstatok: TBCDField;
    rashet2: TFDQuery;
    Rashet1: TFDQuery;
    Rashet1Goods_ID: TIntegerField;
    Rashet1Data_Post: TDateField;
    Rashet1Status: TDateField;
    WarehouseSumP: TCurrencyField;
    WarehouseSumS: TCurrencyField;
    WarehouseKolP: TFloatField;
    WarehouseKolS: TFloatField;
    rashet2kol_p: TFMTBCDField;
    WarehouseOstNM: TFloatField;
    WarehouseCenaNM: TCurrencyField;
    rashet2goods_id: TIntegerField;
    Rashet1kol_p: TFMTBCDField;
    Rashet1PCena: TFMTBCDField;
    DeleteQ: TFDQuery;
    SInv: TFDQuery;
    SInvDS: TDataSource;
    SinvG: TFDQuery;
    SinvGDS: TDataSource;
    SInvId: TFDAutoIncField;
    SInvdata_pokup: TDateField;
    SInvcode_pokup: TIntegerField;
    SInvname_pokup: TWideStringField;
    SinvGNazv_T: TWideStringField;
    SinvGsales_invoice_id: TIntegerField;
    SinvGgoods_id: TIntegerField;
    SinvGkol_p: TBCDField;
    SinvGcena: TBCDField;
    SISum: TFDQuery;
    PListID_PL: TFDAutoIncField;
    PListSales_Invoice_ID: TIntegerField;
    PListSum_Pl: TBCDField;
    PListData_Pl: TDateField;
    SInvSum: TCurrencyField;
    SinvGsum: TCurrencyField;
    SInvSumPl: TCurrencyField;
    SInvOstatok: TCurrencyField;
    ApplyStatus: TFDQuery;
    rashet2status: TDateField;
    procedure PInvCalcFields(DataSet: TDataSet);
    procedure PInvgCalcFields(DataSet: TDataSet);
    procedure PinvDSDataChange(Sender: TObject; Field: TField);
    procedure PInvBeforeRefresh(DataSet: TDataSet);
    procedure WarehouseCalcFields(DataSet: TDataSet);
    procedure WarehouseBeforeRefresh(DataSet: TDataSet);
    procedure SInvDSDataChange(Sender: TObject; Field: TField);
    procedure SInvBeforeRefresh(DataSet: TDataSet);
    procedure SinvGCalcFields(DataSet: TDataSet);
    procedure SInvCalcFields(DataSet: TDataSet);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;



implementation
     uses WarehouseF;
{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}







procedure TDataModule1.PInvBeforeRefresh(DataSet: TDataSet);
begin
// перед обновлением данных необходимо установить указатель на первый элемент избегая некорректных результатов
FDQuery1.Refresh;
datamodule1.PInv.first;
datamodule1.FDQuery1.first;
end;

procedure TDataModule1.PInvCalcFields(DataSet: TDataSet);
//функция устанавливает значение полной стоимости накладной через дополнительный sql запрос
begin
PInvsum.AsCurrency:=FDQuery1sum.AsCurrency;
FDquery1.Next;
end;

procedure TDataModule1.PinvDSDataChange(Sender: TObject; Field: TField);
begin
//функция позволяет нам перемещаться на нужную накладную в таблице купленных продуктов

  pinvg.Close;
  PInvg.SQL.Text:='select * from goods join purchase_invoice_goods on goods_id=id_G and purchase_invoice_id =:p';
  Pinvg.ParamByName('p').AsInteger :=DataModule1.Pinv.fieldbyname('id_pi').asinteger;
  PInvg.Open();
end;

procedure TDataModule1.PInvgCalcFields(DataSet: TDataSet);
begin
PInvgsum.AsCurrency:=PInvgKol_P.AsCurrency*PInvgPCena.AsCurrency;
end;

procedure TDataModule1.SInvBeforeRefresh(DataSet: TDataSet);
begin
// перед обновлением данных необходимо установить указатель на первый элемент избегая некорректных результатов
SInv.First;
PList.First;
end;

procedure TDataModule1.SInvCalcFields(DataSet: TDataSet);
var i:integer;
begin
i:=0;
sinvg.First;
Plist.First;
SInvG.Close;
//выполняем sql запросы чтобы найти товары и оплату по накладной
SInvg.SQL.Text:='select cena,Nazv_T,sales_invoice_id,goods_id,kol_p from goods join sales_invoice_goods on goods_id=id_G and sales_invoice_id =:p ';
SInvG.ParamByName('p').AsInteger :=SinV.fieldbyname('id').asinteger;
SinvG.Open();
PList.SQL.Text:='select * from payment_list where sales_invoice_id=:p;';
PList.ParamByName('p').AsInteger :=SinV.fieldbyname('id').asinteger;
PList.Open();
//проходим циклом и считаем сумму по накладной
   while i<Sinvg.RecordCount do begin
    SInvSum.AsCurrency:=SInvSum.AsCurrency+SInvGSum.AsCurrency;
   i:=i+1;
   sinvg.Next;
   end;
   i:=0;
//проходим циклом и считаем сумму по платежам накладной
     while i<PList.RecordCount do begin
    SInvSumPl.AsCurrency:=SInvSumPl.AsCurrency+PListSum_Pl.AsCurrency;
   i:=i+1;
   Plist.Next;
   end;
//находим остаток по платежам накладной
SInvOstatok.AsCurrency:=SInvSum.AsCurrency-SInvSumPl.AsCurrency;
//если накладная оплачена отправим в базу данных дату последнего платежа чтобы пересчитать на новый месяц
if SInvOstatok.AsCurrency<=0 then  begin
ApplyStatus.SQL.Text:='UPDATE `mydb`.`sales_invoice` SET `Status` = :d WHERE `ID` = :id ;';
applyStatus.ParamByName('d').AsDate:=PListData_Pl.AsDateTime;
applystatus.ParamByName('id').AsInteger:=PListSales_Invoice_ID.AsInteger;
applystatus.ExecSQL;
end;


end;

procedure TDataModule1.SInvDSDataChange(Sender: TObject; Field: TField);
begin
//функция позволяет нам перемещаться на нужную накладную в таблице проданных продуктов и внесенной оплаты по накладным
SInvG.Close;
SInvg.SQL.Text:='select cena,Nazv_T,sales_invoice_id,goods_id,kol_p from goods join sales_invoice_goods on goods_id=id_G and sales_invoice_id =:p ';
SInvG.ParamByName('p').AsInteger :=SinV.fieldbyname('id').asinteger;
SinvG.Open();
PList.Close;
PList.SQL.Text:='select * from payment_list where sales_invoice_id=:p;';
PList.ParamByName('p').AsInteger :=SinV.fieldbyname('id').asinteger;
PList.Open();

end;

procedure TDataModule1.SinvGCalcFields(DataSet: TDataSet);
begin
//функция подсчета стоимости товаров в каждой расходной накладной
warehouse.First;
  while true  do begin
    if WarehouseID_G.AsInteger=SinvGgoods_id.AsInteger then  begin
      SinvGsum.AsCurrency:=WarehouseCena.AsCurrency*SinvGkol_p.AsCurrency;
      break;
    end;
    warehouse.next;
  end;
end;

procedure TDataModule1.WarehouseBeforeRefresh(DataSet: TDataSet);
// перед обновлением данных необходимо установить указатель на первый элемент избегая некорректных результатов
begin
rashet1.Refresh;
rashet2.Refresh;
warehouse.First;
rashet2.First;
 rashet1.First;

end;

procedure TDataModule1.WarehouseCalcFields(DataSet: TDataSet);
var i:integer;
//считаем поля расхода/прихода с помощью дополнительных sql запросов
//составляем запросы к приходным и расходным накладным
//сортируем по id наименований на складе
//цена на продажу указана в таблице склада и остается только перемножить цену с приходом
//цена на покупку указана в каждой накладной поэтому в sql запросе находим сумму и вставляем ее по id

begin
i:=0;
rashet2.First;
rashet1.First;
while i<Rashet2.RecordCount do   begin

   if  (rashet2goods_id.AsInteger=WarehouseID_G.Asinteger)  then    begin
        WarehouseSumS.AsCurrency:=Rashet2Kol_P.AsCurrency*WarehouseCena.AsCurrency;
        warehouseKolS.AsFloat:=Rashet2Kol_P.AsFloat;

    end;
    rashet2.Next;
    i:=i+1;
end;
i:=0;
while i<Rashet1.RecordCount do   begin
  if (rashet1goods_id.AsInteger=WarehouseID_G.Asinteger) then begin
              WarehouseKolP.AsFloat:=rashet1Kol_P.AsFloat;
                 WarehouseSumP.AsCurrency:=Rashet1PCena.AsCurrency;

  end;
  rashet1.Next;
  i:=i+1;
end;
   warehouseOstNM.AsFloat:=WarehouseKolP.AsFloat-WarehouseKolS.AsFloat;
   warehouseCenaNM.ascurrency:=WarehouseSumS.AsCurrency-warehouseSumP.AsCurrency;

end;


end.
