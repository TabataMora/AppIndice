unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFrmRequisito, uFrmResultado, uDadosPessoa;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    btnRequisito: TButton;
    edtPeso: TEdit;
    cmbSexo: TComboBox;
    edtAltura: TEdit;
    procedure btnRequisitoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnRequisitoClick(Sender: TObject);
begin
        frmRequisito.Show;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
        try
          P_Dados_Pessoa.Altura := StrToFloat(edtAltura.Text);
          P_Dados_Pessoa.Peso := StrToFloat(edtPeso.Text);
          P_Dados_Pessoa.Sexo := cmbSexo.Text;
          P_Dados_Pessoa.IMC := CalcularIMC(P_Dados_Pessoa.Peso,
                                            P_Dados_Pessoa.Altura,
                                            P_Dados_Pessoa.Sexo);

          frmResultado.ShowModal;
        except
          ShowMessage('Dados inválidos!');
        end;
end;

end.
