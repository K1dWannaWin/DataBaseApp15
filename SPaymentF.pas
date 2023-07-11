unit SPaymentF;
//форма оплаты расхадной накладной
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls;

type
  TSPayment = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ID: TDBLookupComboBox;
    Button1: TButton;
    Quit: TButton;
    EDate: TEdit;
    name: TDBComboBox;
    DBEdit1: TDBEdit;
    PaymentQ: TFDQuery;
    Label4: TLabel;
    Sum: TEdit;
    procedure QuitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SPayment: TSPayment;


implementation
uses data,warehouseF;
{$R *.dfm}

procedure TSPayment.Button1Click(Sender: TObject);
// создаем sql запрос по введенным пользователем данным
begin
 PaymentQ.sql.text:='INSERT INTO `mydb`.`payment_list` (`Sales_Invoice_ID`, `Sum_Pl`, `Data_Pl`) VALUES (:id, :sum_Pl, :date); ';
 PaymentQ.ParamByName('date').AsDate :=StrToDate(EDate.text);
 PaymentQ.ParamByName('id').AsInteger :=StrToInt(Id.Keyvalue);
 PaymentQ.ParamByName('Sum_Pl').AsCurrency:=StrToCurr(Sum.text);
 PaymentQ.ExecSQL;
 ShowMessage('Оплата внесена');
 close;
end;

procedure TSPayment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DataModule1.SInv.Refresh;
Warehouse.SalesNM.Refresh;//обновим данные чтобы правильно пересчитать на новый месяц
end;

procedure TSPayment.FormShow(Sender: TObject);
begin
EDate.Text:=DateToStr(date);
end;

procedure TSPayment.QuitClick(Sender: TObject);
begin
close;
end;

end.
