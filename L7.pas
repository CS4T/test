program L7;
uses SysUtils;
const CRLF=#13#10;
function Chomp(s: string): string;
var
  Length_s: Integer;
begin
  result:='';
  Length_s:=Length(s);
  if Length_s>1 then begin
     result:=LeftStr(s,Length_s-1);
  end;
end;
var s:string;
begin
  s:='simple string' +#13;
  writeLn('',Chomp(s));
  readln
end.
