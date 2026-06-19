table 50100 "Student Master"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(2; "Student Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Course"; Text[50])
        {
            DataClassification = CustomerContent;
        }

        field(4; "Academic Year"; Code[10])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }
}