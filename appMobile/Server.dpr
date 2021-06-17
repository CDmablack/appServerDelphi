program Server;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.Jhonson,
   Horse.HandleException,
  System.SysUtils,
  Controller.ControllerUser in 'src\controller\Controller.ControllerUser.pas',
  Services.SeviceUser in 'src\sevices\Services.SeviceUser.pas' {ServiceUser: TDataModule};

begin
  THorse
        .Use(Jhonson)
        .Use(HandleException);

  Controller.ControllerUser.Registry;

  THorse.Listen;
end.
