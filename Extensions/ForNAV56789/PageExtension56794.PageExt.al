pageextension 56794 "PageExtension56794" extends "Customer List"
{
    actions
    {
        addlast(Reporting)
        {
            action("ForNAV 56789")
            {
                Caption = 'ForNAV 56789';
                Image = "PrintCover";
                Promoted = False;
                ApplicationArea = All;

                trigger OnAction()var reportRec: Record "Customer";
                begin
                    reportRec.CopyFilters(Rec);
                    Report.Run(Report::"ForNAV 56789", true, false, reportRec);
                end;
            }
        }
    }
}
