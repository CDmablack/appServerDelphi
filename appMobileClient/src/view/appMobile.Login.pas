unit appMobile.Login;

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
  FMX.Layouts,
  Style.Login,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.TabControl,
  FMX.Edit,
  service.users;

type
  TfrmLogin = class(TForm)
    TabControl: TTabControl;
    TabLogin: TTabItem;
    TabCadastro: TTabItem;
    LyButtom: TLayout;
    RcButtom: TRectangle;
    LyTop: TLayout;
    RcTop: TRectangle;
    LbTitle: TLabel;
    Image1: TImage;
    LyBody: TLayout;
    LyCenter: TLayout;
    RcBody: TRectangle;
    LyTopBody: TLayout;
    LyEdtLogin: TLayout;
    RcEdtLogin: TRectangle;
    RcLineEdtLogin: TRectangle;
    EdtLogin: TEdit;
    LyEdtSenha: TLayout;
    RcEdtSenha: TRectangle;
    RcLineEdtSenha: TRectangle;
    EdtSenha: TEdit;
    LyBtnEntrar: TLayout;
    RcBtnEntrar: TRectangle;
    procedure FormShow(Sender: TObject);
    procedure RcBtnEntrarTap(Sender: TObject; const Point: TPointF);
    procedure RcBtnEntrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FService : TDMService;
    procedure Login(const AId: string);
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  appMobile.Menu;

{$R *.fmx}

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  FService := TDMService.Create(Self);
end;

procedure TfrmLogin.FormDestroy(Sender: TObject);
begin
  FService.Free;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
var
  Styles   : TStyleLogin;
begin
  //  Rectangle Background...
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

  with RcBtnEntrar do
  begin
    Fill.Color           := Styles.LyTopAndButtom;
  end;

  with RcLineEdtLogin do
  begin
    Fill.Color           := Styles.LyTopAndButtom;
  end;

  with RcLineEdtSenha do
  begin
    Fill.Color           := Styles.LyTopAndButtom;
  end;

  with RcEdtSenha do
  begin
    Fill.Color           := Styles.RcBackground;
  end;

  with RcEdtLogin do
  begin
    Fill.Color           := Styles.RcBackground;
  end;

  //  Style Labe Title...
  with LbTitle do
  begin
    Text       :=  Styles.LbTitleTextLogin;
    FontColor  :=  Styles.LbColor;
    Font.Size  :=  Styles.LbFontSize;
    Height     :=  Styles.LbHeightSize;
    Width      :=    Styles.LbWidthSize;
  end;
  //  Border Radious edts...
  with RcBtnEntrar do
  begin
    XRadius := Styles.RcBorderRadius;
    YRadius := Styles.RcBorderRadius;
  end;

  with RcEdtSenha do
  begin
    XRadius := Styles.RcBorderRadius;
    YRadius := Styles.RcBorderRadius;
  end;

  with RcEdtLogin do
  begin
    XRadius := Styles.RcBorderRadius;
    YRadius := Styles.RcBorderRadius;
  end;
  //  Margem Line...
  with RcLineEdtLogin do
  begin
    Margins.Left  := Styles.RcLineLeftAndRight;
    Margins.Right := Styles.RcLineLeftAndRight;
  end;

  with RcLineEdtSenha do
  begin
    Margins.Left  := Styles.RcLineLeftAndRight;
    Margins.Right := Styles.RcLineLeftAndRight;
  end;
  // Edts...
  with EdtLogin do
  begin
    Margins.Left           := Styles.RcLineLeftAndRight;
    Margins.Right          := Styles.RcLineLeftAndRight;
    Margins.Top            := Styles.EdtMargem;
    TextPrompt             := Styles.EdtTextPromptLogin;
    TextSettings.FontColor := Styles.EdiTextColor;
  end;

  with EdtSenha do
  begin
    Margins.Left  := Styles.RcLineLeftAndRight;
    Margins.Right := Styles.RcLineLeftAndRight;
    Margins.Top   := Styles.EdtMargem;
    TextPrompt    := Styles.EdtTextPromptSenha;
  end;
end;

procedure TfrmLogin.Login(const AId: string);
begin
  FService.GetByUser(AId);
end;

procedure TfrmLogin.RcBtnEntrarClick(Sender: TObject);
begin
  Login;
  frmMenu.Show;
end;

procedure TfrmLogin.RcBtnEntrarTap(Sender: TObject; const Point: TPointF);
begin
  frmMenu.Show;
end;

end.
