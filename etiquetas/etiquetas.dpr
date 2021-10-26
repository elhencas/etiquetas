program etiquetas;

uses
  Vcl.Forms,
  uetiquetas in 'uetiquetas.pas' {ImprimeEtiquetas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Etiquetas';
  Application.CreateForm(TImprimeEtiquetas, ImprimeEtiquetas);
  Application.Run;
end.
