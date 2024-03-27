unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.ComCtrls, Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Clientes1: TMenuItem;
    Clientes2: TMenuItem;
    Cidades1: TMenuItem;
    N1: TMenuItem;
    Estoque1: TMenuItem;
    Estoque2: TMenuItem;
    Entrada1: TMenuItem;
    Sada1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Clientes3: TMenuItem;
    Fornecedores1: TMenuItem;
    Fornecedores2: TMenuItem;
    Sada2: TMenuItem;
    N4: TMenuItem;
    Sair2: TMenuItem;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses USobre, UClientes, UEstoque, UFornecedores;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject); // Botão CLIENTES.
var clientes:TfrmClientes; // Variável Criada Manualmente para chamar a classe.
begin
    clientes:=TfrmClientes.create(self);
    clientes.ShowModal;
end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject); // Botão FORNECEDORES
var fornecedores:TfrmFornecedores; // Variável Criada Manualmente para chamar a classe.
begin
    fornecedores:=TfrmFornecedores.create(self);
    fornecedores.ShowModal;
end;

procedure TfrmPrincipal.BitBtn4Click(Sender: TObject); // Botão ESTOQUE.
var estoque:TfrmEstoque; // Variável Criada Manualmente para chamar a classe.
begin
    estoque:=TfrmEstoque.create(self);
    estoque.ShowModal;
end;

procedure TfrmPrincipal.BitBtn6Click(Sender: TObject); // Botão SOBRE.
var sobre:TfrmSobre; // Variável Criada Manualmente para chamar a classe.
begin
    sobre:=Tfrmsobre.create(self);
    sobre.ShowModal;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
      statusbar1.Panels[2].Text:='Hora: ' + TimeToStr(time); // TimeToStr - Deixar compátivel com string.
      statusbar1.Panels[3].Text:='Data: ' + DateToStr(date); // DateToStr - Deixar compátivel com string.
end;

end.
