pageextension 56796 "PageExtension56796" extends "Customer Card"
{
    actions
    {
        addlast(Reporting)
        {
            action("Min Kundliste")
            {
                Caption = 'Min Kundliste';
                Image = "PrintCover";
                Promoted = False;
                ApplicationArea = All;

                trigger OnAction()var reportRec: Record "Customer";
                begin
                    reportRec:=Rec;
                    reportRec.SetRecFilter();
                    Report.Run(Report::"Min Kundliste", true, false, reportRec);
                end;
            }
        }
    }
}
