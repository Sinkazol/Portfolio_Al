query 50051 MostStockVaccine
{
    QueryType = Normal;
    OrderBy = descending(VaccineQuantity);
    TopNumberOfRows = 1;

    elements
    {
        dataitem(Vaccine; Vaccine)
        {
            column(VaccineName; Name)
            {

            }
            column(VaccineQuantity; Quantity)
            {

            }
        }
    }
}