page 50100 "Student Directory"
{
    PageType = List;
    SourceTable = "Student Master";
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Student Profile";

    layout
    {
        area(Content)
        {
            repeater(Students)
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

                field("Academic Year"; Rec."Academic Year")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}