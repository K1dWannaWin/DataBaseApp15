unit ProvidersF;
      //форма поставщиков
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls,db;

type
  TProviders = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    ESearch: TEdit;
    Search_Btn: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Search_BtnClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Providers: TProviders;

implementation
uses data;
{$R *.dfm}

            //поиск по названию фирмы поставщика
procedure TProviders.Search_BtnClick(Sender: TObject);
begin
datamodule1.providersQ.locate('Name_Post',ESearch.Text,[loPartialKey,loCaseInsensitive]) ;
end;

end.
