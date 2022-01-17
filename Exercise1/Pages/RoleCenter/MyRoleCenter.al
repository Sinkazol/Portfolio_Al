page 50059 MyRoleCenter
{
    PageType = RoleCenter;


    layout
    {
        area(RoleCenter)
        {
            part(Headlinepart; HospitalHeadline)
            {
                ApplicationArea = all;
            }
            part(RoleCenterCP; RoleCenterCardPart)
            {
                ApplicationArea = all;
            }

        }
    }

    actions
    {
        area(Sections)
        {
            group(listak)
            {
                action(hospitallist)
                {
                    ApplicationArea = all;
                    Caption = 'Hospital List';
                    RunObject = page HospitalList;
                }
                action(Vaccinallist)
                {
                    ApplicationArea = all;
                    Caption = 'Vaccine List';
                    RunObject = page VaccineList;
                }
                action(Applicantlist)
                {
                    ApplicationArea = all;
                    Caption = 'Applicant List';
                    RunObject = page Applicantlist;
                }

            }
        }
        area(Embedding)
        {
            action(customerlist)
            {
                ApplicationArea = all;
                RunObject = page "Customer List";
            }
        }
        area(Processing)
        {
            action(valamimas)
            {
                ApplicationArea = all;
                RunObject = page "Customer List";
            }
        }
    }

}

profile HospitalProfile
{
    Description = 'This is my first profile';
    RoleCenter = MyRoleCenter;
}