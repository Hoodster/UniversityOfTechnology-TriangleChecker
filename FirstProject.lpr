program FirstProject;

uses sysutils;

var
  inputs: array[1..3] of integer;

procedure Sort();
var
  index, secindex, temp : integer;
begin
  For index:= 2 DownTo 1 do
      For secindex := 2 to index do
          If (inputs[secindex-1] > inputs[secindex]) Then
          begin
               temp := inputs[secindex-1];
               inputs[secindex-1] := inputs[secindex];
               inputs[secindex] := temp;
            end;
end;

function TriangleChecker(): boolean;
begin
  If (inputs[1] + inputs[2] > inputs[3]) Then
     begin
       TriangleChecker := true;
     end
  Else
      begin
        TriangleChecker := false;
      end
end;

procedure SetValues();
begin
  inputs[1] := StrToInt(ParamStr(1));
  inputs[2] := StrToInt(ParamStr(2));
  inputs[3] := StrToInt(ParamStr(3));
end;

begin
  SetValues();
  Sort();

  if (TriangleChecker()) Then
     writeln('These numbers can create a triangle')
  else
      writeln('You cannot create a triangle with these numbers');
  readln;
end.

