namespace saisieAvecLimite
{
    internal class Program
    {
        static void Main(string[] args) { 

        Console.WriteLine("Your Password !");

            // VARIABLES

            string motDePasse;
            string formation = "formation";
            int tentatives = 0;

            //TRAITEMENT
            for (int i = 0; i < 3; i++) {

                Console.WriteLine("Veuillez saisir votre mot de passe : ");
                Console.WriteLine("");
                motDePasse = Console.ReadLine();

                    if (motDePasse == formation) { 
                        Console.WriteLine("Vous ête connecté !");
                            break;
                     }

                        else { 
                            Console.WriteLine("Mot de Passe invalide, Veuillez recommencer :");
                        }

                                 tentatives++; 
            }

            if (tentatives >= 3) { 
                Console.WriteLine("Votre compte est bloqué.");
            }
        }
    }
}


