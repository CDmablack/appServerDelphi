unit appMobile.Menu;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Layouts;

type
  TfrmMenu = class(TForm)
    LyButtom: TLayout;
    RcButtom: TRectangle;
    LyClient: TLayout;
    RcBody: TRectangle;
    LyTop: TLayout;
    RcTop: TRectangle;
    LbTitle: TLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses
  Style.Login;

{$R *.fmx}

procedure TfrmMenu.FormShow(Sender: TObject);
var
   Styles : TStyleLogin;
begin
     // Background...
  with RcTop do
  begin
    Fill.Color          := Styles.LyTopAndButtom;
  end;

  with RcButtom do
  begin
    Fill.Color          := Styles.LyTopAndButtom;
  end;

  with RcBody do
  begin
    Fill.Color          := Styles.LyBody;
  end;

  with LbTitle do
  begin
    Text       :=  Styles.LbTitleTextMenu;
    FontColor  :=  Styles.LbColor;
    Font.Size  :=  Styles.LbFontSize;
    Height     :=  Styles.LbHeightSize;
    Width      :=  Styles.LbWidthSize;
    Margins.Right := 20;
  end;
end;

end.
