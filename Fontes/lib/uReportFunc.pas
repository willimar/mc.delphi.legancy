unit uReportFunc;

interface
uses
  Forms, RLSaveDialog, RLPreviewForm, RLHTMLFilter,
  RLFilters, RLDraftFilter, RLRichFilter, RLXLSFilter, RLPDFFilter,
  RLReport, ShellApi, Dialogs, SysUtils;

  procedure ExecutarReport(Report: TRLReport; Caption: String);
  procedure ImprimirReport(Report: TRLReport; Caption: String);
  procedure ImprimirParaArquivo(Report: TRLReport; Caption: String; SaveDialog: TOpenDialog);

implementation

procedure ExecutarReport(Report: TRLReport; Caption: String);
begin
  with Report do begin
    PreviewOptions.Caption := Caption;
    PreviewOptions.FormStyle := fsMDIChild;
    PreviewOptions.Position := poScreenCenter;
    PreviewOptions.ShowModal := false;
    PreviewOptions.WindowState := wsNormal;
    Preview();
  end;
end;

procedure ImprimirReport(Report: TRLReport; Caption: String);
begin
  with Report do begin
    PreviewOptions.Caption := Caption;
    PreviewOptions.FormStyle := fsMDIChild;
    PreviewOptions.Position := poScreenCenter;
    PreviewOptions.ShowModal := false;
    PreviewOptions.WindowState := wsNormal;
    Print;
  end;
end;

procedure ImprimirParaArquivo(Report: TRLReport; Caption: String; SaveDialog: TOpenDialog);
var
  Ext: String;
begin
  with Report do begin
    PreviewOptions.Caption := Caption;
    PreviewOptions.FormStyle := fsMDIChild;
    PreviewOptions.Position := poScreenCenter;
    PreviewOptions.ShowModal := false;
    PreviewOptions.WindowState := wsNormal;
    if SaveDialog.Execute then begin
      Ext := ExtractFileExt(SaveDialog.FileName);
      if Ext = '' then
        Ext := SaveDialog.FileName + ExtractFileExt(SaveDialog.Filter)
      else
        Ext := SaveDialog.FileName;
      Report.SaveToFile(Ext);
      ShellExecute(0, '', PChar(Ext), '', '', 1);
    end;
  end;
end;

end.
