query 50050 MyQuery
{
    QueryType = Normal;

    elements
    {
        //Select name from Autor inner join Book on Book.autorId = Author.Id

        dataitem(Hospital; Hospital) // -> Tábla
        {
            column(HospitalName; Id)
            //Colum mindig a tábla egy field-e.
            {
                Method = Sum;
            }
            dataitem(HospitalVaccine; HospitalVaccine)
            {
                DataItemLink = HospitalId = Hospital.Id;
                SqlJoinType = InnerJoin;

            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}
// ne feledd meghivni egy page en
// trigger OnOpenPage()
//    var
 //       MyQuery: Query MyQuery;
//    begin
 //       if MyQuery.Open() then begin
 //           while MyQuery.Read() do begin
            
 //           end;
 //           MyQuery.Close();
 //       end;
 //   end;