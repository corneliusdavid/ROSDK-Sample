namespace SampleServer;

interface

uses
  System.Drawing,
  System.Collections,
  System.Collections.Generic,
  System.Linq,
  System.Windows.Forms,
  System.ComponentModel;

type
  /// <summary>
  /// Summary description for MainForm.
  /// </summary>
  MainForm = partial class(System.Windows.Forms.Form)
  private
  protected
    method Dispose(disposing: Boolean); override;
  public
    constructor;
  end;

implementation

{$REGION Construction and Disposition}
constructor MainForm;
begin
  //
  // Required for Windows Form Designer support
  //
  InitializeComponent();

  //
  // TODO: Add any constructor code after InitializeComponent call
  //
  ipHttpServerChannel1.Open;
end;

method MainForm.Dispose(disposing: Boolean);
begin
  if disposing then begin
    if assigned(components) then
      components.Dispose();

    //
    // TODO: Add custom disposition code here
    //
  end;
  inherited Dispose(disposing);
end;
{$ENDREGION}

end.
