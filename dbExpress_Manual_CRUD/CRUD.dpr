program CRUD;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  DataModule in 'DataModule.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
