using System.Numerics;

namespace WafaeTools
{
    public class Class1
    {
        public static int DemanderNombreEntier(string _question)
        {
            string saisieUtilisateur;

            int valeurRetour;


            do
            {
                Console.WriteLine(_question);

                saisieUtilisateur = Console.ReadLine() ?? "";

                valeurRetour = int.Parse(saisieUtilisateur);
                valeurRetour = Convert.ToInt32(saisieUtilisateur);                        
                      
            } while (!int.TryParse(saisieUtilisateur, out valeurRetour));

            return valeurRetour;    
        }
    }
}
