table 50101 Marksheet
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Marksheet No."; Code[20]) { }

        field(2; "Student ID"; Code[20])
        {
            TableRelation = "Student Master"."Student ID";

            trigger OnValidate()
            var
                StudentRec: Record "Student Master";
                MarksheetRec: Record Marksheet;
            begin
                MarksheetRec.Reset();
                MarksheetRec.SetRange("Student ID", "Student ID");

                if MarksheetRec.FindFirst() then
                    if MarksheetRec."Marksheet No." <> "Marksheet No." then
                        Error('Marksheet already exists for Student %1', "Student ID");

                if StudentRec.Get("Student ID") then begin
                    "Student Name" := StudentRec."Student Name";
                    Course := StudentRec."Course";
                    "Academic Year" := StudentRec."Academic Year";
                end;
            end;
        }

        field(3; Mathematics; Integer)
        {
            trigger OnValidate()
            begin
                ValidateMarks(Mathematics);
                CalculateResult();
            end;
        }

        field(4; Science; Integer)
        {
            trigger OnValidate()
            begin
                ValidateMarks(Science);
                CalculateResult();
            end;
        }

        field(5; English; Integer)
        {
            trigger OnValidate()
            begin
                ValidateMarks(English);
                CalculateResult();
            end;
        }

        field(6; Computer; Integer)
        {
            trigger OnValidate()
            begin
                ValidateMarks(Computer);
                CalculateResult();
            end;
        }

        field(7; "Total Marks"; Decimal)
        {
            Editable = false;
        }

        field(8; Percentage; Decimal)
        {
            Editable = false;
        }

        field(9; Result; Text[10])
        {
            Editable = false;
        }

        field(10; "Student Name"; Text[100])
        {
            Editable = false;
        }

        field(11; Course; Text[50])
        {
            Editable = false;
        }

        field(12; "Academic Year"; Code[10])
        {
            Editable = false;
        }

        field(13; Grade; Code[10])
        {
            Editable = false;
        }

        field(14; Remarks; Text[100])
        {
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Marksheet No.")
        {
            Clustered = true;
        }
    }

    local procedure ValidateMarks(Mark: Integer)
    begin
        if (Mark < 0) or (Mark > 100) then
            Error('Marks must be between 0 and 100');
    end;

    local procedure CalculateResult()
    begin
        "Total Marks" := Mathematics + Science + English + Computer;
        Percentage := ("Total Marks" / 400) * 100;

        if (Mathematics < 40) or
           (Science < 40) or
           (English < 40) or
           (Computer < 40) then
            Result := 'FAIL'
        else
            Result := 'PASS';

        if Percentage >= 90 then
            Grade := 'A+'
        else if Percentage >= 75 then
            Grade := 'A'
        else if Percentage >= 60 then
            Grade := 'B'
        else if Percentage >= 40 then
            Grade := 'C'
        else
            Grade := 'F';

        if Percentage >= 90 then
            Remarks := 'Outstanding'
        else if Percentage >= 75 then
            Remarks := 'Excellent'
        else if Percentage >= 60 then
            Remarks := 'Good'
        else if Percentage >= 40 then
            Remarks := 'Needs Improvement'
        else
            Remarks := 'Failed';
    end;

}
