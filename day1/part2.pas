program DayOnePartTwo;
{$mode Delphi}
uses sysutils;
var
  inp: TextFile;
  text: string;
  thisNumber: integer;
  lastNumber: integer = 0;
  i: integer = 0;
  j: integer;
  sum1: integer;
  sum2: integer;
  countLarger: integer = 0;
  numbers: array[0..1999] of integer;
  sums: array[0..1999] of integer;
begin
  AssignFile(inp, 'input.txt');
  reset(inp);
  
  while not Eof(inp) do
  begin
    ReadLn(inp, text);
    thisNumber := StrToInt(text);
    numbers[i] := thisNumber;
    i += 1;
  end;
  for j := 0 to 1000 do
  begin
    sum1 := numbers[j*2] + numbers[j*2+1] + numbers[j*2+2];
    sum2 := numbers[j*2+1] + numbers[j*2+2] + numbers[j*2+3];
    sums[j*2] := sum1;
    sums[j*2+1] := sum2;
    WriteLn(sum1);
    WriteLn(sum2);
  end;
  for j := 0 to 1999 do
  begin
    thisNumber := sums[j];
    if ((lastNumber > 0) and (thisNumber > lastNumber) and (thisNumber > 0)) then
    begin
       countLarger := countLarger + 1;
    end;
    lastNumber := thisNumber;
  end;
  WriteLn('');
  WriteLn(countLarger);
end.
