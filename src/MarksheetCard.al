page 50102 "Student Results Dashboard"
{
    PageType = Card;
    SourceTable = Marksheet;
    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group("👨‍🎓 Student Information")
            {
                field("Marksheet No."; Rec."Marksheet No.")
                {
                    ApplicationArea = All;
                }

                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }

                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Course"; Rec."Course")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Academic Year"; Rec."Academic Year")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }

            group("📚 Subject Scores")
            {
                field(Mathematics; Rec.Mathematics)
                {
                    ApplicationArea = All;
                }

                field(Science; Rec.Science)
                {
                    ApplicationArea = All;
                }

                field(English; Rec.English)
                {
                    ApplicationArea = All;
                }

                field(Computer; Rec.Computer)
                {
                    ApplicationArea = All;
                }
            }

            group("🏆 Performance Summary")
            {
                field("Total Marks"; Rec."Total Marks")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(Percentage; Rec.Percentage)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(Result; Rec.Result)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
}