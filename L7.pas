program L7;
uses SysUtils;
<<<<<<< HEAD
const CRLF=#13#10;
=======
const CRLF=#13#10;
>>>>>>> 3ff42f3d15375da557727c7837f1c611c997c310
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
