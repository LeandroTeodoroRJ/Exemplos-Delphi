unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, sqldblib, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, StdCtrls, DBGrids, ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    btCarregar: TButton;
    btAvancar: TButton;
    btRetroceder: TButton;
    btPrimeiro: TButton;
    btInserir: TButton;
    btAlterar: TButton;
    btDeletar: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    edtNome: TEdit;
    edtIdade: TEdit;
    btUltimo: TToggleBox;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure btAlterarClick(Sender: TObject);
    procedure btAvancarClick(Sender: TObject);
    procedure btCarregarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btRetrocederClick(Sender: TObject);
    procedure btUltimoChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btCarregarClick(Sender: TObject);
begin
  ZQuery1.SQL.Clear;                      //Atualiza os dados
  ZQuery1.SQL.Add('SELECT * FROM pessoa');
  ZQuery1.Open;

  edtNome.Text:=ZQuery1.FieldByName('nome').AsString;
  edtIdade.Text:=ZQuery1.FieldByName('idade').AsString;
end;

procedure TForm1.btDeletarClick(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM pessoa WHERE nome = :noum');
  ZQuery1.ParamByName('noum').AsString:=edtNome.Text;
  ZQuery1.ExecSQL();

  //Refresh
  ZQuery1.SQL.Clear;                      //Atualiza os dados
  ZQuery1.SQL.Add('SELECT * FROM pessoa');
  ZQuery1.Open;
end;

procedure TForm1.btInserirClick(Sender: TObject);
//https://www.devmedia.com.br/forum/sql-parameter-not-found/296459
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('INSERT INTO pessoa VALUES (:noum, :idd)');
  ZQuery1.ParamByName('idd').AsInteger:=strtoint(edtIdade.Text);
  ZQuery1.ParamByName('noum').AsString:=edtNome.Text;
  ZQuery1.ExecSQL();

  //Após uma alteração um refresh é necessário no Query
  ZQuery1.SQL.Clear;                      //Atualiza os dados
  ZQuery1.SQL.Add('SELECT * FROM pessoa');
  ZQuery1.Open;
//OBS: O SQL não inseri os registros por ordem de inclusão, fazendo o
//remanejamento das linhas de forma automática. Caso queira ordenar dessa
//forma é interessante incluir um campo ID ou Data-Hora.
//INSERT INTO [nome_tabela](col1, col2,...colN) VALUES(valor_col1, valor_col2,... valor_colN);
end;

procedure TForm1.btPrimeiroClick(Sender: TObject);
begin
  ZQuery1.First;
  edtNome.Text:=ZQuery1.FieldByName('nome').AsString;
  edtIdade.Text:=ZQuery1.FieldByName('idade').AsString;
end;

procedure TForm1.btRetrocederClick(Sender: TObject);
begin
  ZQuery1.Prior;
  edtNome.Text:=ZQuery1.FieldByName('nome').AsString;
  edtIdade.Text:=ZQuery1.FieldByName('idade').AsString;

end;

procedure TForm1.btUltimoChange(Sender: TObject);
begin
   ZQuery1.Last;
   edtNome.Text:=ZQuery1.FieldByName('nome').AsString;
   edtIdade.Text:=ZQuery1.FieldByName('idade').AsString;
end;

procedure TForm1.btAvancarClick(Sender: TObject);
begin
   ZQuery1.Next;
   edtNome.Text:=ZQuery1.FieldByName('nome').AsString;
   edtIdade.Text:=ZQuery1.FieldByName('idade').AsString;

end;

procedure TForm1.btAlterarClick(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('UPDATE pessoa SET idade = :idd WHERE nome = :noum');
  ZQuery1.ParamByName('idd').AsInteger:=strtoint(edtIdade.Text);
  ZQuery1.ParamByName('noum').AsString:=edtNome.Text;
  ZQuery1.ExecSQL();

  //Refresh
  ZQuery1.SQL.Clear;                      //Atualiza os dados
  ZQuery1.SQL.Add('SELECT * FROM pessoa');
  ZQuery1.Open;
end;

end.

