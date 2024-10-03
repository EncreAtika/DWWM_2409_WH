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

        public static float DemanderNombrepositif(string _question)
        {
            string saisieUtilisateur;

            float superPositif;

            bool saisieOK;

            do
            {
                Console.WriteLine(_question);

                saisieUtilisateur = Console.ReadLine() ?? "";

                saisieOK = float.TryParse(saisieUtilisateur, out superPositif) && superPositif >= 0;

                if (!saisieOK)
                {
                    Console.WriteLine("Le nombre est incorrect");
                }

             
            } while (!saisieOK);
            return superPositif;
        }
    }
}

