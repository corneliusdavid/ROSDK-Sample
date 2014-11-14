namespace SampleServer;

interface

{$HIDE H7}

uses
  System.Windows.Forms,
  System.Drawing;

type
  MainForm = partial class
  {$REGION Windows Form Designer generated fields}
  private
  {$region designer-generated code}
    ipHttpServerChannel1: RemObjects.SDK.Server.IpHttpServerChannel;
  {$endregion}
    
    method InitializeComponent;
  {$ENDREGION}

    components: System.ComponentModel.IContainer;
    binMessage1: RemObjects.SDK.BinMessage;  end;

implementation

{$REGION Windows Form Designer generated code}
method MainForm.InitializeComponent;
begin
  self.components := new System.ComponentModel.Container();
  var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeOf(MainForm));
  self.ipHttpServerChannel1 := new RemObjects.SDK.Server.IpHttpServerChannel(self.components);
  self.binMessage1 := new RemObjects.SDK.BinMessage();
  (self.ipHttpServerChannel1 as System.ComponentModel.ISupportInitialize).BeginInit();
  self.SuspendLayout();
  //  ipHttpServerChannel1
  self.ipHttpServerChannel1.Dispatchers.&Add(new RemObjects.SDK.Server.MessageDispatcher('bin', self.binMessage1));
  self.ipHttpServerChannel1.HttpServer.Port := 8099;
  self.ipHttpServerChannel1.HttpServer.ServerName := 'RemObjects SDK for .NET HTTP Server';
  self.ipHttpServerChannel1.SendClientAccessPolicyXml := RemObjects.SDK.Server.ClientAccessPolicyType.AllowNone;
  self.ipHttpServerChannel1.SendCrossOriginHeader := false;
  //  binMessage1
  self.binMessage1.ContentType := 'application/octet-stream';
  self.binMessage1.SerializerInstance := nil;
  //  MainForm
  self.ClientSize := new System.Drawing.Size(292, 273);
  self.Icon := resources.GetObject('$this.Icon') as System.Drawing.Icon;
  self.Name := 'MainForm';
  self.StartPosition := System.Windows.Forms.FormStartPosition.CenterScreen;
  self.Text := 'sample server';
  (self.ipHttpServerChannel1 as System.ComponentModel.ISupportInitialize).EndInit();
  self.ResumeLayout(false);
end;
{$ENDREGION}

end.
