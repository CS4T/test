program L7;
uses SysUtils;
const CRLF=#13;
function Chomp(s: string): string;
var
  Length_s: Integer;
begin
  result:='';
  Length_s:=Length(s);
  if (Length_s>length(CRLF))
     and  (RightStr(s,length(CRLF))=CRLF) then
  begin
     result:=LeftStr(s,Length_s-length(CRLF));
  end;
end;
var s:string;
begin
  s:='simple string' +#13;
  writeLn('',Chomp(s));
  readln
end.
