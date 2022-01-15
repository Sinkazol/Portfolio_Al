query 50052 MostPopularVaccein
{
    QueryType = Normal;
    OrderBy = descending(Quantity);
    TopNumberOfRows = 1;

    elements
    {
        dataitem(Applicant; Applicant)
        {
            column(Quantity)
            {
                Method = Count;
            }

            dataitem(Vaccine; Vaccine)
            {
                DataItemLink = Id = Applicant.VaccineId;

                column(Name; Name)
                {

                }
            }
        }
    }
}