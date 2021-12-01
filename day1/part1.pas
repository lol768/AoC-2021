program DayOne;
{$mode Delphi}
uses sysutils;
var
  inp: TextFile;
  text: string;
  lastNumber: integer;
  thisNumber: integer;
  numIncreases: integer = 0;
begin
  AssignFile(inp, 'input.txt');
  reset(inp);
  lastNumber := -1;
  while not Eof(inp) do
  begin
    ReadLn(inp, text);
    WriteLn(text);
    thisNumber := StrToInt(text);
    if ((lastNumber > 0) and (thisNumber > lastNumber)) then
    begin
       numIncreases := numIncreases + 1;
    end;
    lastNumber := thisNumber;
  end;
  WriteLn('Final value is');
  WriteLn(numIncreases);
end.
