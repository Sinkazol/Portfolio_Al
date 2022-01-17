page 50061 RoleCenterCardPart
{
    PageType = CardPart;
    SourceTable = Hospital;

    layout
    {
        area(Content)
        {
            cuegroup(kisnegzzet)
            {
                field(NumberOFVaccine; rec.SumOfVaccine)
                {
                    ApplicationArea = All;
                    Caption = 'Number Of Vaccine';
                    DrillDownPageId = HospitalList; // ezzel lesz kattinthato

                }
                field(OFVaccine; rec.SumOfVaccine)
                {
                    ApplicationArea = All;
                    Caption = 'Number Of Vaccine';

                }
                field(Number; rec.SumOfVaccine)
                {
                    ApplicationArea = All;
                    Caption = 'Number Of Vaccine';

                }
            }
        }
    }

}