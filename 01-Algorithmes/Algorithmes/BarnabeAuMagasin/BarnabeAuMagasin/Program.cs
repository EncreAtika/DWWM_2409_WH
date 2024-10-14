namespace BarnabeAuMagasin
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Barnabé fait du Shopping!");

            int BudgetBarnabe;
            int magasin = 0;

            do
            {
                magasin++;

                do
                {
                    Console.WriteLine("Saissez la somme initiale que possède Barnabé pour son shopping : ");
                    BudgetBarnabe = int.Parse(Console.ReadLine());

                }
                while ( magasin < 0 );
                return;
                
            }

            while (magasin > 0);

        }

    }
}                                           


