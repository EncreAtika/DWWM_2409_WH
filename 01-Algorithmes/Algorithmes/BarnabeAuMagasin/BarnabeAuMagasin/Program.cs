namespace BarnabeAuMagasin
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Barnabé fait du Shopping!");
            int budgetBarnabe;
            int magasin = 0;

            Console.WriteLine("Veullez saisir le budget de Barnabé : ");
            budgetBarnabe = int.Parse(Console.ReadLine());
            
            while ( budgetBarnabe > 1) 
            { 
                budgetBarnabe = (budgetBarnabe - (budgetBarnabe /2) )- 1;
                magasin++;
                Console.WriteLine("Magasin N°" + magasin + ". Il reste " + budgetBarnabe + " Euro(s).");
            }
           
            if (budgetBarnabe == 0) 
            {
                Console.WriteLine("Avec son Budget initial Barnabé a visite " + magasin + " .");
            }
           
            
        }

    }
}                                           


