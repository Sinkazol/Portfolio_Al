table 50050 Hospital
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

        }
        field(3; SumOfVaccine; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = sum(HospitalVaccine.Quantity where(HospitalId = field(Id)));

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