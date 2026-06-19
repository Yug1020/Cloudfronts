page 50104 "Results Dashboard"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group("📊 Academic Analytics")
            {
                field(TotalStudents; TotalStudents)
                {
                    Caption = 'Total Students';
                    ApplicationArea = All;
                }

                field(PassedStudents; PassedStudents)
                {
                    Caption = 'Passed Students';
                    ApplicationArea = All;
                }

                field(FailedStudents; FailedStudents)
                {
                    Caption = 'Failed Students';
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        TotalStudents: Integer;
        PassedStudents: Integer;
        FailedStudents: Integer;

    trigger OnOpenPage()
    var
        StudentRec: Record "Student Master";
        MarkRec: Record Marksheet;
    begin
        TotalStudents := StudentRec.Count();

        MarkRec.Reset();
        MarkRec.SetRange(Result, 'PASS');
        PassedStudents := MarkRec.Count();

        MarkRec.Reset();
        MarkRec.SetRange(Result, 'FAIL');
        FailedStudents := MarkRec.Count();
    end;
}