table 50201 Book
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Title; Text[120])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()

            begin
                if StrLen(Title) = 0 then begin
                    FieldError(Title, 'Please enter a book title');
                end;
            end;

        }
        field(3; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if Quantity <= 0 then begin
                    FieldError(Quantity, 'Please enter a number');
                end;
            end;

        }
        field(4; AuthorId; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Author;

        }
        field(5; BasePrice; Integer)
        {
            DataClassification = ToBeClassified;

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

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}