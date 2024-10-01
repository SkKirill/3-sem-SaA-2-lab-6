unit Stack;

interface
uses
  SysUtils;

type
  TElem = string;
  TStack = ^TElement;

  TElement = record
               Info: TElem;
               Next: TStack;
             end;

  procedure StackInit (var S: TStack);
  function StackIsEmpty(S: Tstack): boolean;
  procedure StackPush(var S: TStack; E: TElem);
  function StackPop(var S: TStack): TElem;

implementation

procedure StackInit (var S: TStack);
begin
  S := nil;
end;

function StackIsEmpty(S: Tstack): boolean;
begin
  Result := S = nil;
end;

procedure StackPush(var S: TStack; E: TElem);
var
  z: TStack;
begin
  new(z);
  z^.next := S;
  z^.Info := E;
  S := z;
end;

function StackPop(var S: TStack): TElem;
var
  z: TStack;
begin
  if not StackIsEmpty(S) then
    begin
      z := S;
      S := S^.Next;
      Result := z^.Info;
      dispose (z);
    end
  else
    Result := '';
end;

procedure WriteStack(S : TStack);
begin
  while S <> nil do
    begin
      Write(S^.info, ', ');
      S := S^.next;
    end;
  Writeln;
end;

end.
