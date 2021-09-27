pageextension 56793 "PageExtension56793" extends "Customer Card"
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
                    reportRec:=Rec;
                    reportRec.SetRecFilter();
                    Report.Run(Report::"ForNAV 56789", true, false, reportRec);
                end;
            }
        }
    }
}
