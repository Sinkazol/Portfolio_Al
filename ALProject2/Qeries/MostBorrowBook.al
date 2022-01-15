query 50200 MostBorrowBook
{
    QueryType = Normal;
    OrderBy = descending(BorrowCount);
    TopNumberOfRows = 1;

    elements
    {
        dataitem(Book; Book)
        {

            column(BookTitle; Title)
            {

            }
            dataitem(BorrowBook; BorrowBook)
            {
                DataItemLink = BookId = book.Id;
                SqlJoinType = InnerJoin;

                column(BorrowCount; BorrowCount)
                {

                }

            }

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}