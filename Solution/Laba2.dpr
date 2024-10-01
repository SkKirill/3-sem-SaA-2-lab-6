program Laba2;
{$APPTYPE CONSOLE}

uses
  Stack;

const
  FILE_IN = 'test_file.txt';
  FILE_OUT = 'out_file.txt';

type
  TFile = TextFile;

procedure ReadFile(var pFile: TFile; var pStack: TStack);
var
  current: TElem;
begin
  while not Eof(pFile) do
    begin
      Readln(pFile, current);
      StackPush(pStack, current);
    end;
end;

procedure WriteFile(var pFile: TFile; var pStack: TStack);
var
  current: TElem;
begin
  while not StackIsEmpty(pStack) do
    begin
      current := StackPop(pStack);
      Writeln(pFile, current);
    end;
end;

var
  S: TStack;
  F: TFile;

begin
  AssignFile(F, FILE_IN);
  Reset(F);

  StackInit(S);
  ReadFile(F, S);
  CloseFile(F);

  AssignFile(F, FILE_OUT);
  Rewrite(F);

  WriteFile(F, S);
  CloseFile(F);
  Readln;
end.
