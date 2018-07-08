unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Memo;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    btLinhas: TButton;
    btGravar: TButton;
    btReceber: TButton;
    btLinha: TButton;
    btPaste: TButton;
    procedure btLinhasClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btReceberClick(Sender: TObject);
    procedure btLinhaClick(Sender: TObject);
    procedure btPasteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}



procedure TForm1.btGravarClick(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(GetCurrentDir+System.SysUtils.PathDelim+'Arquivo.Txt');
end;

procedure TForm1.btLinhaClick(Sender: TObject);
begin
  btLinha.Text:= Memo1.Lines.Strings[0]; //Linha 1
end;

procedure TForm1.btLinhasClick(Sender: TObject);
begin
 Memo1.Lines.Add('Linha Inserida');
end;



procedure TForm1.btReceberClick(Sender: TObject);
begin
  btReceber.Text:= Memo1.Lines.Text;
end;

procedure TForm1.btPasteClick(Sender: TObject);
begin
  btPaste.Text:= Memo1.SelText;
end;

end.

{
Outras dicas:
1. Quebra de linha: alterar a propriedade WantReturns para True.
2. Evitar que o usuário altere os dados: alterar a sua propriedade ReadOnly para true.

}