namespace MaRetraite
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("MaRetraite");

            // VARIABLES

            int ageSaisi;
            int ageSaisiRetraite = 60;
            int RetraitExpert;
            

            // TRAITEMENT

            Console.WriteLine("Bonjour, Veuillez saisir votre age : ");
            ageSaisi = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Vous avez : " + ageSaisi + " ans.");
            Console.WriteLine("");

            // AFFICHAGE

            if (ageSaisi > 60)
            {
                RetraitExpert = ageSaisi - ageSaisiRetraite;
                Console.WriteLine("Oh ben vous êtes à la retraite depuis " + RetraitExpert + " années! Profitez en bien");
            }

            else if (ageSaisi < 60 && ageSaisi >= 16)
            {
                RetraitExpert = ageSaisiRetraite - ageSaisi;
                Console.WriteLine("Un peu de patience !Il vous reste " + RetraitExpert + " années avant la retraite.");
            }

            else if (ageSaisi == ageSaisiRetraite) 
            {
                RetraitExpert = ageSaisiRetraite;
                   Console.WriteLine("He ben Alors ! C'est le moment de prendre sa retraite !");           
            }

            else if (ageSaisi < 16)
            {
                Console.WriteLine("Vous avez moins de 16 ans et vous pensez à la retraite ? Circulez ! J'ai rien à vous dire !");
                
            }

        }
    }
}
