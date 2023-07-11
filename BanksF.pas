unit BanksF;
//форма сведений о банках
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask,DB;

type
  TBanksInfo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Banks_Nav: TDBNavigator;
    ESearch: TEdit;
    Search_Btn: TButton;
    Cancel_Btn: TButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure Cancel_BtnClick(Sender: TObject);
    procedure Search_BtnClick(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BanksInfo: TBanksInfo;

implementation
uses data;
{$R *.dfm}








procedure TBanksInfo.Cancel_BtnClick(Sender: TObject);
begin
close;
end;


procedure TBanksInfo.Search_BtnClick(Sender: TObject);   //поиск по названию банка

begin

  datamodule1.BanksQ.locate('Name_B',ESearch.Text,[loPartialKey,loCaseInsensitive]) ;
end;

end.
