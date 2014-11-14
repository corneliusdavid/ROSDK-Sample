namespace BusinessLogic;

interface

uses
  System;

type
  StringProcessor = public class
  private
  protected
  public
    method Process(Value: String): Int32;
    method Reverse(Value: String): String;
  end;
  
implementation

method StringProcessor.Process(Value: String): Integer;
begin
  if Value.Length = 0 then
    result := -1
  else
    result := (Value + 'secret salt').GetHashCode;
end;

method StringProcessor.Reverse(Value: String): String;
begin
  result := '';
  for each ch in Value do
    result  := ch + result;
end;

end.
