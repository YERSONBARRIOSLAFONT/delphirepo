unit firstProject_basicCalculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    EdNumero1: TEdit;
    Label1: TLabel;
    EdNumero2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    lbRespuesta: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure restringirEnteros(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var
a,b : Integer;
c : Integer;
begin
  a := StrToInt(EdNumero1.Text);
  b := StrToInt(EdNumero2.Text);

  c := a + b;

  lbRespuesta.Caption  := 'Suma =' + IntToStr(c);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Width:=260;
Height:=230;
position:=poScreenCenter;

end;

procedure TForm1.restringirEnteros(Sender: TObject; var Key: Char);
begin
   if not(key in ['0'..'9',#8]) then  key := #0;

end;

end.
