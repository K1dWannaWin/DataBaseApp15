unit PPaymentf;
//форма оплаты приходной накладной
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.ExtCtrls;

type
  TPPayment = class(TForm)
    Label1: TLabel;
    ID: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Quit: TButton;
    EDate: TEdit;
    StatusQ: TFDQuery;
    name: TDBComboBox;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure QuitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PPayment: TPPayment;

implementation
uses data;
{$R *.dfm}


procedure TPPayment.Button1Click(Sender: TObject);
begin
// создаем sql запрос по введенным пользователем данным
 statusQ.sql.text:=' UPDATE `mydb`.`purchase_invoice` SET `Status` = :date WHERE (`ID_PI` = :id) and (`providers_code_post`=:Code_Post) ;';
 statusQ.ParamByName('date').AsDate :=StrToDate(EDate.text);
 statusQ.ParamByName('id').AsInteger :=StrToInt(Id.Keyvalue);
 statusQ.ParamByName('Code_Post').AsInteger :=StrToInt(name.text);
 statusq.ExecSQL;
 ShowMessage('Оплата внесена');
 close;

end;

procedure TPPayment.FormCreate(Sender: TObject);
begin
DataModule1.PInvDS.AutoEdit:=true;

end;

procedure TPPayment.FormDestroy(Sender: TObject);
begin
datamodule1.PInv.first;
datamodule1.FDQuery1.first;
datamodule1.PInv.Refresh;
DataModule1.PInvDS.AutoEdit:=false;
end;

procedure TPPayment.FormShow(Sender: TObject);
begin
EDate.Text:=DateToStr(date);
end;

procedure TPPayment.QuitClick(Sender: TObject);
begin
close;
end;

end.
