table 50051 Vaccine
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[120])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if StrLen(Name) = 0 then begin
                    FieldError(Name, 'Please enter your Name');
                end;
            end;

        }
        field(3; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            begin
                if Quantity <= 0 then begin
                    FieldError(Quantity, 'The Quality should not be zero or less than zero');
                end;
            end;
        }
    }

    keys
    {
        key(Pk; Id)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin
        Validate(Name);
        Validate(Quantity);
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin
        Validate(Name);
        Validate(Quantity);
    end;

}