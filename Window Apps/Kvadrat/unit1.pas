unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    a: TEdit;
    b: TEdit;
    c: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    x1: TLabel;
    Panel1: TPanel;
    x2: TLabel;
    procedure aChange(Sender: TObject);
    procedure bChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cChange(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  first_coef,second_coef,third_coef:Real;
  result:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.aChange(Sender: TObject);
begin
  If a.Text='' then a.Text:='1';
  first_coef:=StrToFloat(a.Text);
end;

procedure TForm1.bChange(Sender: TObject);
begin
  If a.Text='' then a.Text:='1';
  second_coef:=StrToFloat(a.Text);
end;

procedure TForm1.Button1Click(Sender: TObject);
Var D, X, result1,result2 : Real;
Begin
If first_coef=0 Then
   If second_coef=0 Then
              If third_coef=0 Then ShowMessage('X - любое число')
                  Else ShowMessage('Корней нет! --')
        Else
        Begin
        X:=-third_coef/second_coef;
        x1.Caption:=FloatToStr(X);
        x2.Caption:='';
        End
   Else
   Begin
   D:=(second_coef*second_coef)-4*first_coef*third_coef;
   If D<0 Then ShowMessage('Корней нет! ++')
      Else
      Begin
      result1:=(-second_coef+SQRT(D))/2/first_coef;
      result2:=(-second_coef-SQRT(D))/2/first_coef;
      x1.Caption:=FloatToStr(result1);
      x2.Caption:=FloatToStr(result2);
      End;
   End;
End;

procedure TForm1.cChange(Sender: TObject);
begin
  If a.Text='' then a.Text:='1';
  third_coef:=StrToFloat(a.Text);
end;

end.

