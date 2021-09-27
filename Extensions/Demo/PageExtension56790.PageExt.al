pageextension 56790 "PageExtension56790" extends "Customer Card"
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
                    reportRec:=Rec;
                    reportRec.SetRecFilter();
                    Report.Run(Report::"Demo", true, false, reportRec);
                end;
            }
        }
    }
}
