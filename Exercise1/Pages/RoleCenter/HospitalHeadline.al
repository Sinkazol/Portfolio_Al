page 50060 HospitalHeadline
{
    PageType = HeadlinePart;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(firstHeadline; firstHeadline)
                {
                    ApplicationArea = All;

                }
                field(secundHeadline; secundHeadline)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        firstHeadline: Label 'This is My first headline';
        secundHeadline: Label 'This is my Second Headline';
}