unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Vcl.FileCtrl, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edHost: TEdit;
    Label2: TLabel;
    edUser: TEdit;
    Label3: TLabel;
    edPass: TEdit;
    btConectar: TButton;
    IdFTP: TIdFTP;
    Label4: TLabel;
    BindingsList1: TBindingsList;
    LinkControlToPropertyHost: TLinkControlToProperty;
    LinkControlToPropertyPassword: TLinkControlToProperty;
    LinkControlToPropertyUsername: TLinkControlToProperty;
    Label5: TLabel;
    edPath: TEdit;
    ListBox: TListBox;
    Label6: TLabel;
    btList: TButton;
    OpenDialog: TOpenDialog;
    btEnviar: TButton;
    btReceber: TButton;
    DirectoryListBox: TDirectoryListBox;
    Label7: TLabel;
    procedure btConectarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btListClick(Sender: TObject);
    procedure btEnviarClick(Sender: TObject);
    procedure btReceberClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btConectarClick(Sender: TObject);
begin
  if (IdFTP.Connected = false) then
  begin
    IdFTP.Connect;
  end;

end;

procedure TForm1.btEnviarClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    IdFTP.ChangeDir(edPath.Text);
    IdFTP.Put(OpenDialog.FileName,'',false);
    IdFTP.List(ListBox.Items,edPath.Text,false);
  end;

end;

procedure TForm1.btListClick(Sender: TObject);
begin
  IdFTP.List(ListBox.Items,edPath.Text,false);
end;

procedure TForm1.btReceberClick(Sender: TObject);
begin
    IdFTP.ChangeDir(edPath.Text);
    IdFTP.Get(listbox.items[listbox.ItemIndex], DirectoryListBox.Directory+'\'+listbox.items[listbox.ItemIndex], true, false);
    IdFTP.List(ListBox.Items,edPath.Text,false);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IdFTP.Disconnect;
end;

end.
