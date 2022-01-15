page 50054 HospitalVaccineCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = HospitalVaccine;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Id; rec.Id)
                {
                    ApplicationArea = All;

                }
                field(VaccineId; rec.HospitalId)
                {
                    ApplicationArea = All;

                }
                field(HospitalId; rec.HospitalId)
                {
                    ApplicationArea = All;

                }
                field(Quantity; rec.Quantity)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {

        }
    }

    var

}