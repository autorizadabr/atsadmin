unit uEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, StdCtrls, DBCtrls, ExtCtrls, Mask, DB, DBClient,
  Provider, SqlExpr, Menus, XPMenu, Buttons, MMJPanel,jpeg, JvExExtCtrls,
  JvImage, ExtDlgs, JvExControls, JvLabel;

type
  TfEmpresa = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Label8: TLabel;
    Label21: TLabel;
    DBEdit6: TDBEdit;
    DBEdit18: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel3: TPanel;
    Image1: TJvImage;
    Label22: TLabel;
    ComboBox1: TComboBox;
    JvLabel1: TJvLabel;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmpresa: TfEmpresa;

implementation

uses UDm, uEmpresaProcura, sCtrlResize;

{$R *.dfm}

procedure TfEmpresa.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fEmpresaProcura := TfEmpresaProcura.Create(Application);
  try
   fEmpresaProcura.ShowModal;
  finally
   fEmpresaProcura.Free;
  end;
end;

procedure TfEmpresa.FormShow(Sender: TObject);
VAR S     : TStream;
    Imagem : TJPEGImage;
    var conta_local: String;
begin
//  inherited;
  sCtrlResize.CtrlResize(TForm(fEmpresa));
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;

  if (DM.cds_empresaLOGOTIPO.Value <> '') then
    begin
      S :=   DM.cds_empresa.CreateBlobStream(DM.cds_empresaLOGOTIPO,bmread);
      Imagem    := TJPEGImage.Create;
      Imagem.LoadFromStream(S);
      Image1.Picture.Assign(Imagem);
    end
  else
    Image1.Picture := nil ;

    //Vejo quais s�o as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;

    // populo a combobox Centro de Custo
    if dm.cds_ccusto.Active then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := conta_local;
    dm.cds_ccusto.Open;
    DM.cds_ccusto.First;
    while not DM.cds_ccusto.Eof do
    begin
      ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
      DM.cds_ccusto.Next;
    end;


end;

procedure TfEmpresa.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfEmpresa.btnIncluirClick(Sender: TObject);
begin
  DBEdit2.SetFocus;
  inherited;

end;

procedure TfEmpresa.BitBtn2Click(Sender: TObject);
begin
  inherited;
     if DM.cds_empresa.State in [dsbrowse] then
      DM.cds_empresa.Edit;
     DM.cds_empresaLOGOTIPO.Clear;
     DM.cds_empresa.ApplyUpdates(0);
end;

procedure TfEmpresa.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if OpenPictureDialog1.Execute
   then Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);

  if (DM.cds_empresa.State = dsbrowse) then
  begin
     DM.cds_empresa.Edit;
  end;
  DM.cds_empresaLOGOTIPO.LoadFromFile(OpenPictureDialog1.FileName);
  DM.cds_empresa.ApplyUpdates(0);

  {
    if OpenDialog1.Execute then
    begin
     if DM.cds_empresa.State in [dsbrowse] then
      DM.cds_empresa.Edit;
      DM.cds_empresaLOGOTIPO.LoadFromFile(OpenDialog1.FileName);
    end;
 }
end;

procedure TfEmpresa.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TfEmpresa.btnGravarClick(Sender: TObject);
begin

   if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
   dm.cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
       DM.cds_empresaCCusto.asInteger := dm.cds_ccustoCODIGO.AsInteger;
  inherited;

end;

end.
