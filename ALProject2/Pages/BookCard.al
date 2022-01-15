page 50202 BookCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Title; rec.Title)
                {
                    ApplicationArea = All;

                }
                field(Quantity; rec.Quantity)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

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
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}