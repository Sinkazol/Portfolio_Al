table 50053 Applicant
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
        field(3; SocialSecurityNumber; Text[120])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                ApplicantRec: Record Applicant;
            begin

                ApplicantRec.SETRANGE(SocialSecurityNumber, ApplicantRec.SocialSecurityNumber);
                IF ApplicantRec.FINDFIRST THEN
                    fieldERROR(SocialSecurityNumber, 'Number already exists ');
            end;

        }
        field(4; VaccineId; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Vaccine.Id;

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