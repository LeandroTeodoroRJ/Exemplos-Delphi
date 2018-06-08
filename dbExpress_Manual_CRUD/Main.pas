unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModule, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors;

type
  TForm1 = class(TForm)
    btConnectar: TButton;
    btInserir: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edNome: TEdit;
    edCod: TEdit;
    edUltimo: TButton;
    Memo1: TMemo;
    btPrimeiro: TButton;
    btAlterar: TButton;
    btDeletar: TButton;
    procedure btConnectarClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure receber_dados();
    procedure atualizar();
    procedure edUltimoClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.atualizar;
begin
  with dm do
  begin
    Query.SQL.Clear;
    Query.SQL.Text:='SELECT * FROM cadastro';
    Query.Active:=true;
    Query.Open;
    ClientDataset.ApplyUpdates(0); //(aplica as modificações)
    ClientDataSet.Refresh;
  end;
end;

procedure TForm1.btAlterarClick(Sender: TObject);
begin
  dm.Query.SQL.Clear;
  dm.Query.SQL.Add('UPDATE cadastro SET nome = :noum WHERE codigo = :cod');
  dm.Query.ParamByName('cod').AsInteger:=strtoint(edCod.Text);
  dm.Query.ParamByName('noum').AsString:=edNome.Text;
  dm.Query.ExecSQL();
end;

procedure TForm1.btConnectarClick(Sender: TObject);
begin
  with dm do
  begin
      try
        Conn.Connected:=true;
        Query.SQL.Clear;
        Query.SQL.Text:='SELECT * FROM cadastro';
        Query.Active:=true;
        Query.Open;
        ClientDataSet.Active:=true;
        Showmessage('Conectado ao Banco.');
      except
        On E:Exception Do
        begin
          if (E.ClassName = 'EDatabaseError') then
          begin
            Showmessage('Conectado a um Banco vazio.');
          end
          else
          begin
            Showmessage('Não é possível se conectar ao Banco.');
          end;
        end;
      end;
  end;
end;

procedure TForm1.btDeletarClick(Sender: TObject);
begin
  dm.Query.SQL.Clear;
  dm.Query.SQL.Add('DELETE FROM cadastro WHERE codigo = :cod');
  dm.Query.ParamByName('cod').AsInteger:=strtoint(edCod.Text);
  dm.Query.ExecSQL();
end;

procedure TForm1.btInserirClick(Sender: TObject);
begin
  dm.Query.SQL.Clear;
  dm.Query.SQL.Add('INSERT INTO cadastro VALUES (:cod, :noum)');
  dm.Query.ParamByName('cod').AsInteger:=strtoint(edCod.Text);
  dm.Query.ParamByName('noum').AsString:=edNome.Text;
  dm.Query.ExecSQL();
//OBS: O SQL não inseri os registros por ordem de inclusão, fazendo o
//remanejamento das linhas de forma automática. Caso queira ordenar dessa
//forma é interessante incluir um campo ID ou Data-Hora.
end;

procedure TForm1.btPrimeiroClick(Sender: TObject);
begin
  atualizar();
  dm.ClientDataSet.Prior;
  receber_dados();
end;

procedure TForm1.edUltimoClick(Sender: TObject);
begin
  atualizar();
  dm.ClientDataSet.Last;
  receber_dados();
end;

procedure TForm1.receber_dados;
begin
    edCod.Text:=dm.ClientDataSet.FieldByName('codigo').AsString;
    edNome.Text:=dm.ClientDataSet.FieldByName('nome').AsString;
end;

end.
