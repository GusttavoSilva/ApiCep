unit Interfaced.Connection;

interface

uses
  FireDAC.Comp.Client,
  FireDAC.Phys.SQLite;

type

  IConnectionFD = interface
    ['{87970A35-0A56-433B-92CB-1E163E8FCE59}']

    function ConnectDataBase(FConnection: TFDConnection; Driver: TFDPhysSQLiteDriverLink): Boolean;
  end;

implementation

end.
