unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    Label1: TLabel;
    Label2: TLabel;
    StyleBook: TStyleBook;
    procedure ListBox1ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.ListBox1ItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
    case ListBox1.ItemIndex of
    0:
    showmessage('Evento do Item 1');
    1:
    showmessage('Evento do Item 2');
    2:
    showmessage('Evento do Item 3');
    3:
    showmessage('Evento do Item 4');
    4:
    showmessage('Evento do Item 5');
    5:
    showmessage('Evento do Item 6');
    6:
    showmessage('Evento do Item 7');
    7:
    showmessage('Evento do Item 8');
    8:
    showmessage('Evento do Item 9');
    9:
    showmessage('Evento do Item 10');
    10:
    showmessage('Evento do Item 11');
    11:
    showmessage('Evento do Item 12');
    12:
    showmessage('Evento do Item 13');
    13:
    showmessage('Evento do Item 14');
    14:
    showmessage('Evento do Item 15');
    15:
    showmessage('Evento do Item 16');
  end;
end;

end.

{
OBS:
Na propriedade StyleBook do form apontar para o componente StyleBook.
Caminho para os Estilos no Xe6
C:\Program Files (x86)\Embarcadero\Studio\14.0\Redist\styles\Fmx
}
