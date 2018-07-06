unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MMSystem, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btPlay: TButton;
    btStop: TButton;
    procedure btPlayClick(Sender: TObject);
    procedure btStopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btPlayClick(Sender: TObject);
begin
  sndPlaySound('C:\DADOS\Informatica\Info_projetos\Exemplos Delphi\Alarme_Sonoro\colalarm.wav',
      SND_NODEFAULT Or SND_ASYNC Or SND_LOOP);
end;

procedure TForm1.btStopClick(Sender: TObject);
begin
  sndPlaySound(nil, 0);
end;

end.
