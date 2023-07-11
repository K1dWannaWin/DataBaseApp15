unit ClientsF;
// форма покупателей
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask,db;

type
  TClients = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    ESearch: TEdit;
    Search_Btn: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Cancel_Btn: TButton;
    procedure Search_BtnClick(Sender: TObject);
    procedure Cancel_BtnClick(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Clients: TClients;

implementation
uses data;
{$R *.dfm}

procedure TClients.Cancel_BtnClick(Sender: TObject);
begin
close;
end;

procedure TClients.Search_BtnClick(Sender: TObject);     //поиск по названию фирмы покупателя
begin
datamodule1.ClientsQ.locate('Name_Pokup',ESearch.Text,[loPartialKey,loCaseInsensitive]) ;
end;

end.
