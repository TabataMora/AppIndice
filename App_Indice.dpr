program App_Indice;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmRequisito in 'uFrmRequisito.pas' {frmRequisito},
  uFrmResultado in 'uFrmResultado.pas' {frmResultado},
  uDadosPessoa in 'uDadosPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmRequisito, frmRequisito);
  Application.CreateForm(TfrmResultado, frmResultado);
  Application.Run;
end.
