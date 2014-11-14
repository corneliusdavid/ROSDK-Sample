namespace SampleClient;

interface

uses
  System.Linq;

type
  ConsoleApp = class
  public
    class method Main(args: array of String);
  end;

implementation

class method ConsoleApp.Main(args: array of String);
var
  value: String;
  hash: Int32;
  url: String;
begin
  Console.Write('Enter IP Address to connect: ');
  url := Console.ReadLine;

  // connect to the service
  var service: SampleServer.IBusinessLogicService := new SampleServer.BusinessLogicService_Proxy('http://' + url + ':8099/bin');

  // hash
  Console.Write('Enter string to hash: ');
  value := Console.ReadLine();
  Console.WriteLine();
  Console.WriteLine('Processing...');

  hash := service.Process(value);

  Console.WriteLine;
  Console.WriteLine('String entered: {0}', value);
  Console.WriteLine('String hash: {0}', hash);
  Console.WriteLine('Press ENTER to continue...');
  Console.ReadLine;
  Console.WriteLine;
  Console.WriteLine;

  // reverse
  Console.Write('Enter string to reverse: ');
  value := Console.ReadLine();
  Console.WriteLine();
  Console.WriteLine('Processing...');
  Console.WriteLine('String entered: {0}', value);
  Console.WriteLine('String reversed: {0}', service.Reverse(value));
  Console.WriteLine('Press ENTER to continue...');
  Console.ReadLine;
end;

end.
