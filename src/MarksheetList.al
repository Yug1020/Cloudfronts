page 50103 "Academic Performance List"
{
    PageType = List;
    SourceTable = Marksheet;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Student Results Dashboard";

    layout
    {
        area(Content)
        {
            repeater(Results)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }

                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                }

                field("Course"; Rec."Course")
                {
                    ApplicationArea = All;
                }

                field("Total Marks"; Rec."Total Marks")
                {
                    ApplicationArea = All;
                }

                field(Percentage; Rec.Percentage)
                {
                    ApplicationArea = All;
                }

                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                }

                field(Result; Rec.Result)
                {
                    ApplicationArea = All;
                }

                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}