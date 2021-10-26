unit uetiquetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxCurrencyEdit, cxLabel, cxTextEdit, cxMemo,
  Vcl.Menus, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxButtons, frxDesgn, frxClass,
  cxClasses, cxPropertiesStore, frxBarcode;

type
  TImprimeEtiquetas = class(TForm)
    cxdescrip: TcxMemo;
    cxLabel1: TcxLabel;
    cxcodigo: TcxTextEdit;
    cxLabel4: TcxLabel;
    reporte: TfrxReport;
    frxDesigner1: TfrxDesigner;
    Imprime: TcxButton;
    Diseño: TcxButton;
    propiedades: TcxPropertiesStore;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure FormShow(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure DiseñoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImprimeEtiquetas: TImprimeEtiquetas;


implementation

{$R *.dfm}

procedure TImprimeEtiquetas.DiseñoClick(Sender: TObject);
begin

  reporte.DesignReport(true);
  reporte.SaveToFile('etiqueta.fr3');
end;

procedure TImprimeEtiquetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     propiedades.StoreTo;
end;

procedure TImprimeEtiquetas.FormShow(Sender: TObject);
begin
  propiedades.RestoreFrom;

end;

procedure TImprimeEtiquetas.ImprimeClick(Sender: TObject);
begin

   reporte.LoadFromFile('etiqueta.fr3');

   reporte.Variables.Variables['descripcion']:=QuotedStr(cxdescrip.Text);
   reporte.variables.variables['codigo']:=QuotedStr(cxcodigo.text);

   reporte.PreviewOptions.ZoomMode:=zmWholePage;
   reporte.ShowReport(True);


end;

end.
