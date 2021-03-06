unit service.users;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  DataSet.Serialize;

type
  TDMService = class(TDataModule)
    FDMQryUsers: TFDMemTable;
    FDMQryUsersCOD_USER: TIntegerField;
    FDMQryUsersNOME_USER: TStringField;
    FDMQryUsersLOGIN_USER: TStringField;
    FDMQryUsersSENHA_USER: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetByUser(const AId: string);
  end;

var
  DMService : TDMService;
implementation

uses
  RESTRequest4D,
  appMobile.Login;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDMService.GetByUser(const AId: string);
var
  LResponse : IResponse;
begin
  LResponse := TRequest.New
    .BaseURL('http://localhost:9000')
    .Resource('users')
    .ResourceSuffix(AId)
    .DataSetAdapter(FDMQryUsers)
    .Get;
  if not (LResponse.StatusCode = 200) then
    raise Exception.Create(LResponse.JSONValue.GetValue<string>('error'));

end;

end.
