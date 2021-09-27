pageextension 56797 "PageExtension56797" extends "Customer List"
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
                    reportRec.CopyFilters(Rec);
                    Report.Run(Report::"Min Kundliste", true, false, reportRec);
                end;
            }
        }
    }
}
