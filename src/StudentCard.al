page 50101 "Student Profile"
{
    PageType = Card;
    SourceTable = "Student Master";
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group("👤 Personal Information")
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }

                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                }
            }

            group("🎓 Academic Information")
            {
                field("Course"; Rec."Course")
                {
                    ApplicationArea = All;
                }

                field("Academic Year"; Rec."Academic Year")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}