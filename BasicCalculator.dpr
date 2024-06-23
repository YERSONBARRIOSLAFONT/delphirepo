program BasicCalculator;

uses
  Vcl.Forms,
  firstProject_basicCalculator in 'firstProject_basicCalculator.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
