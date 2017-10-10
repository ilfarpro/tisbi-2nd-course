unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TCalc }

  TCalc = class(TForm)
    ButtonCalculate: TButton;
    ButtonClose: TButton;
    a: TEdit;
    b: TEdit;
    c: TEdit;
    Heading: TLabel;
    equation1: TLabel;
    equation2: TLabel;
    equation3: TLabel;
    x1: TLabel;
    MainPanel: TPanel;
    x2: TLabel;
    procedure aChange(Sender: TObject);
    procedure bChange(Sender: TObject);
    procedure ButtonCalculateClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure cChange(Sender: TObject);
    procedure equation1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Calc: TCalc;
  first_coef,second_coef,third_coef:Real;
  result:string;

implementation

{$R *.lfm}

{ TCalc }

procedure TCalc.equation1Click(Sender: TObject);
begin

end;

procedure TCalc.aChange(Sender: TObject);
begin
  If a.Text='' then a.Text:='1';
  first_coef:=StrToFloat(a.Text);
end;

procedure TCalc.bChange(Sender: TObject);
begin
  If b.Text='' then a.Text:='1';
  second_coef:=StrToFloat(b.Text);
end;

procedure TCalc.ButtonCalculateClick(Sender: TObject);
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
   D:=second_coef*second_coef-4*first_coef*third_coef;
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

procedure TCalc.ButtonCloseClick(Sender: TObject);
begin
  close;
end;

procedure TCalc.cChange(Sender: TObject);
begin
  If c.Text='' then a.Text:='1';
  third_coef:=StrToFloat(c.Text);
end;

end.
