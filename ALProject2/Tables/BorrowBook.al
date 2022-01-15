table 50203 BorrowBook
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; MemberId; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = LibraryMember;

        }
        field(3; BookId; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Book;

        }
        field(4; Price; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                CountPrise: Codeunit countPrice;
            begin
                CountPrise.Run();
            end;
        }
        field(5; BookTitle; Text[120])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Book.Title where(id = field(BookId)));

        }
        field(6; BorrowCount; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Book where(Id = field(BookId)));
        }
    }

    keys
    {
        key(Key1; Id)
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