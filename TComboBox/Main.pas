unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    ColorBox1: TColorBox;
    BindingsList1: TBindingsList;
    LinkControlToPropertyBrushColor: TLinkControlToProperty;
    Label3: TLabel;
    ColorBox2: TColorBox;
    LinkControlToPropertyFontColor: TLinkControlToProperty;
    Label4: TLabel;
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
 edit1.Text:=combobox1.items[combobox1.ItemIndex];

 edit2.Text:=inttostr(combobox1.ItemIndex);

end;

end.
