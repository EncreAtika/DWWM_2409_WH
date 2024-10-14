using System.Diagnostics.CodeAnalysis;

namespace EstCeUnNombrePremier 
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Nombre premier");

            /* Lire un nombre N et déterminer s’il est un nombre premier.
               Un nombre premier n’est divisible que par 1 et par lui-même.*/

            //VARIABLES:
            int nbPremier;
            int verif;
            verif = 0;

            //TRAITEMENTS:
            Console.WriteLine("Saisir un nombre : ");
            nbPremier = int.Parse(Console.ReadLine());

            for (int i = 1; i <= nbPremier; i++)
            {
                if (nbPremier % i == 0)
                {
                    verif++;
                }
            }

            if (verif == 2)
            {
                Console.WriteLine(nbPremier + " est un nombre premier.");
            }

            else
            {
                Console.WriteLine(nbPremier + " n'est pas un nombre premier.");
            }

            Console.ReadLine();
        }
    }
}

