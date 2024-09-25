namespace MaBicyclette
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Le Mic Mac à vélo ");

            //VARIABLES 
            //VARIABLES 

            bool beauTemps;
            bool okVelo;
            bool veloFastFix;
            bool livreMaison;
            bool livreBibli;

            //TRAITEMENT


            Console.WriteLine("S'il fait beau demain, j'irai faire un tour à bicyclette! Allons vérifier la météo! ");
            Console.WriteLine("");
            
            beauTemps = bool.Parse(Console.ReadLine());
           
            if (beauTemps == true)
            {
                Console.WriteLine("La météo s'annonce bien, si mon vélo est en bon état c'est bon pour la balade !");
                okVelo = bool.Parse(Console.ReadLine());
                Console.WriteLine("");

                if (okVelo)
                {
                    Console.WriteLine("C'est parfait ! Mon bolide vas bien, plus qu'à préparer mon sac pour demain.");
                    Console.WriteLine("");
                }

                else if (!okVelo)
                {
                    Console.WriteLine("Bon le vélo est dead... J'irai chez le garagiste. Mais je vais l'appeler avant s'il le répare rapidement je pourrais me faire ce petit tour !");
                    Console.WriteLine("");
                    veloFastFix = bool.Parse(Console.ReadLine());

                    if (veloFastFix) 
                    {
                        Console.WriteLine("Super, j'ai téléphoné au garagiste il m'a dit que ce sera rapide. L'asphalte des champs est pour moi !");
                    }
                    
                    else if (!veloFastFix) 
                    {
                        Console.WriteLine("Flûte ! Le garagiste m'a dit qu'il aura trop de Clients et qu'il ne pourra pas s'ocuper de mon vélo avant la fin d'après midi. tant pis, j'irai à pied jusqu'à l'étang pour cueillir des joncs !");
                    }
                }

            }

            if (beauTemps == false)
            {

                Console.WriteLine("Ah ! La météo n'est pas clémente. Le temps parfait pour relire le Tome 1 de Game Of Thrones. J'espère que je l'ai ici.");
                Console.WriteLine("");


                livreMaison = bool.Parse(Console.ReadLine());

                if (livreMaison)
                {
                    Console.WriteLine("Super ! J'ai GOT' ! Demain j'aurai une belle journée détente et lecture au coin du feu :)");

                }

                else if (!livreMaison)
                {
                    Console.WriteLine("Flute :( je n'ai pas GOT, à mon avis Raoul l'a toujours. Tant pis ! Je vais l'empreinter à la bibliothèque. J'espère qu'ils l'ont");

                }

                livreBibli = bool.Parse(Console.ReadLine());

                if (livreBibli)
                {
                    Console.WriteLine("Ma petite bibliothèque ne me déçoit jamais. Vamos pour une journée lecture demain !");
                }

                else if (!livreBibli)
                {
                    Console.WriteLine("Ah ben décidémment les astres veulent me titiller ! mais un roman policier fera l'affaire ! Avec un bon chocolat chaud, des friandises et mon plaid, la journée s'annonce très agréable !");
                }
            }
        }
    }
}
