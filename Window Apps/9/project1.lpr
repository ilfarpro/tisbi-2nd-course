program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces,
  Forms, Unit1, circle, p_circle, figures, ellipse, container, list;

{$R *.res}

begin
  Application.Title:='Универсальный контейнер  на '
    +'основе списка';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

