//------------------------------------------------------------------------------
// <autogenerated>
//     This Oxygene source code was generated by a tool.
//     Runtime Version: 4.0.30319.34014
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </autogenerated>
//------------------------------------------------------------------------------

{$HIDE H7}
{$HIDE W1}
{$HIDE W27}
{$HIDE H11}

namespace SampleServer;

interface

uses
  System,
  RemObjects.SDK,
  RemObjects.SDK.Server,
  RemObjects.SDK.Types;
  
type
  [RemObjects.SDK.Server.Invoker]
  [System.Reflection.ObfuscationAttribute(Exclude := true)]
  BusinessLogicService_Invoker = public class(RemObjects.SDK.Server.Invoker)
  public 
    constructor;
    class method Invoke_Process(__Instance: RemObjects.SDK.IROService; __Message: RemObjects.SDK.IMessage; __ServerChannelInfo: RemObjects.SDK.Server.IServerChannelInfo; out __oResponseOptions: RemObjects.SDK.Server.ResponseOptions);
    class method Invoke_Reverse(__Instance: RemObjects.SDK.IROService; __Message: RemObjects.SDK.IMessage; __ServerChannelInfo: RemObjects.SDK.Server.IServerChannelInfo; out __oResponseOptions: RemObjects.SDK.Server.ResponseOptions);
  end;
  
  [RemObjects.SDK.Activator]
  [System.Reflection.ObfuscationAttribute(Exclude := true, ApplyToMembers := false)]
  BusinessLogicService_Activator = public class(RemObjects.SDK.Server.ServiceActivator)
  public 
    constructor;
    method CreateInstance: RemObjects.SDK.IROService; override;
  end;
  
implementation

{ BusinessLogicService_Invoker }

constructor BusinessLogicService_Invoker;
begin
  inherited constructor();
end;

class method BusinessLogicService_Invoker.Invoke_Process(__Instance: RemObjects.SDK.IROService; __Message: RemObjects.SDK.IMessage; __ServerChannelInfo: RemObjects.SDK.Server.IServerChannelInfo; out __oResponseOptions: RemObjects.SDK.Server.ResponseOptions);
var
  &Result: System.Int32;
begin
  var Value: System.String := __Message.ReadUtf8String('Value');
  &Result := (__Instance as IBusinessLogicService).Process(Value);
  __Message.InitializeResponseMessage(__ServerChannelInfo, 'BusinessLogicLibrary', 'BusinessLogicService', 'ProcessResponse');
  __Message.WriteInt32('Result', &Result);
  __Message.FinalizeMessage();
  __oResponseOptions := RemObjects.SDK.Server.ResponseOptions.roDefault;
end;

class method BusinessLogicService_Invoker.Invoke_Reverse(__Instance: RemObjects.SDK.IROService; __Message: RemObjects.SDK.IMessage; __ServerChannelInfo: RemObjects.SDK.Server.IServerChannelInfo; out __oResponseOptions: RemObjects.SDK.Server.ResponseOptions);
var
  &Result: System.String;
begin
  var Value: System.String := __Message.ReadWideString('Value');
  &Result := (__Instance as IBusinessLogicService).Reverse(Value);
  __Message.InitializeResponseMessage(__ServerChannelInfo, 'BusinessLogicLibrary', 'BusinessLogicService', 'ReverseResponse');
  __Message.WriteWideString('Result', &Result);
  __Message.FinalizeMessage();
  __oResponseOptions := RemObjects.SDK.Server.ResponseOptions.roDefault;
end;

{ BusinessLogicService_Activator }

constructor BusinessLogicService_Activator;
begin
  inherited constructor();
end;

method BusinessLogicService_Activator.CreateInstance: RemObjects.SDK.IROService;
begin
  exit(new BusinessLogicService());
end;

end.
