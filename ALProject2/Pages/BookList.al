page 50203 BookList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Id; rec.Id)
                {
                    ApplicationArea = All;

                }
                field(Title; rec.Title)
                {
                    ApplicationArea = All;

                }
                field(Quantity; rec.Quantity)
                {
                    ApplicationArea = All;

                }
                field(AuthorId; rec.AuthorId)
                {
                    ApplicationArea = All;

                }
                field(BasePrice; rec.BasePrice)
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}