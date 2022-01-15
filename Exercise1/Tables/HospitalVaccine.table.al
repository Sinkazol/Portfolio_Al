table 50052 HospitalVaccine
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; VaccineId; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Vaccine;
            trigger OnValidate()
            begin
                if VaccineId <= 0 then begin
                    FieldError(VaccineId, 'The Quality should not be zero or less than zero');
                end;
            end;

        }
        field(3; HospitalId; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Hospital;
            trigger OnValidate()
            begin
                if HospitalId <= 0 then begin
                    FieldError(HospitalId, 'The Quality should not be zero or less than zero');
                end;
            end;

        }
        field(4; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin

            end;
        }
        field(5; VaccineName; Text[120])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Vaccine.Name where(id = field(VaccineId)));
        }
        field(6; HospitalName; Text[120])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Hospital.Name where(Id = field(HospitalId)));
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
    var
        vaccineRec: Record Vaccine;
    begin
        Get(VaccineId);
        vaccineRec.Quantity := vaccineRec.Quantity - Quantity;
        Modify();
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