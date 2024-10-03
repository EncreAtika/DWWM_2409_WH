using System.Numerics;

namespace WafaeTools
{
    public class ConsoleTools
    {
        public static int DemanderNombreEntier(string _question)
        {
            string saisieUtilisateur;

            int valeurRetour;

            bool saisieOK;

            do
            {
                Console.WriteLine(_question);

                saisieUtilisateur = Console.ReadLine() ?? "";

                saisieOK = int.TryParse(saisieUtilisateur, out valeurRetour);

                // valeurRetour = int.Parse(saisieUtilisateur);
                // valeurRetour = Convert.ToInt32(saisieUtilisateur);
    

                if (!saisieOK) 
                {
                    Console.WriteLine("Saisie invalide, recommencez !");
                }

            } while (!saisieOK);

            return valeurRetour;    
        }
    }
}
