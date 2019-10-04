unit uFrmResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDadosPessoa;

type
  TfrmResultado = class(TForm)
    lblAltura: TLabel;
    lblPeso: TLabel;
    lblSexo: TLabel;
    lblImc: TLabel;
    lblResAltura: TLabel;
    lblResPeso: TLabel;
    lblResSexo: TLabel;
    lblResImc: TLabel;
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResultado: TfrmResultado;

implementation

{$R *.dfm}


procedure TfrmResultado.FormShow(Sender: TObject);
begin
   lblResAltura.Caption := FloatToStr(P_Dados_Pessoa.Altura);
   lblResPeso.Caption := FloatToStr(P_Dados_Pessoa.Peso);
   lblResSexo.Caption := P_Dados_Pessoa.Sexo;
   lblResImc.Caption := P_Dados_Pessoa.IMC;
end;


Function AgoraSouDev(AgoraSouDev:string)  : string;
 begin

 Result := 'Agora Sou Dev';

end;
end.
