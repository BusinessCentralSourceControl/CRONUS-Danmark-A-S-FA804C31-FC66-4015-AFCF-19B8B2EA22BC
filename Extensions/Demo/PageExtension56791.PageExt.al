pageextension 56791 "PageExtension56791" extends "Customer List"
{
    actions
    {
        addlast(Reporting)
        {
            action("Demo")
            {
                Caption = 'Demo';
                Image = "PrintCover";
                Promoted = False;
                ApplicationArea = All;

                trigger OnAction()var reportRec: Record "Customer";
                begin
                    reportRec.CopyFilters(Rec);
                    Report.Run(Report::"Demo", true, false, reportRec);
                end;
            }
        }
    }
}
